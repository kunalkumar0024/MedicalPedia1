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
  font-family: "Oswald", sans-serif;

  -webkit-font-smoothing: antialiased;
  font-smoothing: antialiased;
  background-color: #b074d9c4;
  text-align: center;
}

h1 {
  line-height: .95;
 
  font-weight: 900;
  font-size: 105px;
  text-transform: uppercase;
 
  color: #b57bde;
   text-shadow: -8px -8px 12px rgb(207 166 237 / 94%), 8px 8px 12px rgb(70 5 75 / 56%);
   caret-color:#262626;
   outline: none;
}

.center {
   width: 100%;
  height: 100%;
 
  
  display :inline-block;
  justify-content :center;
  align-items: center;
}

.btn {
   display: inline-block;
  margin: 0 auto;
  width: 175px;
  height: 60px;
  padding: 6px 0 0 3px;
 background-color: #b57bde;
   box-shadow: -8px -8px 12px rgb(207 166 237 / 94%), 8px 8px 12px rgb(145 92 166);
  border-radius: 40px;
 
  font-size: 16px;
  line-height: 54px;
  color: #fff;
  letter-spacing: .25em;
  text-decoration: none;
  font-weight: 600;
  text-transform: uppercase;
  vertical-align: middle;
  text-align: center;
  cursor: pointer;
}

.btn:hover {
  background: #8a30b4;
  color: #dab1ec;
}

a{
    text-decoration: none;
    color: white;
}
.button{
    margin: 5px;
 
}
</style>
<body>
<div class="center">
             <h1>WELCOME <br>to <br>medical pedia</h1>
           <div class="button">
            <div class="btn"><a href="register.jsp"> Register</div></a>
             <div class="btn"><a href="login.jsp"> Log in</div></a>
          </div>
        </div>
</body>
</html>