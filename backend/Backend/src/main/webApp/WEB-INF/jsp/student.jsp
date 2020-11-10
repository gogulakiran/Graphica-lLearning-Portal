<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
        font-family: Arial,sans-serif;
        
    }
    *{
        box-sizing: border-box;
    }
    .container {
        position: absolute;
top: 50%;
left: 50%;
border: 4px;
width: 400px;
height: 300px;
margin-left: -200px;
margin-top: -150px;
background: url('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.salesforceben.com%2Fsalesforce-reports-url-hack%2F&psig=AOvVaw2v4IvpDhVDsFAGFibOxdmE&ust=1602743035811000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCJjx9bu5s-wCFQAAAAAdAAAAABAD');
    }
.content
{
font-size: 0.8em;
font-family: sans-serif;
position: relative;
left: 50%;
top: 30%;
width: 240px;
height: 50px;
margin-left: -120px;
margin-top: -25px;
}
.button {
        border-radius: 4px;
        cursor: pointer;
        background-color: #00a2ed;
        color : white;
        padding: 10px;
        text-align: center;
        display: flex;
        margin: auto;
    }
    .uname {
        width: 100%;
        padding: 5px;
    }
</style>
</head>
<body >
<div class="container">
<div class="content">
<form action = "individualreport">
<label><b>Enter Username:</b></lable>
<input id="uname" name="uname" class="uname"> <br>
<br><br>
<input type="submit" value="View test report" class="button"/> <br>
</form>
</div>
</div>
</body>
</html>