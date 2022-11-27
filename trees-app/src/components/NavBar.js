import React from 'react';
import ForestIcon from '@mui/icons-material/Forest';
import { Link, IconButton, AppBar, Toolbar } from '@mui/material';


function NavBar() {
    return (
        <AppBar className="navbar" color="success">
        <Toolbar>
          <IconButton aria-label="start" href="\.">
            <ForestIcon fontSize="large"/>
          </IconButton>
          <Link underline="none" href ="/" color="white" sx={{ fontSize: 18 }}>
            Co to za drzewo?
          </Link>
        </Toolbar>
        </AppBar>
    );
  }
  
  export default NavBar;