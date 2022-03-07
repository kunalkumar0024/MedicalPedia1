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
input[type=text]{
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




input[type=text]:focus{
background-color: #debbf5;
outline: none;

}




/* Set a style for the submit button */
.addbtn {
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


.addbtn:hover {
opacity: 1;

font-weight: bolder;

}
.addbtn:focus{
  background-color:  #bf84da;
  box-shadow: 0px -2px 10px #edb1ff, 12px 4px 12px rgb(123 25 184 / 60%);
}
::placeholder { 
color: rgb(0, 0, 0);

}


</style>

<body>
<form enctype="multipart/form-data" action="AddProAction" method="post">
  <div class="container">
    <h1>ADD PRODUCT</h1>
    <p>Welcome back....</p>
    <hr>
    
      
    <label for="pid"><b>Product ID</b></label>
    <input type="text" placeholder="Product id" name="pid" id="pid" required>

    <label for="pname"><b>Product name</b></label>
    <input type="text" placeholder="Product name" name="pname" id="pname" required>

    <label for="pprice"><b>Price</b></label>
    <input type="text" placeholder="Product price" name="pprice" id="pprice" required>
    
     <label for="pprice"><b>Product Image</b></label>
     <input type="file" id="myFile" name="pimage" required>
     
    <button type="submit" class="addbtn">Submit</button>
    
                
  </div>
  
 
</form>
</body>
</html>