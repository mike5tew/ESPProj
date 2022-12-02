import React from "react";
import { makeStyles } from "@mui/styles"

export function useForm(dayTimings) {

    const [values, setValues] = React.useState(dayTimings);

    const handleInputChange = e => {
        const { name, value } = e.target
        setValues({
            ...values,
            [name]: value
        })
    // console.log(name+' 1'+value)   
    };  

    return {
        values,
        setValues,
        handleInputChange
    }
}

const useStyles = makeStyles(theme =>({
root:{
    '& .MuiInputBase-input ': {
        width:'80%',
        margin: theme.spacing(1)
    }
}
}))


export function Form(props) {

    return (
        <form>
            {props.children}
        </form>

    )
}