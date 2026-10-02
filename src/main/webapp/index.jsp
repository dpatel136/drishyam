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

/* ================= RESET ================= */

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

    background: rgba(5,5,5,0.97);

    border-bottom: 1px solid #333;
}

.logo {
    color: #ffcc00;
    font-size: 28px;
    font-weight: bold;
    letter-spacing: 4px;
}

.nav-links {
    display: flex;
    list-style: none;
    gap: 25px;
}

.nav-links a {
    color: #fff;
    text-decoration: none;
    font-size: 14px;
    transition: .3s;
}

.nav-links a:hover {
    color: #ffcc00;
}


/* ================= HERO ================= */

.hero {

    min-height: 90vh;

    display: flex;
    align-items: center;

    padding: 80px 7%;

    background:
        linear-gradient(
            90deg,
            rgba(0,0,0,.92),
            rgba(0,0,0,.65),
            rgba(0,0,0,.30)
        ),
        url("https://upload.wikimedia.org/wikipedia/commons/4/4c/Drishyam_star_cast_Ajay_Devgn%2C_Shriya_Saran_and_Tabu_with_suresh_sharma.jpg");

    background-size: cover;
    background-position: center;
}

.hero-content {
    max-width: 650px;
}

.hero h1 {
    font-size: clamp(55px, 9vw, 100px);

    color: #ffcc00;

    letter-spacing: 7px;

    text-shadow:
        0 0 15px #ff9900,
        0 0 40px rgba(255,204,0,.4);
}

.hero h2 {
    font-size: 25px;
    margin-top: 15px;
}

.hero p {
    color: #ddd;
    line-height: 1.8;
    margin-top: 20px;
}

.button {

    display: inline-block;

    margin-top: 25px;
    margin-right: 10px;

    padding: 14px 25px;

    background: #ffcc00;

    color: #000;

    text-decoration: none;

    font-weight: bold;

    border-radius: 6px;

    transition: .3s;
}

.button:hover {

    background: #fff;

    transform: translateY(-3px);
}


/* ================= COMMON ================= */

.section {

    padding: 80px 6%;
}

.section-title {

    text-align: center;

    color: #ffcc00;

    font-size: 40px;

    margin-bottom: 45px;
}


/* ================= ABOUT ================= */

.about {

    background: #0b0b0b;

    text-align: center;
}

.about-text {

    max-width: 950px;

    margin: auto;

    color: #bbb;

    line-height: 1.9;

    font-size: 17px;
}


/* ================= INFO ================= */

.info-grid {

    max-width: 1000px;

    margin: 40px auto 0;

    display: grid;

    grid-template-columns:
        repeat(auto-fit,minmax(180px,1fr));

    gap: 20px;
}

.info-card {

    background: #151515;

    border: 1px solid #333;

    border-radius: 12px;

    padding: 25px;

    text-align: center;
}

.info-card h3 {

    color: #ffcc00;

    margin-bottom: 10px;
}

.info-card p {

    color: #aaa;
}


/* ================= STAR CAST ================= */

.cast-container {

    max-width: 1150px;

    margin: auto;

    display: grid;

    grid-template-columns:
        repeat(auto-fit,minmax(230px,1fr));

    gap: 25px;
}

.actor {

    background: #111;

    border: 1px solid #333;

    border-radius: 15px;

    overflow: hidden;

    text-align: center;

    transition: .4s;

    min-height: 430px;
}

.actor:hover {

    transform: translateY(-10px);

    border-color: #ffcc00;

    box-shadow:
        0 10px 35px rgba(255,204,0,.25);
}


/* IMPORTANT: CAST IMAGES */

.actor img {

    width: 100%;

    height: 330px;

    object-fit: cover;

    object-position: center;

    display: block;

    background: #222;
}

.actor-content {

    padding: 18px;
}

.actor h3 {

    color: #ffcc00;

    font-size: 22px;
}

.actor p {

    color: #aaa;

    margin-top: 7px;
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
        repeat(auto-fit,minmax(250px,1fr));

    gap: 20px;
}

.gallery-card {

    height: 280px;

    overflow: hidden;

    border-radius: 15px;

    border: 1px solid #333;

    background: #111;
}

.gallery-card img {

    width: 100%;

    height: 100%;

    object-fit: cover;

    display: block;

    transition: .5s;
}

.gallery-card:hover img {

    transform: scale(1.08);
}


/* ================= MY PROJECT ================= */

.project-section {

    background: #050505;
}

.project-container {

    max-width: 1050px;

    margin: auto;

    background: #111;

    padding: 20px;

    border-radius: 18px;

    border: 1px solid #333;

    box-shadow:
        0 15px 50px rgba(0,0,0,.6);
}

.project-image {

    width: 100%;

    max-height: 650px;

    object-fit: cover;

    display: block;

    border-radius: 12px;

    border: 2px solid #ffcc00;
}

.project-caption {

    text-align: center;

    padding: 25px 10px 10px;
}

.project-caption h3 {

    color: #ffcc00;

    font-size: 26px;

    margin-bottom: 10px;
}

.project-caption p {

    color: #aaa;

    line-height: 1.8;
}


/* ================= REVIEW ================= */

.review {

    max-width: 1000px;

    margin: 70px auto;

    padding: 40px;

    background: #111;

    border: 1px solid #333;

    border-radius: 15px;

    text-align: center;
}

.review h2 {

    color: #ffcc00;
}

.review p {

    color: #aaa;

    margin-top: 15px;
}


/* ================= FOOTER ================= */

footer {

    text-align: center;

    padding: 30px;

    background: #020202;

    color: #777;

    border-top: 1px solid #222;
}

footer span {

    color: #ffcc00;
}


/* ================= MOBILE ================= */

@media(max-width:700px) {

    .navbar {

        flex-direction: column;

        gap: 15px;
    }

    .nav-links {

        flex-wrap: wrap;

        justify-content: center;

        gap: 13px;
    }

    .hero {

        min-height: 75vh;

        padding: 70px 6%;
    }

    .hero h1 {

        font-size: 50px;

        letter-spacing: 3px;
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

        height: 360px;
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
            <a href="#project">My Project</a>
        </li>

        <li>
            <a href="#review">Review</a>
        </li>

    </ul>

</nav>


<!-- ================= HERO ================= -->

<section class="hero" id="home">

    <div class="hero-content">

        <h1>DRISHYAM</h1>

        <h2>
            The Story That Changed Everything
        </h2>

        <p>
            A gripping crime thriller about family,
            mystery, evidence and the lengths people
            will go to protect the ones they love.
        </p>

        <a href="#cast" class="button">
            ⭐ Explore Cast
        </a>

        <a href="#gallery" class="button">
            📸 View Gallery
        </a>

    </div>

</section>


<!-- ================= ABOUT ================= -->

<section class="section about" id="about">

    <h2 class="section-title">
        About The Movie
    </h2>

    <p class="about-text">

        Drishyam is a Hindi crime thriller directed by
        Nishikant Kamat. The story follows Vijay Salgaonkar
        and his family as they face a serious situation and
        try to protect their family.

    </p>


    <div class="info-grid">

        <div class="info-card">

            <h3>Genre</h3>

            <p>Crime / Thriller</p>

        </div>


        <div class="info-card">

            <h3>Language</h3>

            <p>Hindi</p>

        </div>


        <div class="info-card">

            <h3>Release</h3>

            <p>2015</p>

        </div>


        <div class="info-card">

            <h3>Director</h3>

            <p>Nishikant Kamat</p>

        </div>

    </div>

</section>


<!-- ================= STAR CAST ================= -->

<section class="section" id="cast">

    <h2 class="section-title">
        ⭐ Star Cast
    </h2>


    <div class="cast-container">


        <!-- AJAY -->

        <div class="actor">

            <img
                src="https://upload.wikimedia.org/wikipedia/commons/b/b3/Drishyam_Actor_Ajay_Devgn_with_suresh_sharma.JPG"
                alt="Ajay Devgn"
                loading="lazy">

            <div class="actor-content">

                <h3>
                    Ajay Devgn
                </h3>

                <p>
                    Vijay Salgaonkar
                </p>

            </div>

        </div>


        <!-- SHRIYA -->

        <div class="actor">

            <img
                src="https://upload.wikimedia.org/wikipedia/commons/7/72/Shriya_Saran.jpg"
                alt="Shriya Saran"
                loading="lazy">

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
                src="https://upload.wikimedia.org/wikipedia/commons/f/f3/Tabu_in_2024.jpg"
                alt="Tabu"
                loading="lazy">

            <div class="actor-content">

                <h3>
                    Tabu
                </h3>

                <p>
                    Meera Deshmukh
                </p>

            </div>

        </div>


        <!-- ISHITA -->

        <div class="actor">

            <img
                src="https://upload.wikimedia.org/wikipedia/commons/1/14/Ishita_Dutta_at_the_meet_of_film_%27Drishyam%27_at_PVR_Juhu.jpg"
                alt="Ishita Dutta"
                loading="lazy">

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
                src="https://upload.wikimedia.org/wikipedia/commons/0/0f/Drishyam_star_cast_Ajay_Devgn%2C_Shriya_Saran_and_Tabu_with_suresh_sharma.jpg"
                alt="Drishyam Star Cast"
                loading="lazy">

        </div>


        <div class="gallery-card">

            <img
                src="https://upload.wikimedia.org/wikipedia/commons/b/b3/Drishyam_Actor_Ajay_Devgn_with_suresh_sharma.JPG"
                alt="Ajay Devgn Drishyam"
                loading="lazy">

        </div>


        <div class="gallery-card">

            <img
                src="https://upload.wikimedia.org/wikipedia/commons/1/13/Drishyam_actres_Tabu_with_suresh_sharma.JPG"
                alt="Tabu Drishyam"
                loading="lazy">

        </div>


        <div class="gallery-card">

            <img
                src="https://upload.wikimedia.org/wikipedia/commons/1/14/Ishita_Dutta_at_the_meet_of_film_%27Drishyam%27_at_PVR_Juhu.jpg"
                alt="Ishita Dutta Drishyam"
                loading="lazy">

        </div>


    </div>

</section>


<!-- ================= YOUR LAPTOP PHOTO ================= -->

<section class="section project-section"
         id="project">

    <h2 class="section-title">

        💻 My Drishyam Project

    </h2>


    <div class="project-container">

        <img
            src="${pageContext.request.contextPath}/images/my-project.jpg"
            alt="My Drishyam Website Project"
            class="project-image">


        <div class="project-caption">

            <h3>
                Drishyam Movie Website
            </h3>

            <p>

                Dynamic and responsive movie website
                developed using JSP, HTML and CSS and
                deployed on Apache Tomcat through Jenkins.

            </p>

        </div>

    </div>

</section>


<!-- ================= REVIEW ================= -->

<section class="review"
         id="review">

    <h2>
        📰 Movie Review
    </h2>

    <p>
        Read the movie review for more information.
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

        | Jenkins + Tomcat

    </p>

</footer>


</body>

</html>
