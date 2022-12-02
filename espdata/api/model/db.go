package model

import (
	"database/sql"

	_ "github.com/go-sql-driver/mysql"

	"fmt"
	"os"

	"github.com/joho/godotenv"

	_ "github.com/lib/pq"
)

// declare a db object, where we can use throughout the model package
// so in blog.go, we have access to this object
var db *sql.DB

// a struct to hold all the db connection information
type Connection struct {
	Host     string
	Port     string
	User     string
	Password string
	DBName   string
}

func Init() {
	err := godotenv.Load("config/.env")

	if err != nil {
		fmt.Printf("Error loading .env file: %s\n", err.Error())
		return
	}

	ConnInfo := Connection{
		Host:     os.Getenv("MYSQL_HOST"),
		Port:     os.Getenv("MYSQL_PORT"),
		User:     os.Getenv("MYSQL_USER"),
		Password: os.Getenv("MYSQL_ROOT_PASSWORD"),
		DBName:   os.Getenv("MYSQL_DATABASE"),
	}

	// try to open our postgresql connection with our connection info
	db, err = sql.Open("mysql", ConnToString(ConnInfo))
	if err != nil {
		fmt.Printf("Error connecting to the DB: %s\n", err.Error())
		return
	} else {
		fmt.Printf("DB is open\n")
	}

	// check if we can ping our DB
	// err = db.Ping()
	// if err != nil {
	// 	fmt.Printf("Error could not ping database: %s\n", err.Error())
	// 	return
	// } else {
	// 	fmt.Printf("DB pinged successfully\n")
	// }
}

// Take our connection struct and convert to a string for our db connection info
func ConnToString(info Connection) string {
	conStr := fmt.Sprintf("%s:%s@tcp(ESP_MYSQL)/%s",
		info.User, info.Password, info.DBName)
	// fmt.Println(conStr)
	return conStr

}
