import {useState} from 'react';
import { useNavigate } from "react-router";

const options_path = '/options'
const result_path = '/result'
const empty_path = '/404'


async function Communicator(navigate, knowledge) {
  
    const routeChange = (result, path) =>{ 
      navigate(path, {state:result});
    }
  
    const sendRequest = async () => {
        console.log(knowledge)

        let server_response = await fetch('http://127.0.0.1:5555/', {  
            method: 'POST', 
            // mode: 'cors', 
            body: JSON.stringify(knowledge),
            headers: {
            'Content-Type': 'application/json; charset=UTF-8',
            'Access-Control-Allow-Origin': '*'
            }
        })
        . then(response => {
            if (!response.ok) {
                throw new Error(`Error! status: ${response.status}`);
            }
            return response.text();
      });

        let server_response_json = JSON.parse(server_response)
        return server_response_json;
    }

    console.log(knowledge);

    let result = await sendRequest();
    console.log('outside', result)
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