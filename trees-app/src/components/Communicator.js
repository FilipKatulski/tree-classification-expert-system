import {useState} from 'react';
import { useNavigate } from "react-router";

const options_path = '/options'
const result_path = '/result'
const empty_path = '/404'


function Communicator(navigate, knowledge) {
  
    const routeChange = (result, path) =>{ 
      navigate(path, {state:result});
    }
  
    const sendRequest = () => {
    //   let response = fetch('http://127.0.0.1:8080/', {  // Enter your IP address here
    //     method: 'GET', 
    //     mode: 'cors', 
    //     body: JSON.stringify({'knowledge':knowledge}),
    //     headers: {
    //       'Content-Type': 'application/json',
    //       // Accept: 'application/json',
    //     }
    //   })
  
    //   if (!response.ok) {
    //     throw new Error(`Error! status: ${response.status}`);
    //   }
  
    //   const result = await response.json();
        let result = {trees:['dab', 'brzoza'], key:'kora', options:['czarna', 'biala', 'szara']};

        if(knowledge['kora'] != undefined){
            result = {trees:['dab', 'sosna'], key:'rodzaj_lisci', options:['igły', 'liscie', 'blaszki', 'zima jest']};
        }
        if(knowledge['kora'] != undefined && knowledge['rodzaj_lisci'] != undefined){
            result = {trees:['sosna'], key:'rodzaj_lisci', options:['igły', 'liscie', 'blaszki', 'zima jest']};
        }
        return result;

    }

    console.log(knowledge);

    let result = sendRequest();
    result["knowledge"] = knowledge;

    let path = options_path;
    let treesLen = result.trees.length;
    if(treesLen == 0){
        path = empty_path;
    }
    else if(treesLen == 1){
        path = result_path;
    }

    routeChange(result, path);
    return;

}
export default Communicator;