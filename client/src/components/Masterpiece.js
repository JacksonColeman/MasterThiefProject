import {React, useState, useEffect} from 'react'

function Masterpiece ({m, addToSelected, removeFromSelected, grey, idx}) {

    const [selected, setSelected] = useState(false);

    const handleArtClick = () => {
        if (grey) {
            return null;
        } else {
            if (selected){
                removeFromSelected(m, idx);
                setSelected(false);
            } else {
                addToSelected(m, idx);
                setSelected(true);
            }
        }
    }

    return(
        // need third className for greyed out art, unclickable
        <div className={grey ? "grey-masterpiece" : selected ? "clicked-masterpiece" : "masterpiece"} onClick={handleArtClick}>
            <img src={m.image} height="100px" width="100px"></img>
            <p>{m.name}</p>
            <p>{m.artist}</p>
            <p>Value: {m.value}</p>
        </div>
    )
}

export default Masterpiece