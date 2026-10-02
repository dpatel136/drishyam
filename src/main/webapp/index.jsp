<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Drishyam: The Conclusion</title>


    <style>

        * {
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {

            margin: 0;
            padding: 0;

            background:
                radial-gradient(
                    circle at top,
                    #252000 0%,
                    #080808 35%,
                    #030303 100%
                );

            color: white;

            font-family:
                Arial,
                Helvetica,
                sans-serif;

        }


        /* ================= NAVBAR ================= */

        .navbar {

            position: sticky;
            top: 0;

            z-index: 1000;

            display: flex;
            justify-content: space-between;
            align-items: center;

            padding: 18px 6%;

            background: rgba(5,5,5,0.95);

            border-bottom:
                1px solid rgba(255,204,0,0.25);

            backdrop-filter: blur(10px);

        }


        .logo {

            color: #ffcc00;

            font-size: 25px;

            font-weight: bold;

            letter-spacing: 3px;

        }


        .navbar a {

            color: #ddd;

            text-decoration: none;

            margin-left: 25px;

            transition: 0.3s;

        }


        .navbar a:hover {

            color: #ffcc00;

        }


        /* ================= HEADER ================= */

        .header {

            text-align: center;

            padding: 90px 20px 60px;

            background:

                linear-gradient(
                    rgba(0,0,0,0.55),
                    rgba(0,0,0,0.9)
                ),

                url("https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Drishyam_star_cast_Ajay_Devgn%2C_Shriya_Saran_and_Tabu_with_suresh_sharma.jpg/1280px-Drishyam_star_cast_Ajay_Devgn%2C_Shriya_Saran_and_Tabu_with_suresh_sharma.jpg");

            background-size: cover;

            background-position: center;

            background-attachment: fixed;

        }


        .header h1 {

            margin: 0;

            font-size:
                clamp(38px, 7vw, 70px);

            color: #ffcc00;

            text-shadow:
                0 0 10px #ff9900,
                0 0 30px rgba(255,153,0,0.5);

        }


        .header p {

            color: #ddd;

            font-size: 20px;

            letter-spacing: 3px;

        }


        /* ================= MAIN IMAGE ================= */

        .main-section {

            text-align: center;

            padding: 50px 20px;

        }


        .main-photo {

            width: 900px;

            max-width: 100%;

            max-height: 550px;

            object-fit: cover;

            border-radius: 18px;

            border:
                3px solid #ffcc00;

            box-shadow:
                0 0 30px rgba(255,204,0,0.35);

            transition: 0.5s;

        }


        .main-photo:hover {

            transform: scale(1.02);

            box-shadow:
                0 0 45px rgba(255,204,0,0.55);

        }


        /* ================= CAST ================= */

        .cast-section {

            text-align: center;

            padding: 60px 20px;

        }


        .section-title {

            color: #ffcc00;

            font-size: 40px;

            margin-bottom: 35px;

        }


        .cast-container {

            display: grid;

            grid-template-columns:
                repeat(auto-fit, minmax(230px, 1fr));

            max-width: 1100px;

            margin: auto;

            gap: 30px;

        }


        .actor {

            background:

                linear-gradient(
                    145deg,
                    #1c1c1c,
                    #0e0e0e
                );

            padding: 15px;

            border-radius: 18px;

            border:
                1px solid #333;

            box-shadow:
                0 0 20px rgba(255,204,0,0.08);

            transition:
                transform 0.4s,
                box-shadow 0.4s,
                border 0.4s;

        }


        .actor:hover {

            transform:
                translateY(-12px);

            border-color:
                #ffcc00;

            box-shadow:
                0 15px 40px
                rgba(255,204,0,0.2);

        }


        .actor img {

            width: 100%;

            height: 330px;

            object-fit: cover;

            border-radius: 12px;

            display: block;

        }


        .actor h3 {

            color: #ffcc00;

            font-size: 23px;

            margin:
                18
