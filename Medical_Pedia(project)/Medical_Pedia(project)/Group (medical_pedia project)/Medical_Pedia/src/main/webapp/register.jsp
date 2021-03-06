<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
 background-color: #b074d9c4;
}

* {
  box-sizing: border-box;
  
}

.container {
    padding: 20px;
      width:560px;
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    
     border-radius: 10px;
        background:  #c294e1;
  
 box-shadow: -9px 9px 17px #9748bc, 9px -9px 17px #dfbdf4;
   height: 20px 0px; 
  
 
  
  }

/* Full-width input fields */
input[type=text], input[type=password],input[type=date] ,input[type=email]{
  width: 100%;
  padding: 15px;
  margin: 5px 0px 10px 0px;
  display: inline-block;
  border: none;
 background: #c294e1;
  border-radius: 20px;
   box-shadow: inset 7px 2px 10px #b387c4, inset -5px -5px 12px rgb(113 38 135 / 60%);
    color: black;
    font-weight: bolder;
  padding: 15px 20px;
}




input[type=text]:focus, input[type=password]:focus,input[type=date]:focus ,input[type=email]:focus {
 background-color: #debbf5;
outline: none;
 
}


/* Set a style for the submit button */
.registerbtn {
background-color:  #c294e1;
  color: rgb(0, 0, 0);
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
box-shadow: 0px -2px 10px #edb1ff, 12px 4px 12px rgb(123 25 184 / 60%);
    font-weight: bolder;
    border-radius: 20px;

}


.registerbtn:hover {
  opacity: 1;
}
.registerbtn:focus{
  background-color:  #bf84da;
  box-shadow: 0px -2px 10px #edb1ff, 12px 4px 12px rgb(123 25 184 / 60%);
}

::placeholder { 
  color: rgb(0, 0, 0);
  
}
a{
    color: black;
}



</style>
</head>
<body>

<form action="registerAction" method="post">
  <div class="container">
    <h1>Register</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
<label for="uname"><b>Name</b></label>
    <input type="text" placeholder="Enter name" name="uname" id="uname" required>
    
<label for="age"><b>Age</b></label>
<input type="text" placeholder="Enter age" name="uage" id="uage" required>

    
    <label for="udob"><b>Date of birth</b></label>
    <input type="date" placeholder="Date of Birth" name="udob" id="udpb" required>

    <label for="email"><b>Email</b></label>
    <input type="email" placeholder="Enter Email" name="uemail" id="email" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="upassword" id="psw" required>

     
    <button type="submit" class="registerbtn">Register</button>
    
                <p class="text-center text-muted mt-5 mb-0">Have already an account? <a href="login.jsp" class="fw-bold text-body"><u>Login here</u></a></p>
  </div>
  
 
</form>

</body>
</html>
    