<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.medicine.products.ProductDetail"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style></style>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
  body{
    background-color: #b074d9c4;
        box-sizing: border-box;
        font-family: 'Raleway', sans-serif;
        margin: 0;
        padding: 0;
    }
    
    
    header{
        width: 100%;
        height: 70px;
        color: #ffffff;
        display: flex;
    }
    .part{
        width: 50%;
        height: 70px
    }
    .head-item-1{
        margin-left: 15px;
        display: flex;
        justify-content: flex-start;
        align-items: center;
        height: 70px
    }
    .head-item-1 .headname{
        color: rgb(255, 255, 255);
        margin-left: 20px;
        height: 70px;
    }
    .head-item-1 .logo{
        width: 50px;
        height: 50px;
    
    }
    .head-item-1 .logo img{
        width: 50px;
        height: 50px;
    }
    
    
    .head-item{
        display: flex;
        justify-content: flex-end;
        align-items: center;
        height: 70px
    }
    
    .head-item .nav ul{
        margin: 0;
        padding: 0;
    }
    .head-item .nav li{
        display: inline;
        margin-right: 50px;
    }
    .head-item .nav li a{
        text-decoration: none;
        color: rgb(254, 253, 255);
        font-size: 18px;
    }
    
    
    /*---------*/
    
    section{
        width: 100%;
        height: 600px;
        margin-top: 70px;
    }
    .container {
        width: 774px;  /* 400*/
        height: 539px; /*300*/
        padding: 50px;
    
        margin: auto;
        box-sizing: border-box;
        border-radius: 10px;
        

        background:  #c294e1;

border-radius: 10px;
box-shadow: -9px 9px 17px #9748bc, 9px -9px 17px #dfbdf4;
    
        
      }
    
    .head{
        text-align: center;
        margin-bottom: 80px;
    }
    
    .head h2 {
        margin-top: 0;
        font-size: 31px;
        color: #ffffff;
        font-weight: bold;
    }
    
    .item{
        width: 660px;
        height: 200px;
        display: flex;
        gap: 30px;
        justify-content: center;
        margin: 0 auto;
    }
    
    .item .item-box{
        width: 200px;
        height: 200px;
        border-radius: 28px;
        background: #c294e1;
        box-shadow: -9px 9px 17px #9748bc, 9px -9px 17px #dfbdf4;
        margin: 0;
        transition: 0.5s;
        
    }
    
    .item .item-box:hover{
      transform: scale(1.2);
    }
    .item-box .icon-wrapper{
        width: 62px;
        height: 62px;
        margin: 0 auto;
        padding-top:38px ;
        padding-bottom: 19px;
    }
    
    .item-box .icon-wrapper img{
        width: 62px;
        height: 62px;
    }
    
    .text{
        text-align: center;
    }
    
    .text h3{
        font-size: 20px;
        color: #ffffff;
        margin: 0;
    }
    
    * {
      margin: 0;
      padding: 0;
      
    }
    
    #navbar {
      display: flex;
      flex-direction: row;
      justify-content: space-between;
      font-size: 20px;
      font-family: Roboto;
      background: #c294e1;
      padding: 20px;
      box-shadow: -9px 9px 17px #9748bc, 9px -9px 17px #dfbdf4;
    }
    
    nav ul{
      list-style-type:none;
      display:flex;
    }
    
    nav input{
        background: #c294e1;
        border: none;
        color: white;
        padding: 5px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 0px 4px;
        cursor: pointer;
        box-shadow: -9px 9px 17px #9748bc, 9px -9px 17px #dfbdf4;
        border-radius: 28px;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      
    }
    nav input:focus{
        background-color:  #bf84da;
    }
    
   nav a{
       font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
     text-decoration: none;
     background: #c294e1;
        border: none;
        color: white;
        padding: 5px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 0px 4px;
        cursor: pointer;
        box-shadow: -9px 9px 17px #9748bc, 9px -9px 17px #dfbdf4;
        border-radius: 28px;
    }
    nav a:focus{
        background-color:  #bf84da;
    }
    .container a{
        text-decoration: none;
        color: #ffffff;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    #navbar-brand h3{
        color: #ffffff;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    
    
</style>
<body>
    

<% 
if(session.getAttribute("uemail")==null){
	 response.sendRedirect("register.jsp");
}
%>

        <div id="navbar">
            <div id="navbar-brand">
              <h3 >ADMIN</h3>
            </div>
           
            <nav>
            
              <ul>
                
               <li><a href="HomePage.jsp">Home page</a></li>
               
                <li>
                 <form action="logoutAction">
                    <input type="submit"value="logout">
                      </form>
                </li> 
              </ul>
            </nav>
          
          </div>
        </div>
     <section class="ptr-1">
        <div class="container">
            <div class="head">
                <h2>WELCOME</h2>
            </div>
    
            <div class="item">
                <div class="item-box">
                    <div class="icon-wrapper">
                        <img src="https://cdn-icons-png.flaticon.com/128/4689/4689700.png" alt="">
                    </div>
                    <div class="text">
                        <h3><a href="addproduct.jsp">ADD PRODUCT</a>  <br>
                            
                        </h3>
                    </div>
                </div>
                <div class="item-box">
                    <div class="icon-wrapper">
                        <img src="https://cdn-icons.flaticon.com/png/128/5444/premium/5444677.png?token=exp=1643637756~hmac=016c9ac66599b3f36266759b8401ffcc" alt="">
                    </div>
                    <div class="text">
                        <h3><a href="removeProduct.jsp">REMOVE PRODUCT</a>  <br>
                           
                        </h3>
                    </div>
                </div>
               
            
            </div>
    
            
            </div>
        </div>
    </section>

</body>
</html>
      
</body>
</html>