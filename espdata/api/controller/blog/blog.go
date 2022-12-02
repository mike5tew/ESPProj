package controller

import (
	"database/sql"
	"encoding/json"
	"fmt"
	"net/http"
	"os"
	"strconv"

	"espdata.co.uk/packages/model"
	"github.com/gorilla/mux"
)

func GetAllPosts(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")

	posts, err := model.GetAllPosts()
	if err != nil {
		w.WriteHeader(http.StatusInternalServerError)
		w.Write([]byte(err.Error()))
	} else {
		json.NewEncoder(w).Encode(posts)
	}
}

func GetPost(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")

	param := mux.Vars(r)["id"]
	id, err := strconv.ParseUint(param, 10, 64)
	if err != nil {
		w.WriteHeader(http.StatusInternalServerError)
		w.Write([]byte(err.Error()))
		return
	}

	post, err := model.GetPost(id)
	if err != nil {
		w.WriteHeader(http.StatusInternalServerError)
		w.Write([]byte(err.Error()))
		return
	}

	json.NewEncoder(w).Encode(post)

}

func CreatePost(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")

	decoder := json.NewDecoder(r.Body)
	var post model.Article
	err := decoder.Decode(&post)
	if err != nil {
		w.WriteHeader(http.StatusInternalServerError)
		w.Write([]byte(err.Error()))
		return
	}

	err = model.CreatePost(post)
	if err != nil {
		w.WriteHeader(http.StatusInternalServerError)
		w.Write([]byte(err.Error()))
		return
	} else {
		w.WriteHeader(http.StatusOK)
	}
}

func UpdatePost(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")

	decoder := json.NewDecoder(r.Body)
	var post model.Article
	err := decoder.Decode(&post)
	if err != nil {
		w.WriteHeader(http.StatusInternalServerError)
		w.Write([]byte(err.Error()))
		return
	}

	err = model.UpdatePost(post)
	if err != nil {
		w.WriteHeader(http.StatusInternalServerError)
		w.Write([]byte(err.Error()))
		return
	} else {
		w.WriteHeader(http.StatusOK)
	}
}

func DeletePost(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")

	param := mux.Vars(r)
	idStr := param["id"]
	id, err := strconv.ParseUint(idStr, 10, 64)
	if err != nil {
		w.WriteHeader(http.StatusInternalServerError)
		w.Write([]byte(err.Error()))
		return
	}

	err = model.DeletePost(id)
	if err != nil {
		w.WriteHeader(http.StatusInternalServerError)
		w.Write([]byte(err.Error()))
		return
	} else {
		w.WriteHeader(http.StatusOK)
	}
}

func BigGroupsGET(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("content-type", "text/html")

	connInfo := model.Connection{
		Host:     os.Getenv("MYSQL_HOST"),
		Port:     os.Getenv("MYSQL_PORT"),
		User:     os.Getenv("MYSQL_USER"),
		Password: os.Getenv("MYSQL_ROOT_PASSWORD"),
		DBName:   os.Getenv("MYSQL_DATABASE"),
	}

	sSQL := "SELECT teachgroups.groupsID, teachgroups.groupname FROM teachgroups LEFT OUTER JOIN entities ON teachgroups.EntitiesID=entities.EntitiesID"
	db, err := sql.Open("mysql", model.ConnToString(connInfo))
	if err != nil {
		panic(err.Error())
		// w.Write([]byte(sResp))
	} else {
		// fmt.Println("HIT2")

	}

	defer db.Close()
	err = db.Ping()
	if err != nil {
		fmt.Println("error verifying connection")
		panic(err.Error())
	}
	rows, err := db.Query(sSQL)
	if err != nil {
		fmt.Println("Error jcbaw13: " + err.Error())
		sResp := err.Error()
		w.Write([]byte(sResp))
	}
	defer rows.Close()
	columns, err := rows.Columns()
	if err != nil {
		sResp := err.Error()
		w.Write([]byte(sResp))
	}
	count := len(columns)
	tableData := make([]map[string]interface{}, 0)
	values := make([]interface{}, count)
	valuePtrs := make([]interface{}, count)
	for rows.Next() {
		for i := 0; i < count; i++ {
			valuePtrs[i] = &values[i]
		}
		rows.Scan(valuePtrs...)
		entry := make(map[string]interface{})
		for i, col := range columns {
			var v interface{}
			val := values[i]
			b, ok := val.([]byte)
			if ok {
				v = string(b)
			} else {
				v = val
			}
			entry[col] = v
			fmt.Print(v)
		}
		fmt.Print(entry)
		tableData = append(tableData, entry)
	}
	jsonData, err := json.Marshal(tableData)

	if err != nil {
		sResp := err.Error()

		w.Write([]byte(sResp))
	}
	// sAnswer := string(jsonData)
	w.Write(jsonData)
	// json.NewEncoder(w).Encode(jsonData)
}
