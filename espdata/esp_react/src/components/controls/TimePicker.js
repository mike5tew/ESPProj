import React from "react";
import {TimePicker as MuiTimePicker, LocalizationProvider } from '@mui/x-date-pickers';
import { AdapterDayjs } from '@mui/x-date-pickers/AdapterDayjs';
import TextField from '@mui/material/TextField';
import { Dayjs } from 'dayjs';


export default function TimePicker(props){
    const { name, label, value, onChange }=props
    const convertToDefEventPara = (name,value) => ({
        target: {
            name, value
        }
    })
return(
    <LocalizationProvider dateAdapter={AdapterDayjs}  >
        <MuiTimePicker disableToolbar variant="inline" inputVariant="outlined"
        label={label}
        format="hh:mm"
        name={name}
        value={value}
        onChange={time => onChange(convertToDefEventPara(name,time))}
        renderInput={(params) => <TextField {...params} />}
        />
    </LocalizationProvider>
    )
}