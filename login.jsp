<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
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
  width:500px;
position: absolute;
left: 50%;
top: 50%;
transform: translate(-50%, -50%);


    padding: 40px 30px;
    background:  #c294e1;

    border-radius: 10px;
    box-shadow: -9px 9px 17px #9748bc, 9px -9px 17px #dfbdf4;



}

/* Full-width input fields */
input[type=date],input[type=password],input[type=email]{
width: 100%;
padding: 15px;
margin: 18px 0px 19px 0px;
display: inline-block;
border: none;
background: #c294e1;
border-radius: 20px;
box-shadow: inset 7px 2px 10px #b387c4, inset -5px -5px 12px rgb(113 38 135 / 60%);
color: black;
font-weight: bolder;
padding: 20px 20px;
}




input[type=password]:focus,input[type=email]:focus {
background-color: #debbf5;
outline: none;

}




/* Set a style for the submit button */
.loginbtn {
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

.loginbtn:hover {
opacity: 1;
font-weight: bolder;
}

.loginbtn:focus{
  background-color:  #bf84da;
  box-shadow: 0px -2px 10px #edb1ff, 12px 4px 12px rgb(123 25 184 / 60%);
}

::placeholder { 
color: rgb(0, 0, 0);

}






</style>
</head>
<body>

<form action="loginAction" method="post">
  <div class="container">
    <h1>Login</h1>
    <p>Welcome back....</p>
    <hr>


    <label for="email"><b>Email</b></label>
    <input type="email" placeholder="Enter Email" name="uemail" id="email" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="upassword" id="psw" required>

     
    <button type="submit" class="loginbtn">Log in</button>
    
                <p class="text-center text-muted mt-5 mb-0">Don't have an account<a href="register.jsp" class="fw-bold text-body"><u>Create here</u></a></p>
  </div>
  
 
</form>

</body>
</html>