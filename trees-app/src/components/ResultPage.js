import NavBar from './NavBar'; 
import { Typography } from '@mui/material';
import {useLocation} from 'react-router';


function ResultPage() {

  const state = useLocation().state;

   return (
    <div className="ResultPage">
      <NavBar />
      <Typography variant='h2' align='center' sx={{pt: '10%', mb:'10%'}}>
          Drzewo, którego szukasz to:
      </Typography>
      <Typography variant='h1'   align='center' sx={{ mb:'3%'}}>
          {state.trees[0]}
      </Typography>
    </div>
  );
}

export default ResultPage;
