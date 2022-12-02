import * as React from 'react';
import Box from '@mui/material/Box';
import Paper from '@mui/material/Paper';
import Stack from '@mui/material/Stack';
import { styled } from '@mui/material/styles';
import {
  Person,
  Get,
  MgtTemplateProps,
} from '@microsoft/mgt-react';

import { Providers, ProviderState } from '@microsoft/mgt-element';


const Item = styled(Paper)(({ theme }) => ({
  backgroundColor: theme.palette.mode === 'dark' ? '#1A2027' : '#fff',
  ...theme.typography.body2,
  padding: theme.spacing(1),
  textAlign: 'center',
  color: theme.palette.text.secondary,
}));

function EmailsComponent(props: MgtTemplateProps) {
const email = props.dataContext;
	  return (
	    <div className='email'>
			<div className='header'>
				<div>
					<Person personQuery={email.sender.emailAddress.address}/>
				</div>
				<div className='title'>
					<a href={email.weblink} target="_blank" rel='noreferrer'>
					<h3>{email.subject}</h3>
					</a>
					<span className='date'>
						{new Date(email.receivedDateTime).toLocaleDateString()}
					</span>
				</div>
				{email.bodyPreview ?? <div className='preview'>{email.bodyPreview}</div>}
				{!email.bodyPreview ?? <div className='preview empty-body'>...</div>}
			</div>
    </div>
		);
  
	  }
export default EmailsComponent;

