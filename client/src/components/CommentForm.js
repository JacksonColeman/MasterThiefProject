import {React, useState} from 'react'


function CommentForm () {
    const [comment, setComment] = useState("")

    return(
        <div className="comment-form">
            <form>
                <label>
                Comment: 
                <input type="text" name="comment" value={comment} onChange={e => setComment(e.target.value)}/>
                </label>
                <input type="submit" value="Submit" />
            </form>
        </div>
    )
}

export default CommentForm