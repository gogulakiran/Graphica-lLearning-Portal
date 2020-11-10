<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>report</title>
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
    }
    .button1 {
        border-radius: 4px;
        cursor: pointer;
        background-color: #00a2ed;
        color : white;
        padding: 10px;
        text-align: center;
        display : flex;
        margin: auto;
    }
    .button2 {
        border-radius: 4px;
        cursor: pointer;
        background-color: #00a2ed;
        color : white;
        padding: 10px;
        text-align: center;
        display: flex;
        margin: auto;
    }
    .id {
        width: 100%;
        padding: 5px;
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
</style>
</head>
<body>
<div class="container">
<div class="content">
<form action="index">
   <label><b>Enter TestID : </b></lable>
<input id="testid" name="testid" class="id">
<br><br>
<input type="submit" value="View test report" class="button1"/> <br>
</form>
   <hr>
<br><br>
<form action="listStudents">
<input type="submit" value="View individual report" class="button2"/>
</form>
</div>
</div>
</body>
</html>