import {React, useState, useEffect} from 'react'
import Masterpiece from './Masterpiece';
import CommentForm from './CommentForm';

function Level ({levels, restart}) {

    const [myLevel, setMyLevel] = useState(levels[0])


    // piece of state to store selected art
    const [selectedArt, setSelectedArt] = useState([])
    const [selectedSum, setSelectedSum] = useState(0)
    const [greyIndices, setGreyIndices] = useState([])

    // function to update it
    const addToSelected = (newArt, index) => {
        setSelectedArt([...selectedArt, newArt])
        setSelectedSum(selectedSum + newArt.value)
        setGreyIndices([...greyIndices, index+1, index-1])
        console.log(greyIndices)
    }

    const removeFromSelected = (deletedArt, index) => {
        setSelectedArt(selectedArt => selectedArt.filter(art => {
            return art.id != deletedArt.id;
        }))
        setSelectedSum(selectedSum - deletedArt.value)
        // delete first occurences of grey indices from array
        setGreyIndices(greyIndices.splice(greyIndices.indexOf(index+1)), 1)
        setGreyIndices(greyIndices.splice(greyIndices.indexOf(index-1)), 1)
        console.log(greyIndices)
    }


    // put all values into array using for loop or something
    let value_array = []
    for (let i = 0; i < myLevel.masterpieces.length; i++){
        value_array[i] = myLevel.masterpieces[i].value;
    }
    

    // get maximum value here using dynamic programming alg
    let rob1 = 0;
    let rob2 = 0;
        
    for (let i = 0; i < value_array.length; i++){
        let temp = Math.max(value_array[i] + rob1, rob2);
        rob1 = rob2;
        rob2 = temp;
    }

    // max is rob2

    return(
        <div className="level">
            <h1>{myLevel.name}</h1>
            <p>You are a professional art thief planning to rob a museum. Each painting is worth a certain value, the only constraint stopping you from robbing each of them is that adjacent paintings have security systems connected and it will automatically contact the police if two adjacent paintings were moved. Can you steal the maximum amount possible?</p>
            <p>Click the paintings you want to steal!</p>
            <div className="artrow">
                {myLevel.masterpieces.map((m, index) => <Masterpiece m={m} addToSelected={addToSelected} removeFromSelected={removeFromSelected} grey={greyIndices.includes(index) ? true : false} idx={index}/>)}
            </div>
            <p>Current Value of Stolen Paintings: {selectedSum}</p>
            <p>Maximum Value Possible: {rob2} </p>
            {/* <CommentForm/> */}
        </div>
    )
}

export default Level