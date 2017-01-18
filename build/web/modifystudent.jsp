<!Doctype html>
<html>
<head>
<title>Modify Student List
</title>
<link rel=stylesheet href="stylesheet.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<body>
<div>
	<h1  > <img src="thapar.jpg" style="float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;">Online Attendance Management System</h1>
</div>
<nav>
			<a href="admin.jsp">home</a>
			<a href="classdetails.jsp">class</a>
			<a href="modifyfaculty.jsp">faculty</a>
			<a href="modifystudent.jsp">student</a>
                        <a href="adminlogout.jsp">Logout</a>
</nav>
<h2>Modify Student List...</h2>
<br/>
        <div style="margin-left:300px;">
    <fieldset style="box-shadow: 10px 10px 10px #bbb;  border-radius: 10px; width: 30%; height: 810pt;" >
        <legend style="background-color:  #F40000;"> Student Registration...</legend>
<form method="post" action="updatestudent.jsp">
    <p> <b> Please enter Unique Roll No Only</b></p>
    <p> <b>Student Roll No : </b></p> <input type="text" name="rollno" placeholder="Enter Roll No Please">
    <p> <b>Student password : </b></p> <input type="password" name="password" placeholder="Enter Password Please">
    <p> <b>Student Name : </b></p> <input type="text" name="name" placeholder="Enter Name Please">
    <p> <b>Father Name </b></p> <input type="text" name="fathername" placeholder="Enter Father Name Please">
    <p> <b>Student Date of Birth </b></p> <input type="date" name="dob" >
    <p> <b>Student Mobile No. </b></p> <input type="text" name="mobile" placeholder="Enter Mobile No. Please">
    <p> <b>Student Email </b></p> <input type="email" name="email" placeholder="Enter Student Email Please">
    <p> <b>Student Batch </b></p> <input type="text" name="batch" placeholder="Enter Student Batch Please">
    <p> <b>Student Semester </b></p> <input type="text" name="semester" placeholder="Enter Semester Please">
    <p> <b>Guardian Email </b></p> <input type="email" name="guardianemail" placeholder="Enter Guardian Email Please">
    <p> <b>Guardian Mobile </b></p> <input type="text" name="guardianmobile" placeholder="Enter Guardian Mobile Please">
    <p> <b>Student Address </b></p> <input type="text" name="address" placeholder="Enter Student Address Please">
    <p> <b>Sex </b></p> <input type="text" name="sex" placeholder="Enter student Gender Please">
    
<center>
<br/>
<br/>
<input type="submit" name="submit" style= "float: right; background-color:#f40000 ; width: 100px;border:1px solid white; border-bottom:3px solid white;  color:white;"> 
</center>
</form>
</fieldset >
</div>


<div class="clear">
</div>
<br/>
<br/>
<br/>

<!--<center>
<footer >
&copy Amandeep Dhiman
</footer>
</center>-->

</body>
</html>