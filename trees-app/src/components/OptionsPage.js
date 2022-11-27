import NavBar from './NavBar'; 
import OptionsBoxes from './OptionsBoxes';
import { Typography } from '@mui/material';
import {useLocation} from 'react-router';


function OptionsPage() {

  const state = useLocation().state;

   return (
    <div className="OptionsPage">
      <NavBar />
      <Typography variant='h2' align='center' sx={{mt: '7%', mb:'3%'}}>
          {state.key.replace("_", ' ')}:
      </Typography>
      <OptionsBoxes state={state} />
    </div>
  );
}

export default OptionsPage;
