<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
body {
  font-family: "Montserrat";
  
}
section {
  height: 130vh;
  width: 100%;
  background-color: aliceblue;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
}
.container {
  width: 90%;
  max-width: 500px;
  margin: 0 auto;
  padding: 20px;
  box-shadow: 0px 0px 20px #33FFFF;
  background-color: white;
  border-radius: 8px;
  margin-top: 150px;
  margin-left: 650px;
}
.form-group {
  width: 100%;
  margin-top: 20px;
  font-size: 20px;
}
.form-group input,
.form-group textarea {
  width: 100%;
  padding: 5px;
  font-size: 18px;
  border: 1px solid rgba(128, 128, 128, 0.199);
  margin-top: 5px;
}

textarea {
  resize: vertical;
}
button[type="submit"] {
  width: 100%;
  border: none;
  outline: none;
  padding: 20px;
  font-size: 24px;
  border-radius: 8px;
  font-family: "Montserrat";
  color: rgb(27, 166, 247);
  text-align: center;
  cursor: pointer;
  margin-top: 10px;
  transition: 0.3s ease background-color;
}
button[type="submit"]:hover {
  background-color: rgb(214, 226, 236);
}
#status {
  width: 90%;
  max-width: 500px;
  text-align: center;
  padding: 10px;
  margin: 0 auto;
  border-radius: 8px;
}
#status.success {
  background-color: rgb(128,128,128);
  animation: status 4s ease forwards;
}
#status.error {
  background-color: rgb(250, 129, 92);
  color: white;
  animation: status 4s ease forwards;
}
@keyframes status {
  0% {
    opacity: 1;
    pointer-events: all;
  }
  90% {
    opacity: 1;
    pointer-events: all;
  }
  100% {
    opacity: 0;
    pointer-events: none;
  }
}
.side-navbar{
	height:100%;
	width:260px;
	position:fixed;
	z-index:1;
	top:0;
	left:0;
	background-color: #000080;
	overflow-x:hidden;
	padding-top:20px;
}
 .side-navbar a{
 
 padding:50px 10px 10px 50px;
 text-decoration: none;
 font-size:18px;
 font-weight:900;
 display:block;
 font-family: "Times New Roman", Times, serif;
 color:	#f0ffff;
 }
 
 .side-navbar a:hover{
 color:#ffff00;
 -webkit-transform: scale(1.3);
	transform: scale(1.3);	
 
 }
 
 
.header{
	width:1300px;
	height:150px;
	margin:auto;
	position: absolute;
	left:16%;
	top:-2%;
	position:fixed;	
	z-index:1;
	background-color: 	#000080;
}

h1{
	color:#f0ffff;
	left:28%;
	position: absolute;
	top:20%;
}


.logo{
	left:65%;
	position: absolute;
	top:16%;
}
	
</style>

<script type="text/javascript">
window.addEventListener("DOMContentLoaded", function () {
	  // get the form elements defined in your form HTML above

	  var form = document.getElementById("my-form");
	  // var button = document.getElementById("my-form-button");
	  var status = document.getElementById("status");

	  // Success and Error functions for after the form is submitted

	  function success() {
	    form.reset();
	    status.classList.add("success");
	    status.innerHTML = "Thanks!";
	  }

	  function error() {
	    status.classList.add("error");
	    status.innerHTML = "Oops! There was a problem.";
	  }

	  // handle the form submission event

	  form.addEventListener("submit", function (ev) {
	    ev.preventDefault();
	    var data = new FormData(form);
	    ajax(form.method, form.action, data, success, error);
	  });
	});

	// helper function for sending an AJAX request

	function ajax(method, url, data, success, error) {
	  var xhr = new XMLHttpRequest();
	  xhr.open(method, url);
	  xhr.setRequestHeader("Accept", "application/json");
	  xhr.onreadystatechange = function () {
	    if (xhr.readyState !== XMLHttpRequest.DONE) return;
	    if (xhr.status === 200) {
	      success(xhr.response, xhr.responseType);
	    } else {
	      error(xhr.status, xhr.response, xhr.responseType);
	    }
	  };
	  xhr.send(data);
	}


</script>
</head>
<body>
<div class= "header">
<img src="images/Picture1.png" class="logo" width="100px" height="120px"/>
<h1>Viddyadarsha Maha Vidyalaya</h1>
</div>

<div class = "side-navbar">
<a href = "HomeStu.jsp">Student Profile</a>
<a href ="#">Class Information</a>
<a href ="View_Result.jsp">Exam Results</a>
<a href ="#">Attendance Marks</a>
<a href ="#">Fees Details</a>
<a href ="#">Staff Details</a>
<a href="parent.jsp">Parent Details</a>
<a href ="#">Library Information</a>
</div>
<section>
  <div class="container">
    <form action="https://formspree.io/f/mnqlpbqj" method="POST" id="my-form">
    
    <center><h2>Send a request</h2></center>

      <div class="form-group">
        <label for="firstName"> Full Name</label>
        <input type="text" id="firstName" name="firstName">
      </div>

      <div class="form-group">
        <label for="latsName">Subject</label>
        <input type="text" id="lastName" name="lastName">
      </div>

      <div class="form-group">
        <label for="email">Email</label>
        <input type="email" id="email" name="email">
      </div>

      <div class="form-group">
        <label for="massage">Massage</label>
        <textarea name="massage" id="massage" cols="30" rows="7"></textarea>
      </div>

      <button type="submit">Submit</button>
    </form>
  </div>
  <div id="status"></div>
</section>
</body>
</html>