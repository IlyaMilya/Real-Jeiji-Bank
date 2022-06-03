import React, { useEffect, useState } from "react";


function Home() {

// Add this in your component file
  // React States
  let gettingUsername;
  console.log(gettingUsername)
  const [User, setUser] = useState([])
  const [errorMessages, setErrorMessages] = useState({});
  const [isSubmitted, setIsSubmitted] = useState(false);


  // User Login info
  const getUser = async () => {
    const req = await fetch(`http://localhost:3000/${gettingUsername}`)
    const res = await req.json()
    setUser(res)
  }

  const errors = {
    uname: "invalid username",
    pass: "invalid password"
  };

  const handleSubmit = (event) => {
    //Prevent page reload
    event.preventDefault();

    let { uname, pass } = document.forms[0];

    gettingUsername = uname.value

    // Find user login info
    const userData = User.find((user) => user.username === uname.value);

    // Compare user info
    if (userData) {
      if (userData.password !== pass.value) {
        // Invalid password
        setErrorMessages({ name: "pass", message: errors.pass });
      } else {
        setIsSubmitted(true);
      }
    } else {
      // Username not found
      setErrorMessages({ name: "uname", message: errors.uname });
    }
  };

  // Generate JSX code for error message
  const renderErrorMessage = (name) =>
    name === errorMessages.name && (
      <div className="error">{errorMessages.message}</div>
    );

  

  // JSX code for login form
  const renderForm = (
    <div className="form">
      <form onSubmit={handleSubmit}>
        <div className="input-container">
          <label>Username </label>
          <input type="text" name="uname" required />
          {renderErrorMessage("uname")}
        </div>
        <div className="input-container">
          <label>Password </label>
          <input type="password" name="pass" required />
          {renderErrorMessage("pass")}
        </div>
        <div className="button-container">
          <input type="submit" value="Login"/>
          <a href="http://localhost:4000/signup"> Sign Up </a>
        </div>
      </form>
    </div>
  );

  // useEffect(getUser(),[])

  return (
    <div classname="login-page">
    <div className="app">
      <div className="login-form">
        <div className="title"></div>
        {/* exhange <div>User is successfully logged in</div> with Jerry's component */}
        {isSubmitted ? <div>User is successfully logged in</div> : renderForm}
      </div>
    </div>
    </div>
  );
}

export default Home;