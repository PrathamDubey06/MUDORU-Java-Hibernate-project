<!DOCTYPE html>
<head>
<style>
    img{
        z-index: -1;
        position: absolute;
        top: 0px;
        left:0px;
        height: 100%;
        width: 100%;
    }
    h1{
        margin-top: 17%;
        font-size: 80px;
        color: white;
        font-family: Georgia, 'Times New Roman', Times, serif; 
    }
    #butn{
        background-color: rgb(255, 255, 255);
        color: rgb(0, 0, 0);
        height: 50px;
        width: 100px;
        font-size: 20px;
        border: 1px solid rgb(0, 0, 0);
        border-radius: 10px;
        margin-top: 20px;
        border-radius: 100px;
        font-weight: bold;
    }
    #butn:hover{
        color: rgb(255, 255, 255);
        cursor: pointer;
        width: 300px;
        height: 70px;
        font-size: 30px;
        background-color: rgb(0, 0, 0);
        border: 1px solid white;
        border-radius: 5px;
        transition: all 1000ms ease;
    }
    h1:hover{
        font-size: 100px;
        transition: all 1000ms ease;
    }
</style>
<script>
    function redirect()
    {
        window.location.replace("http://localhost/Project/index.html");
    }
</script>
    <title>MUDORU | LoginFail</title>
</head>
<body>
<img src="Sorry.gif">
<center>
    <h1>Login Failed &#128577;</h1>
    <button onclick="redirect();" id="butn">Retry</button>
<center>
</body>
</html>