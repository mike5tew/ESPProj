import Navbar from './Navbar';
import React, { useState, useEffect } from 'react';
import { Providers, ProviderState } from '@microsoft/mgt-element';
import { FileList, Get } from '@microsoft/mgt-react';
import UseFormControl from './FormInput';
import EmailsComponent from './MailComponent';
import { CssBaseline } from '@mui/material'; 





function useIsSignedIn(): [boolean] {
  const [isSignedIn, setIsSignedIn] = useState(false);

  useEffect(() => {
    const updateState = () => {
      const provider = Providers.globalProvider;
      setIsSignedIn(provider && provider.state === ProviderState.SignedIn);
    };

    Providers.onProviderUpdated(updateState);
    updateState();

    return () => {
      Providers.removeProviderUpdatedListener(updateState);
    }
  }, []);

  return [isSignedIn];
}



const App = () => {
  const [isSignedIn] = useIsSignedIn();
  return (
    <>
      <CssBaseline />
      <div id='app'>
        <header>
          <Navbar />
        </header>
        <div className='grid-container'>
          <div className='column'>
            <div className='mgt-get-email'>
              {isSignedIn &&
                <Get resource='me/messages' maxPages={3}>
                  <EmailsComponent template="value"></EmailsComponent>
                </Get>
              }
            </div>
          </div>
          <div className='column'>
            {isSignedIn &&
              <UseFormControl />
            }
          </div>
          <div className='column'>
            <FileList />
          </div>
        </div>
      </div>
    </>
  );
};
export default App;



