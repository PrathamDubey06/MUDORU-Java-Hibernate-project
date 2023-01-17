<%
HttpSession hs=request.getSession();
String firstname = (String)hs.getAttribute("firstname");
String lastname = (String)hs.getAttribute("lastname");
String username = (String)hs.getAttribute("username");
String rollno = username.split("@")[0];
String pass1 = (String)hs.getAttribute("pass1");
long phone= (long)hs.getAttribute("phone");
String city = (String)hs.getAttribute("city");
String state = (String)hs.getAttribute("state");
String address = (String)hs.getAttribute("address");
String gender = (String)hs.getAttribute("gender");
String dob = (String)hs.getAttribute("dob");
%>
<html>
<head>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    body{
        background-image: url(space-stars.gif);
        z-index: 2;
        background-attachment: fixed;
    }
    .card {
        background-color: white;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        margin: auto;
        margin-top: 100px;
        width: 75%;
        height: 70%;
        border: 2px solid black;
    }

    .title {
      color: grey
      font-size: 18px;
    }

    button {
      border: none;
        bottom: 0px;
      outline: 0;
      display: inline-block;
      padding: 8px;
      color: white;
      background-color: #000;
      text-align: center;
      cursor: pointer;
      width: 100%;
      font-size: 18px;
        margin-bottom: 1px;
    }

    a {
      text-decoration: none;
      font-size: 22px;
      color: black;
    }

    button:hover, a:hover {
      opacity: 0.7;
    }
    .Headings{
        color: black;
        font-weight: bold;
        font-family: sans-serif;
        font-size: 20px;
    }
</style>
</head>
<body>
  
<div class="card">
  <img src="Pratham.jpeg" alt="<Students-Image>" style="width:15%; height: 30%; top: 30px;left: 20px;float: left;margin-top: 10px;">
    <img src="Final_Logo.png" style="float: right; width: 200px; height: 100px;">
    <h1 style="text-align: center; left: -200px; font-size: 35px;"><%=firstname+" "+lastname %></h1>
    <h1 style="text-align: center; left: -200px;font-size: 25px;color: darkred;font-family:serif;"><%=rollno %></h1>
    <br>
    <section style="padding: 15px;">
    	<p class="Headings">Email: <%=username%></p>
        <p class="Headings">Phone Number: <%=phone%></p>
        <p class="Headings">Date of Birth: <%=dob%></p>
        <p class="Headings">Gender: <%=gender%></p>
        <p class="Headings">Address: <%=address+", "+city%></p>
        <p class="Headings">State: <%=state%></p>
    </section>
<!--
  <p class="title">CEO & Founder, Example</p>
  <p>Harvard University</p>
  <a href="#"><i class="fa fa-dribbble"></i></a>
  <a href="#"><i class="fa fa-twitter"></i></a>
  <a href="#"><i class="fa fa-linkedin"></i></a>
  <a href="#"><i class="fa fa-facebook"></i></a>
-->
    <p style="bottom: 0px;"><a href="Dashboard.jsp"><button>HOME</button></a></p>
</div>
</body>
</html>
<!--//Name, Email, FName, Mname, Phone, Roll, Addr-->