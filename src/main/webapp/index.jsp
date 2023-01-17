<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MUDORU | Welcome</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Raleway:200');

        html, body {
        height: 100%;
        }
        body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100%;
        background: #1D1F20;
        }
        #box {
        display: flex;
        align-items: center;
        justify-content: center;
        width: 400px;
        height: 200px;
        color: white;
        font-family: 'Raleway';
        font-size: 2.5rem;
        }
        .gradient-border {
        --borderWidth: 3px;
        background: #1D1F20;
        position: relative;
        border-radius: var(--borderWidth);
        }
        .gradient-border:after {
        content: '';
        position: absolute;
        top: calc(-1 * var(--borderWidth));
        left: calc(-1 * var(--borderWidth));
        height: calc(100% + var(--borderWidth) * 2);
        width: calc(100% + var(--borderWidth) * 2);
        background: linear-gradient(60deg, #f79533, #f37055, #ef4e7b, #a166ab, #5073b8, #1098ad, #07b39b, #6fba82);
        border-radius: calc(2 * var(--borderWidth));
        z-index: -1;
        animation: animatedgradient 3s ease alternate infinite;
        background-size: 300% 300%;
        }


        @keyframes animatedgradient {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 50%;
            }
            100% {
                background-position: 0% 50%;
            }
        }

    </style>
</head>
<body>
    <a href="Login.jsp" target="_blank" style="text-decoration: none;">
        <div class="gradient-border" id="box"><center>Welcome to<br><b>MUDORU</b></center></div>
    </a>
</body>
</html>