<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String drishyamPoster =
    "data:image/png;base64,PASTE_BASE64_IMAGE_HERE";
%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Drishyam | Movie Website</title>

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

    background: rgba(5,5,15,0.95);
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
}

/* HERO */

.hero {
    min-height: 90vh;

    display: flex;
    align-items: center;

    padding: 80px 8%;

    background-image:
        linear-gradient(
            90deg,
            rgba(0,0,0,0.70),
            rgba(0,0,0,0.25),
            rgba(0,0,0,0.05)
        ),
        url("<%= drishyamPoster %>");

    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
}

.hero-content {
    max-width: 650px;
}

.hero h1 {
    font-size: clamp(55px,9vw,110px);
    color: #ffae00;
    line-height: 1;
    letter-spacing: 5px;
}

.hero h2 {
    margin-top: 25px;
    font-size: 38px;
}

.hero p {
    margin-top: 20px;
    color: #ddd;
    font-size: 18px;
}

.buttons {
    margin-top: 35px;
    display: flex;
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

/* SECTION */

.section {
    padding: 90px 8%;
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
}

.poster-container {
    text-align: center;
}

.poster-container img {
    width: 100%;
    max-width: 600px;

    border-radius: 18px;

    box-shadow:
        0 20px 50px rgba(0,0,0,0.7),
        0 0 30px rgba(255,174,0,0.15);
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

    .hero {
        min-height: 75vh;
        padding: 50px 6%;
    }

    .hero h1 {
        font-size: 55px;
    }

    .about {
        grid-template-columns: 1fr;
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


<!-- HERO -->

<section class="hero" id="home">

    <div class="hero-content">

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

    </div>

</section>


<!-- ABOUT -->

<section class="section" id="about">

    <h2 class="section-title">
        About The Movie
    </h2>

    <div class="about">

        <div class="about-text">

            <h2>Drishyam The Conclusion</h2>

            <p>
                Drishyam is a suspense thriller movie website
                created using HTML, CSS, JavaScript and JSP.
            </p>

            <p>
                The website showcases the movie story,
                star cast, gallery and project information.
            </p>

        </div>

        <div class="poster-container">

            <img
                src="<%= drishyamPoster %>"
                alt="Drishyam The Conclusion">

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
            alt="Drishyam The Conclusion Poster">

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
