import logo from './logo.svg';
import './App.css';
import { useState, useEffect } from "react";
import { BrowserRouter, Switch, Route } from "react-router-dom";
import Login from './components/Login';
import NavBar from './components/NavBar';
import Auth from './components/Auth';

function App() {
  const [page, setPage] = useState("/")
  const [user, setUser] = useState(null)

  function logout() {
    fetch("/logout", {method:'DELETE',})
    .then(res => {
      if (res.ok) {
        setUser(null);
      }
    });
  }


  return (
    <BrowserRouter>
      <div className="App">
      <NavBar onChangePage={setPage} />
      {user ? <button onClick={logout}>Log Out</button> : null}
        <Switch>
          <Route path="/signup">
            <Auth />
          </Route>
          <Route path="/login">
            <Login user={user} setUser={setUser}/>
          </Route>
          <Route path="/">
            <h1>MASTER THIEF</h1>
            <img src="https://s3.amazonaws.com/static.rogerebert.com/uploads/review/primary_image/reviews/le-cercle-rouge-2003/EB20030523REVIEWS305230303AR.jpg" width="1000px" height="500px"></img>
            {/* <h1>Page Count: {count}</h1> */}
          </Route>
        </Switch>
      </div>
    </BrowserRouter>
  );
}

export default App;
