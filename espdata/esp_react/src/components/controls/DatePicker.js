import React from "react";
import { AdapterDayjs } from '@mui/x-date-pickers/AdapterDayjs';
import { LocalizationProvider } from '@mui/x-date-pickers'
import DatePicker from '@mui/lab/DatePicker';


export default function LineDatePicker(props){
    const { name, label, value, onChange }=props;
    const convertToDefEventPara = (name,value) => ({
        target: {
            name, value
        }
    })
return(
    <LocalizationProvider dateAdapter={AdapterDayjs}>
        <DatePicker disableToolbar variant="inline" 
        inputVariant="outlined"
        label={label}
        format="MMM/dd/yyyy"
        name={name}
        value={value}
        onChange={date =>onChange(convertToDefEventPara(name,date))}
        /> 
    </LocalizationProvider>

)

}