import { Button, Box, Typography } from '@mui/material';
import {useState} from 'react';
import './Banner.css';
import Communicator from './Communicator';
import { useNavigate } from "react-router";

function Banner() {

  // const [knowledge, updateKnowledge] = useState([]);
  let navigate = useNavigate();

   return (
      <div className="Banner"> 
      <Box className="BannerTextBox" sx={{pt:'10%', pl:'24%', width: '35%'}}>
        <Typography className="BannerText" align='left' variant='h2'>
          Platan klonolistny...
        </Typography>
        </Box>
        <Box className="BannerTextBox"  sx={{float:'right', pt:'2%', pr:'18%', width: '45%'}}>
        <Typography  className="BannerText" variant='h2' align='right'>
        ... czy robinia akacjowa?
        </Typography>
        </Box>

        <Button onClick={() => Communicator(navigate, {})} variant="contained" color="success" sx={{ mt:'3%', mx:"45%"}} size="large" align="center">Sprawdz!</Button>
      </div>
  );
}

export default Banner;
