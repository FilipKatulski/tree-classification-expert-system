import { Button, Card, CardActionArea,CardContent, CardMedia, Grid, Typography } from '@mui/material';

import './Banner.css';
import Communicator from './Communicator';
import { useNavigate } from "react-router";



function OptionsBoxes(props) {
    let navigate = useNavigate();
    let knowledge = props.state.knowledge;

    return (
        <div className='OptionsBoxes'>
        <Grid container spacing={3}  justifyContent="center" sx={{px:'8%'}}>
            {Array.from(props.state.options).map((option_name) => (
                    <Grid item xs={3} key={option_name}>
                        <Card variant="outlined" sx={{boxShadow: 3  }}>
                            <CardActionArea onClick={() => {
                                knowledge[props.state.key] = option_name;
                                Communicator(navigate, knowledge);
                                }}>
                                {/* <CardMedia
                                component="img"
                                height="140px"
                                width="100%"
                                image={"/images/background.jpg"}
                                alt={option_name}
                                /> */}
                                <CardContent>
                                <Typography gutterBottom align='center' variant="h5" component="div">
                                    {option_name}
                                </Typography>
                                </CardContent>
                            </CardActionArea>
                        </Card>
                    </Grid>
                ))
            }
        </Grid>
        </div>
    );

}

export default OptionsBoxes;