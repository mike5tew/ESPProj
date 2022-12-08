import * as React from 'react';
import FormControl from '@mui/material/FormControl';
import { styled } from '@mui/material/styles';
import Box from '@mui/material/Box';
import Paper from '@mui/material/Paper';
import Grid from '@mui/material/Unstable_Grid2';
import FormGroup from '@mui/material/FormGroup';
import FormLabel from '@mui/material/FormLabel';
import { Typography } from '@mui/material';
import { useForm, Form } from './components/useForm';
import Controls from './components/controls/Controls';


function SaveDayTimings() {
  // var DTarray = new Array();
  var sErr = '';
  var x = '';
  for (let i = 1; i < 10; i++) {
    x = document.getElementById("Sess" + i).value;
    if (x = '') {
      i = 11;
    } else {
      var st1 = document.getElementById("st" + i)
      if (!checkTime(st1)) {
        alert("Invalid start time entered for " + document.getElementById("Sess" + i).value);
        sErr = 'y';
      } else {
        var ed1 = document.getElementById("ed" + i).value
        if (!checkTime(ed1)) {
          alert("Invalid end time entered for " + document.getElementById("Sess" + i).value)
          sErr = 'y';
        } else {
          // var indDT ={}
        }
      }
    }
  }
}

function checkTime(field) {
  var errorMsg = "";

  // regular expression to match required time format
  var re = /^(\d{1,2}):(\d{2})(:00)?([ap]m)?$/;

  if (field.value !== "") {
    var regs
    if (regs = field.value.match(re)) {
      if (regs[4]) {
        // 12-hour time format with am/pm
        if (regs[1] < 1 || regs[1] > 12) {
          errorMsg = "Invalid value for hours: " + regs[1];
        }
      } else {
        // 24-hour time format
        if (regs[1] > 23) {
          errorMsg = "Invalid value for hours: " + regs[1];
        }
      }
      if (!errorMsg && regs[2] > 59) {
        errorMsg = "Invalid value for minutes: " + regs[2];
      }
    } else {
      errorMsg = "Invalid time format: " + field.value;
    }
  }

  if (errorMsg !== "") {
    alert(errorMsg);
    field.focus();
    return false;
  }

  return true;
}

const Item = styled(Paper)(({ theme }) => ({
  backgroundColor: theme.palette.mode === 'dark' ? '#1A2027' : '#ffffff',
  ...theme.typography.body2,
  padding: theme.spacing(1),
  textAlign: 'center',
  color: theme.palette.text.secondary,
}));

const dayTimings = {
  sessionName1: '',
  startTime1: new Date(),
  endTime1: new Date(),
  sessionName2: '',
  startTime2: new Date(),
  endTime2: new Date(),
  sessionName3: '',
  startTime3: new Date(),
  endTime3: new Date(),
  sessionName9: '',
  startTime4: new Date(),
  endTime4: new Date(),
  sessionName4: '',
  startTime5: new Date(),
  endTime5: new Date(),
  sessionName5: '',
  startTime6: new Date(),
  endTime6: new Date(),
  sessionName6: '',
  startTime7: new Date(),
  endTime7: new Date(),
  sessionName7: '',
  startTime8: new Date(),
  endTime8: new Date(),
  sessionName8: '',
  startTime9: new Date(),
  endTime9: new Date(),
  sessionName10: '',
  startTime10: new Date(),
  endTime10: new Date(),
  mo1:false,
  tu1:false,
  we1:false,
  th1:false,
  fr1:false,
  sa1:false,
  su1:false,
  mo2:false,
  tu2:false,
  we2:false,
  th2:false,
  fr2:false,
  sa2:false,
  su2:false,

};


export default function UseFormControl() {
 
const {
  values,
  setValues,
  handleInputChange
}=useForm(dayTimings)

  return (
    <Form>
      {/* <LocalizationProvider dateAdapter={AdapterDayjs}> */}
    <FormControl component="fieldset">
      <Box sx={{ flexGrow: 1 }}>
        <Typography variant='h5' sx={{padding:2.5}} >Day timings and session names</Typography>
        <Grid container spacing={2}>
          <Grid xs={1}></Grid>
          <Grid xs={5} OutlinedInput={1}>
          <Controls.Input name="sessionName1" label="Session Name" value={values.sessionName1} onChange={handleInputChange} />
          </Grid>
          <Grid xs={2}>
            <Controls.TimePicker label='Start time' value={values.startTime1} name='startTime1' onChange={handleInputChange} />
          </Grid>
          <Grid xs={2}>
            <Controls.TimePicker  label='End time' value={values.endTime1} name='endTime1' onChange={handleInputChange} />
          </Grid>
          <Grid xs={2}></Grid>

          <Grid xs={1}></Grid>
          <Grid xs={5} OutlinedInput={1}>
            <Controls.Input name='sessionName2' label="Session Name" sx={{ width: '50ch' }} value={values.sessionName2} onChange={handleInputChange} />
          </Grid>
          <Grid xs={2}>
            <Controls.TimePicker label='Start time' value={values.startTime2} name='startTime2' onChange={handleInputChange} />
          </Grid>
          <Grid xs={2}>
            <Controls.TimePicker label='End time' value={values.endTime2} name='endTime2' onChange={handleInputChange} />
          </Grid>
          <Grid xs={2}></Grid>

          <Grid xs={1}></Grid>
          <Grid xs={5} OutlinedInput={1}>
           <Controls.Input name='sessionName3' label="Session Name" sx={{ width: '50ch' }} value={values.sessionName3} onChange={handleInputChange} />
          </Grid>
          <Grid xs={2}>
            <Controls.TimePicker label='Start time' value={values.startTime3} name='startTime3' onChange={handleInputChange} /></Grid>
          <Grid xs={2}>
            <Controls.TimePicker label='End time' value={values.endTime3} name='endTime3' onChange={handleInputChange} />
          </Grid>
          <Grid xs={2}></Grid>

          <Grid xs={1}></Grid>
          <Grid xs={5} OutlinedInput={1}>
           <Controls.Input name='sessionName4' label="Session Name" sx={{ width: '50ch' }} value={values.sessionName4} onChange={handleInputChange} />
          </Grid>
          <Grid xs={2}>
            <Controls.TimePicker label='Start time' value={values.startTime4} name='startTime4' onChange={handleInputChange} /></Grid>
          <Grid xs={2}>
            <Controls.TimePicker label='End time' value={values.endTime4} name='endTime4' onChange={handleInputChange} />
          </Grid>
          <Grid xs={2}></Grid>

          <Grid xs={1}></Grid>
          <Grid xs={5} OutlinedInput={1}>
           <Controls.Input name='sessionName5' label="Session Name" sx={{ width: '50ch' }} value={values.sessionName5} onChange={handleInputChange} />
          </Grid>
          <Grid xs={2}>
            <Controls.TimePicker label='Start time' value={values.startTime5} name='startTime5' onChange={handleInputChange} /></Grid>
          <Grid xs={2}>
            <Controls.TimePicker label='End time' value={values.endTime5} name='endTime5' onChange={handleInputChange} />
          </Grid>
          <Grid xs={2}></Grid>

          <Grid xs={1}></Grid>
          <Grid xs={5} OutlinedInput={1}>
           <Controls.Input name='sessionName6' label="Session Name" sx={{ width: '50ch' }} value={values.sessionName6} onChange={handleInputChange} />
          </Grid>
          <Grid xs={2}>
            <Controls.TimePicker label='Start time' value={values.startTime6} name='startTime6' onChange={handleInputChange} /></Grid>
          <Grid xs={2}>
            <Controls.TimePicker label='End time' value={values.endTime6} name='endTime6' onChange={handleInputChange} />
          </Grid>
          <Grid xs={2}></Grid>

          <Grid xs={1}></Grid>
          <Grid xs={5} OutlinedInput={1}>
           <Controls.Input name='sessionName7' label="Session Name" sx={{ width: '50ch' }} value={values.sessionName7} onChange={handleInputChange} />
          </Grid>
          <Grid xs={2}>
            <Controls.TimePicker label='Start time' value={values.startTime7} name='startTime7' onChange={handleInputChange} /></Grid>
          <Grid xs={2}>
            <Controls.TimePicker label='End time' value={values.endTime7} name='endTime7' onChange={handleInputChange} />
          </Grid>
          <Grid xs={2}></Grid>

          <Grid xs={1}></Grid>
          <Grid xs={5} OutlinedInput={1}>
           <Controls.Input name='sessionName8' label="Session Name" sx={{ width: '50ch' }} value={values.sessionName8} onChange={handleInputChange} />
          </Grid>
          <Grid xs={2}>
            <Controls.TimePicker label='Start time' value={values.startTime8} name='startTime8' onChange={handleInputChange} /></Grid>
          <Grid xs={2}>
            <Controls.TimePicker label='End time' value={values.endTime8} name='endTime8' onChange={handleInputChange} />
          </Grid>
          <Grid xs={2}></Grid>

          <Grid xs={1}></Grid>
          <Grid xs={5} OutlinedInput={1}>
           <Controls.Input name='sessionName9' label="Session Name" sx={{ width: '50ch' }} value={values.sessionName9} onChange={handleInputChange} />
          </Grid>
          <Grid xs={2}>
            <Controls.TimePicker label='Start time' value={values.startTime9} name='startTime9' onChange={handleInputChange} /></Grid>
          <Grid xs={2}>
            <Controls.TimePicker label='End time' value={values.endTime9} name='endTime9' onChange={handleInputChange} />
          </Grid>
          <Grid xs={2}></Grid>

          <Grid xs={1}></Grid>
          <Grid xs={5} OutlinedInput={1}>
           <Controls.Input name='sessionName10' label="Session Name" sx={{ width: '50ch' }} value={values.sessionName10} onChange={handleInputChange} />
          </Grid>
          <Grid xs={2}>
            <Controls.TimePicker label='Start time' value={values.startTime10} name='startTime10' onChange={handleInputChange} /></Grid>
          <Grid xs={2}>
            <Controls.TimePicker label='End time' value={values.endTime10} name='endTime10' onChange={handleInputChange} />
          </Grid>
          <Grid xs={2}></Grid>


          <Grid xs={1}></Grid>
          <Grid xs={9}>
            <FormLabel component="legend">Days to which these timings apply</FormLabel>
            <FormGroup aria-label="position" row>
              <Controls.Checkbox name="mo1" label="Mon" value={values.mo1} onChange={handleInputChange} />
              <Controls.Checkbox name="tu1" label="Tue" value={values.tu1} onChange={handleInputChange} />
              <Controls.Checkbox name="we1" label="Wed" value={values.we1} onChange={handleInputChange} />
              <Controls.Checkbox name="th1" label="Thu" value={values.th1} onChange={handleInputChange} />
              <Controls.Checkbox name="fr1" label="Fri" value={values.fr1} onChange={handleInputChange} />
              <Controls.Checkbox name="sa1" label="Sat" value={values.sa1} onChange={handleInputChange} />
              <Controls.Checkbox name="su1" label="Sun" value={values.su1} onChange={handleInputChange} />
            </FormGroup>
            <FormGroup aria-label="position" row>
            <Controls.Checkbox name="mo2" label="Mon" value={values.mo2} onChange={handleInputChange} />
              <Controls.Checkbox name="tu2" label="Tue" value={values.tu2} onChange={handleInputChange} />
              <Controls.Checkbox name="we2" label="Wed" value={values.we2} onChange={handleInputChange} />
              <Controls.Checkbox name="th2" label="Thu" value={values.th2} onChange={handleInputChange} />
              <Controls.Checkbox name="fr2" label="Fri" value={values.fr2} onChange={handleInputChange} />
              <Controls.Checkbox name="sa2" label="Sat" value={values.sa2} onChange={handleInputChange} />
              <Controls.Checkbox name="su2" label="Sun" value={values.su2} onChange={handleInputChange} />
            </FormGroup>
          </Grid>
          <Grid xs={2}></Grid>
          <Grid xs={8}></Grid>
          <Grid xs={2}><Controls.GroupOrientation/>
          <Item>
          {/* <Controls.Button text="Submit" type="submit" onClick={() => {

            alert('clicked' + JSON.stringify(dayTimings));
          }}/><Controls.Button text="Reset" /> */}
          </Item>
          </Grid>

        </Grid>
      </Box>
    </FormControl>
    {/* </LocalizationProvider> */}
    </Form>
  );
}
