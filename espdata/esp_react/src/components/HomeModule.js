import React from "react";
import { TextField as MuiTextField } from "@mui/material";

export default function HomeModule(props) {
    const { name, label, value, onChange } = props
    return (
        <MuiTextField
            variant="outlined"
            name={name}
            label={label}
            sx={{ width: '50ch' }}
            value={value}
            onChange={onChange} />
    )
}