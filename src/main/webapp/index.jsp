<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Drishyam | Movie Website</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            background: #050505;
            color: white;
            font-family: Arial, Helvetica, sans-serif;
            line-height: 1.6;
        }

        /* ================= NAVBAR ================= */

        .navbar {
            position: sticky;
            top: 0;
            z-index: 999;

            width: 100%;

            padding: 18px 7%;

            display: flex;
            justify-content: space-between;
            align-items: center;

            background: rgba(0, 0, 0, 0.95);

            border-bottom: 1px solid #292929;
        }

        .logo {
            color: #ffcc00;
            font-size: 28px;
            font-weight: bold;
            letter-spacing: 4px;
        }

        .nav-links {
            display: flex;
            gap: 25px;
            list-style: none;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 15px;
            transition: 0.3s;
        }

        .nav-links a:hover {
            color: #ffcc00;
        }

        /* ================= HERO ================= */

        .hero {

            min-height: 90vh;

            display: flex;
            align-items: center;

            padding: 100px 7%;

            background:
                linear-gradient(
                    90deg,
                    rgba(0,0,0,0.95),
                    rgba(0,0,0,0.65),
                    rgba(0,0,0,0.25)
                ),

                url("https://images.unsplash.com/photo-1485846234645-a62644f84728?auto=format&fit=crop&w=2000&q=80");

            background-size: cover;
            background-position: center;
        }

        .hero-content {
            max-width: 650px;
        }

        .hero h1 {
            font-size: clamp(55px, 9vw, 100px);
            color: #ffcc00;
            letter-spacing: 8px;
            line-height: 1;
            text-shadow: 0 0 25px rgba(255,204,0,0.5);
        }

        .hero h2 {
            margin-top: 20px;
            color: white;
            font-size: 25px;
        }

        .hero p {
            margin-top: 20px;
            color: #ccc;
            font-size: 17px;
            max-width: 600px;
        }

        .hero-buttons {
            margin-top: 30px;
        }

        .button {
            display: inline-block;
            padding: 14px 25px;
            margin-right: 10px;

            background: #ffcc00;
            color: #050505;

            text-decoration: none;
            font-weight: bold;

            border-radius: 5px;

            transition: 0.3s;
        }

        .button:hover {
            transform: translateY(-3px);
            background: white;
        }

        /* ================= COMMON ================= */

        .section {
            padding: 80px 7%;
        }

        .section-title {
            text-align: center;
            font-size: 40px;
            margin-bottom: 45px;
            color: #ffcc00;
        }

        /* ================= ABOUT ================= */

        .about {
            background: #0c0c0c;
        }

        .about-container {
            max-width: 1000px;
            margin: auto;
            text-align: center;
        }

        .about-container p {
            color: #bbb;
            font-size: 17px;
            line-height: 1.9;
        }

        /* ================= MOVIE INFO ================= */

        .info-grid {

            max-width: 1000px;

            margin: 40px auto 0;

            display: grid;

            grid-template-columns:
                repeat(auto-fit, minmax(180px, 1fr));

            gap: 20px;
        }

        .info-card {
            background: #151515;
            border: 1px solid #292929;
            border-radius: 10px;
            padding: 25px;
            text-align: center;
        }

        .info-card h3 {
            color: #ffcc00;
            margin-bottom: 8px;
        }

        .info-card p {
            color: #aaa;
        }

        /* ================= CAST ================= */

        .cast-container {

            max-width: 1100px;

            margin: auto;

            display: grid;

            grid-template-columns:
                repeat(auto-fit, minmax(230px, 1fr));

            gap: 25px;
        }

        .actor {

            background: #111;

            border: 1px solid #292929;

            border-radius: 15px;

            overflow: hidden;

            text-align: center;

            transition: 0.4s;
        }

        .actor:hover {

            transform: translateY(-10px);

            border-color: #ffcc00;

            box-shadow:
                0 10px 35px rgba(255,204,0,0.15);
        }

        .actor img {

            width: 100%;

            height: 330px;

            object-fit: cover;

            display: block;
        }

        .actor-content {
            padding: 20px;
        }

        .actor h3 {
            color: #ffcc00;
            font-size: 22px;
        }

        .actor p {
            color: #999;
            margin-top: 5px;
        }

        /* ================= GALLERY ================= */

        .gallery {
            background: #0b0b0b;
        }

        .gallery-grid {

            max-width: 1200px;

            margin: auto;

            display: grid;

            grid-template-columns:
                repeat(auto-fit, minmax(250px, 1fr));

            gap: 18px;
        }

        .gallery-card {
            overflow: hidden;
            border-radius: 12px;
            border: 1px solid #292929;
        }

        .gallery-card img {

            width: 100%;

            height: 250px;

            object-fit: cover;

            display: block;

            transition: 0.5s;
        }

        .gallery-card:hover img {
            transform: scale(1.08);
        }

        /* ================= REVIEW ================= */

        .review {

            max-width: 1000px;

            margin: 70px auto;

            padding: 40px;

            background: #111;

            border: 1px solid #292929;

            border-radius: 15px;

            text-align: center;
        }

        .review h2 {
            color: #ffcc00;
            margin-bottom: 15px;
        }

        .review p {
            color: #aaa;
            margin-bottom: 25px;
        }

        /* ================= FOOTER ================= */

        footer {

            padding: 30px;

            text-align: center;

            background: #020202;

            border-top: 1px solid #222;

            color: #777;
        }

        footer span {
            color: #ffcc00;
        }

        /* ================= MOBILE ================= */

        @media (max-width: 700px) {

            .navbar {
                flex-direction: column;
                gap: 15px;
            }

            .nav-links {
                gap: 15px;
                flex-wrap: wrap;
                justify-content: center;
            }

            .hero {
                min-height: 75vh;
                padding: 80px 6%;
            }

            .hero h1 {
                font-size: 55px;
                letter-spacing: 4px;
            }

            .hero h2 {
                font-size: 20px;
            }

            .section {
                padding: 60px 5%;
            }

            .section-title {
                font-size: 32px;
            }

            .actor img {
                height: 350px;
            }

            .review {
                margin: 50px 5%;
                padding: 25px;
            }

        }

        @media (max-width: 450px) {

            .logo {
                font-size: 22px;
            }

            .nav-links a {
                font-size: 13px;
            }

            .hero h1 {
                font-size: 45px;
            }

            .hero-buttons .button {
                margin-bottom: 10px;
            }

        }

    </style>

</head>


<body>


<!-- ================= NAVBAR ================= -->

<nav class="navbar">

    <div class="logo">
        DRISHYAM
    </div>

    <ul class="nav-links">

        <li>
            <a href="#home">Home</a>
        </li>

        <li>
            <a href="#about">About</a>
        </li>

        <li>
            <a href="#cast">Cast</a>
        </li>

        <li>
            <a href="#gallery">Gallery</a>
        </li>

        <li>
            <a href="#review">Review</a>
        </li>

    </ul>

</nav>


<!-- ================= HERO ================= -->

<section class="hero" id="home">

    <div class="hero-content">

        <h1>
            DRISHYAM
        </h1>

        <h2>
            The Story That Changed Everything
        </h2>

        <p>
            A gripping crime thriller about family, mystery,
            evidence and the lengths people will go to protect
            the ones they love.
        </p>

        <div class="hero-buttons">

            <a href="#cast" class="button">
                ⭐ Explore Cast
            </a>

            <a href="#gallery" class="button">
                📸 View Gallery
            </a>

        </div>

    </div>

</section>


<!-- ================= ABOUT ================= -->

<section class="section about" id="about">

    <h2 class="section-title">
        About The Movie
    </h2>

    <div class="about-container">

        <p>
            Drishyam is a Hindi crime thriller known for its
            suspenseful story and strong performances. The story
            follows Vijay Salgaonkar and his family as they face
            an extraordinary situation and attempt to protect
            their family from a difficult investigation.
        </p>

    </div>


    <div class="info-grid">

        <div class="info-card">

            <h3>Genre</h3>

            <p>
                Crime / Thriller
            </p>

        </div>


        <div class="info-card">

            <h3>Language</h3>

            <p>
                Hindi
            </p>

        </div>


        <div class="info-card">

            <h3>Release</h3>

            <p>
                2015
            </p>

        </div>


        <div class="info-card">

            <h3>Director</h3>

            <p>
                Nishikant Kamat
            </p>

        </div>

    </div>

</section>


<!-- ================= CAST ================= -->

<section class="section" id="cast">

    <h2 class="section-title">
        ⭐ Star Cast
    </h2>


    <div class="cast-container">


        <!-- AJAY DEVGN -->

        <div class="actor">

            <img
                src="https://upload.wikimedia.org/wikipedia/commons/6/6e/Ajay_Devgn_at_the_trailer_launch_of_%27Drishyam%27.jpg"
                alt="Ajay Devgn"
            >

            <div class="actor-content">

                <h3>
                    Ajay Devgn
                </h3>

                <p>
                    Vijay Salgaonkar
                </p>

            </div>

        </div>


        <!-- SHRIYA SARAN -->

        <div class="actor">

            <img
                src="https://upload.wikimedia.org/wikipedia/commons/6/6c/Shriya_Saran_at_the_screening_of_Tadap.jpg"
                alt="Shriya Saran"
            >

            <div class="actor-content">

                <h3>
                    Shriya Saran
                </h3>

                <p>
                    Nandini Salgaonkar
                </p>

            </div>

        </div>


        <!-- TABU -->

        <div class="actor">

            <img
                src="https://upload.wikimedia.org/wikipedia/commons/8/8e/Tabu_at_the_screening_of_Missing.jpg"
                alt="Tabu"
            >

            <div class="actor-content">

                <h3>
                    Tabu
                </h3>

                <p>
                    Meera Deshmukh
                </p>

            </div>

        </div>


        <!-- ISHITA DUTTA -->

        <div class="actor">

            <img
                src="https://upload.wikimedia.org/wikipedia/commons/7/7e/Ishita_Dutta_at_the_screening_of_Drusshyam.jpg"
                alt="Ishita Dutta"
            >

            <div class="actor-content">

                <h3>
                    Ishita Dutta
                </h3>

                <p>
                    Anju Salgaonkar
                </p>

            </div>

        </div>


    </div>

</section>


<!-- ================= GALLERY ================= -->

<section class="section gallery" id="gallery">

    <h2 class="section-title">
        📸 Movie Gallery
    </h2>


    <div class="gallery-grid">


        <div class="gallery-card">

            <img
                src="https://images.unsplash.com/photo-1485846234645-a62644f84728?auto=format&fit=crop&w=1000&q=80"
                alt="Movie camera"
                loading="lazy"
            >

        </div>


        <div class="gallery-card">

            <img
                src="https://images.unsplash.com/photo-1517604931442-7e0c8ed2963c?auto=format&fit=crop&w=1000&q=80"
                alt="Cinema"
                loading="lazy"
            >

        </div>


        <div class="gallery-card">

            <img
                src="https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?auto=format&fit=crop&w=1000&q=80"
                alt="Cinema screen"
                loading="lazy"
            >

        </div>


        <div class="gallery-card">

            <img
                src="https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?auto=format&fit=crop&w=1000&q=80"
                alt="Night scene"
                loading="lazy"
            >

        </div>


        <div class="gallery-card">

            <img
                src="https://images.unsplash.com/photo-1500534623283-312aade485b7?auto=format&fit=crop&w=1000&q=80"
                alt="Movie scene"
                loading="lazy"
            >

        </div>


        <div class="gallery-card">

            <img
                src="https://images.unsplash.com/photo-1484417894907-623942c8ee29?auto=format&fit=crop&w=1000&q=80"
                alt="Film production"
                loading="lazy"
            >

        </div>


    </div>

</section>


<!-- ================= REVIEW ================= -->

<section class="review" id="review">

    <h2>
        📰 Movie Review
    </h2>

    <p>
        Read more about the movie and its review.
    </p>

    <a
        class="button"
        href="https://timesofindia.indiatimes.com/entertainment/hindi/movie-reviews/drishyam-the-conclusion/movie-review/134629821.cms"
        target="_blank"
        rel="noopener noreferrer">

        Read Review

    </a>

</section>


<!-- ================= FOOTER ================= -->

<footer>

    <p>

        © 2026

        <span>
            Drishyam Movie Website
        </span>

        | Jenkins + Tomcat Project

    </p>

</footer>


</body>

</html>
