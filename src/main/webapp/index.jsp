<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
/* EXACT Drishyam image embedded inside this JSP */
String drishyamPoster =
    "data:image/png;base64,[YAHAN AAPKI EXACT IMAGE KA BASE64 HAI]";
%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Drishyam | The Conclusion</title>

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    scroll-behavior: smooth;
}

body {
    font-family: Arial, Helvetica, sans-serif;
    background: #050505;
    color: white;
}

/* NAVBAR */
.navbar {
    position: sticky;
    top: 0;
    z-index: 1000;

    display: flex;
    justify-content: space-between;
    align-items: center;

    padding: 18px 7%;

    background: rgba(5,5,15,0.96);
    backdrop-filter: blur(10px);

    border-bottom: 1px solid rgba(255,165,0,0.2);
}

.logo {
    color: #ff9d00;
    font-size: 28px;
    font-weight: 900;
    letter-spacing: 3px;
}

.nav-links {
    display: flex;
    gap: 25px;
    list-style: none;
}

.nav-links a {
    color: white;
    text-decoration: none;
    font-weight: 600;
}

.nav-links a:hover {
    color: #ffae00;
}

/* EXACT IMAGE AT START */
.hero-photo {
    width: 100%;
    background: #000;
    overflow: hidden;
}

.hero-photo img {
    display: block;
    width: 100%;
    height: auto;
    max-height: 720px;
    object-fit: cover;
}

/* HERO TEXT */
.hero-content {
    padding: 55px 8%;
    text-align: center;
    background: linear-gradient(180deg, #090909, #050505);
}

.hero-content h1 {
    font-size: clamp(45px, 7vw, 90px);
    color: #ffae00;
    line-height: 1;
    letter-spacing: 5px;
}

.hero-content h2 {
    margin-top: 18px;
    font-size: 34px;
}

.hero-content p {
    margin: 18px auto 0;
    max-width: 700px;
    color: #ccc;
    font-size: 17px;
    line-height: 1.7;
}

.buttons {
    margin-top: 28px;
    display: flex;
    justify-content: center;
    gap: 15px;
}

.btn {
    display: inline-block;
    padding: 14px 28px;
    background: #ffae00;
    color: #111;
    text-decoration: none;
    font-weight: bold;
    border-radius: 8px;
}

.btn:hover {
    background: #ffc14d;
}

/* SECTIONS */
.section {
    padding: 85px 8%;
}

.section-title {
    text-align: center;
    font-size: 38px;
    margin-bottom: 50px;
    color: #ffae00;
}

/* ABOUT */
.about {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 50px;
    align-items: center;
}

.about-text h2 {
    font-size: 38px;
    color: #ffae00;
    margin-bottom: 20px;
}

.about-text p {
    color: #ccc;
    font-size: 17px;
    line-height: 1.8;
    margin-bottom: 15px;
}

.poster-container {
    text-align: center;
}

.poster-container img {
    width: 100%;
    max-width: 650px;
    border-radius: 18px;
    box-shadow: 0 20px 50px rgba(0,0,0,0.7);
}

/* MOBILE */
@media(max-width:768px) {

    .navbar {
        flex-direction: column;
        gap: 15px;
    }

    .nav-links {
        gap: 12px;
        flex-wrap: wrap;
        justify-content: center;
    }

    .hero-photo img {
        width: 100%;
        height: auto;
    }

    .about {
        grid-template-columns: 1fr;
    }

    .hero-content h1 {
        font-size: 50px;
    }

}

</style>
</head>

<body>

<!-- NAVBAR -->

<nav class="navbar">

    <div class="logo">
        DRISHYAM
    </div>

    <ul class="nav-links">

        <li><a href="#home">Home</a></li>

        <li><a href="#about">About</a></li>

        <li><a href="#cast">Cast</a></li>

        <li><a href="#gallery">Gallery</a></li>

        <li><a href="#project">My Project</a></li>

        <li><a href="#review">Review</a></li>

    </ul>

</nav>


<!-- EXACT UPLOADED PHOTOGRAPHY IMAGE -->

<section class="hero-photo" id="home">

    <img
        src="<%= drishyamPoster %>"
        alt="Drishyam The Conclusion">

</section>


<!-- HERO TEXT -->

<section class="hero-content">

    <h1>DRISHYAM</h1>

    <h2>The Conclusion</h2>

    <p>
        The final chapter of the Drishyam story.
        A family, a secret and a battle of minds.
    </p>

    <div class="buttons">

        <a href="#about" class="btn">
            Explore Movie
        </a>

        <a href="#gallery" class="btn">
            View Gallery
        </a>

    </div>

</section>


<!-- ABOUT -->

<section class="section" id="about">

    <h2 class="section-title">
        About The Movie
    </h2>

    <div class="about">

        <div class="about-text">

            <h2>
                Drishyam The Conclusion
            </h2>

            <p>
                Drishyam is a suspense thriller movie website
                created using JSP, HTML and CSS.
            </p>

            <p>
                The website showcases the movie story,
                star cast, gallery and project information.
            </p>

        </div>

        <div class="poster-container">

            <img
                src="<%= drishyamPoster %>"
                alt="Drishyam The Conclusion Poster">

        </div>

    </div>

</section>


<!-- GALLERY -->

<section class="section" id="gallery">

    <h2 class="section-title">
        Movie Gallery
    </h2>

    <div class="poster-container">

        <img
            src="<%= drishyamPoster %>"
            alt="Drishyam The Conclusion Gallery">

    </div>

</section>


<!-- CAST -->

<section class="section" id="cast">

    <h2 class="section-title">
        Star Cast
    </h2>

    <p style="text-align:center;color:#ccc;">
        Drishyam The Conclusion
    </p>

</section>


<!-- PROJECT -->

<section class="section" id="project">

    <h2 class="section-title">
        My Project
    </h2>

    <p style="text-align:center;color:#ccc;">
        Drishyam Movie Website
    </p>

</section>


<!-- REVIEW -->

<section class="section" id="review">

    <h2 class="section-title">
        Review
    </h2>

    <p style="text-align:center;color:#ccc;">
        A suspenseful movie experience.
    </p>

</section>

</body>
</html>
