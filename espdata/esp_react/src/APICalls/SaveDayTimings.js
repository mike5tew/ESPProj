import React, { Component } from "react";

class DayTimingsSave extends Component(props) {
    constructor(props) {
        super(props);
        this.state={
            items: [],
            isLoaded:false,
        }
    }
    componentDidMount() {
        fetch("/echo/json/",
        {
            headers: {
              'Accept': 'application/json',
              'Content-Type': 'application/json'
            },
            method: "POST",
            body: JSON.stringify({a: 1, b: 2})
        })
        .then(function(res){ console.log(res) })
        .catch(function(res){ console.log(res) })
    }
    render() {
        var { isLoaded, items } = this.state;
        if (!isLoaded) {
            return <div>Loading...</div>
        } 
            if (items.statusCode=200){
                return  alert("Day timings have been saved")
            } else {
                return  alert("Error: "+items.statusCode )
            }   
    }
}

export default DayTimingsSave;