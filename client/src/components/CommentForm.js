import {React, useState} from 'react'


function CommentForm () {
    const [comment, setComment] = useState("")
    const [allComments, setAllComments] = useState([])

    const submitComment = (e) => {
        e.preventDefault();

        let newComment = {
            comment
        }

        fetch(`/comments`,{
            method:'POST',
            headers:{'Content-Type': 'application/json'},
            body:JSON.stringify(comment)
          })
          .then(res => res.json())
          .then(data => setAllComments([...allComments, data]))
    }

    return(
        <div className="comment-form">
            <form onSubmit = {submitComment}>
                <label>
                Comment: 
                <input type="text" name="comment" value={comment} onChange={e => setComment(e.target.value)}/>
                </label>
                <input type="submit" value="Submit" />
            </form>
            {allComments.map(c => <p><strong>{c.user.username}</strong>{c.text}</p>)}
        </div>
    )
}

export default CommentForm