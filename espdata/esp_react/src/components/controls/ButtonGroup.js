import * as React from 'react';
import Button from '@mui/material/Button';
import ButtonGroup from '@mui/material/ButtonGroup';
import Box from '@mui/material/Box';

const buttons = [
  <Button key="submit" onClick={()=>{
    alert("hit")
  }}>Submit</Button>,
  <Button key="reset">Reset</Button>,
];

export default function GroupOrientation() {
  return (
 
      <ButtonGroup
        orientation="vertical"
        aria-label="vertical submit and reset group"
        variant="contained"
      >
        {buttons}
      </ButtonGroup>
    // </Box>
  );
}
