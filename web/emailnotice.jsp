<!Doctype html>
<html>
<head>
<title>
Email notice
</title>
<link rel=stylesheet href="stylesheet.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<body>
	<div>
	<h1  > <img src="thapar.jpg" style="float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;">Online Attendance Management System</h1>
</div>
<nav>
			<a href="faculty.jsp">home</a>
			<a href="attendance.jsp">attendance</a>
			<a href="emailnotice.jsp">email notice</a>
			<a href="uploadnotice.jsp">upload notice</a>
                        <a href='logout.jsp'>Log out</a>
</nav>    

<h2>Email Notice To Students...</h2>
<center>
<form style="background-color: #aaa; height: 50%;width:35%; border: 2px solid #000;"> 
    <div style="border: 1px solid #000;">
<br/>
        Enter title : <input type="text" name="noticetitle" placeholder=" Enter Notice Title..." ><br/><br/>
<textarea name="noticearea" rows="20" cols="50" placeholder=" Enter Notice Details..." maxlength="500" style="border: 2px solid #000;">
</textarea>
<br/><br/>
    </div><input type="submit" value="submit">
</form>
</center>
<div class="clear">
</div>
<br/>
<br/>
<br/>
<!--<center>
<footer >
&copy Amandeep Dhiman
</footer>
</center>
-->

</body>
</html>