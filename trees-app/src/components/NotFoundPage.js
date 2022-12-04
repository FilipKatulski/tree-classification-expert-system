import NavBar from './NavBar'; 
import { Typography } from '@mui/material';
import {useLocation} from 'react-router';


function NotFoundPage() {

  const state = useLocation().state;

   return (
    <div className="NotFoundPage">
      <NavBar />
      <Typography variant='h2' align='center' sx={{pt: '15%', mb:'3%', px:'10%'}}>
          W naszej bazie nie ma drzewa posiadającego wybrane cechy :-( 
      </Typography>
      <Typography variant='h3' align='center' sx={{mt: '5%', mb:'3%'}}>
          Spróbuj jeszcze raz!
      </Typography>
     
    </div>
  );
}

export default NotFoundPage;
