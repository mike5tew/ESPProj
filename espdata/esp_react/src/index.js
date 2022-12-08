// import { createRoot } from 'react-dom/client';
import './index.css';
import 'react-app-polyfill/ie11'
import App from './App.tsx'
import * as React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import { ThemeProvider, createTheme, StyledEngineProvider } from "@mui/material/styles";
// import { ThemeProvider } from "@mui/styles"
import { Providers } from '@microsoft/mgt-react';
import { Msal2Provider } from '@microsoft/mgt-msal2-provider';
import  Demo from './components/controls/Drawer';

Providers.globalProvider = new Msal2Provider({
  clientId : "29f252a3-d787-408c-83c2-e9145b935917",
  // clientId: process.env.REACT_APP_CLIENT_ID ?? '',
  scopes: ['Calendars.ReadWrite.Shared', 
  'Contacts.ReadWrite.Shared',
  'Directory.AccessAsUser.All',
  'Directory.ReadWrite.All',
  'email',
  'Files.Read.All',
  'Files.ReadWrite.All',
  'Files.ReadWrite.AppFolder',
  'Group.Read.All',
  'Group.ReadWrite.All',
  'GroupMember.ReadWrite.All',
  'Mail.ReadWrite',
  'Mail.Send',
  'Notes.ReadWrite.All',
  'People.Read',
  'Sites.ReadWrite.All',
  'Tasks.ReadWrite.Shared',
  'User.ReadWrite'
]
})

const theme = createTheme({
  palette: {
    primary: {
      main:"#333996",
      light: '#3c44b126'
    },
    secondary: {
      main: "#333996",
      light: '#f8324526'
    },
    background: {
      default: "#f4f5fd"
    },
  },

})


// import App from './App';

ReactDOM.createRoot(document.querySelector("#root")).render(
  <React.StrictMode>
    <StyledEngineProvider injectFirst>
      <Demo />
    </StyledEngineProvider>
  </React.StrictMode>
);
// const container = document.getElementById('app');
// const root = createRoot(container); // createRoot(container!) if you use TypeScript
// root.render(<ThemeProvider theme={theme}>
//   <App tab="home" />
// </ThemeProvider>);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
