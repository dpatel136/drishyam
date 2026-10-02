<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

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
}

html {
    scroll-behavior: smooth;
}

body {
    background: #050505;
    color: white;
    font-family: Arial, sans-serif;
}


/* ================= NAVBAR ================= */

.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;

    padding: 18px 7%;

    background: #000;

    position: sticky;
    top: 0;
    z-index: 1000;
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
}

.nav-links a:hover {
    color: #ffcc00;
}


/* ================= REAL START IMAGE ================= */

.start-image {
    width: 100%;
    background: #000;
}

.start-image img {
    width: 100%;
    height: auto;
    display: block;
}


/* ================= HERO CONTENT ================= */

.hero-content {
    text-align: center;
    padding: 60px 20px;
}

.hero-content h1 {
    color: #ffcc00;
    font-size: 70px;
    letter-spacing: 8px;
}

.hero-content h2 {
    margin-top: 15px;
    font-size: 30px;
}

.hero-content p {
    margin: 20px auto;
    max-width: 700px;
    color: #ccc;
    line-height: 1.7;
}

.button {
    display: inline-block;

    margin: 10px;

    padding: 14px 25px;

    background: #ffcc00;
    color: #000;

    text-decoration: none;
    font-weight: bold;

    border-radius: 5px;
}


/* ================= SECTION ================= */

.section {
    padding: 80px 7%;
}

.title {
    text-align: center;
    color: #ffcc00;
    font-size: 40px;
    margin-bottom: 40px;
}


/* ================= ABOUT ================= */

.about {
    max-width: 900px;
    margin: auto;
    text-align: center;
}

.about p {
    color: #bbb;
    font-size: 17px;
    line-height: 1.8;
}


/* ================= POSTER ================= */

.poster {
    display: block;

    width: 100%;
    max-width: 900px;

    margin: 40px auto;

    border-radius: 12px;
}


/* ================= CAST ================= */

.cast {
    text-align: center;
}

.cast h3 {
    color: #ffcc00;
    margin-top: 25px;
}

.cast p {
    color: #aaa;
}


/* ================= GALLERY ================= */

.gallery {
    background: #0b0b0b;
    text-align: center;
}

.gallery img {
    width: 100%;
    max-width: 900px;
    border-radius: 12px;
}


/* ================= MOBILE ================= */

@media(max-width:768px) {

    .navbar {
        flex-direction: column;
        gap: 15px;
    }

    .nav-links {
        flex-wrap: wrap;
        justify-content: center;
        gap: 12px;
    }

    .hero-content h1 {
        font-size: 45px;
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

    </ul>

</nav>


<!-- ================= REAL DRISHYAM IMAGE AT START ================= -->

<section class="start-image" id="home">

    <img
        src="${pageContext.request.contextPath}/images/drishyam-poster.png"
        alt="Drishyam The Conclusion">

</section>


<!-- ================= HERO TEXT ================= -->

<section class="hero-content">

    <h1>DRISHYAM</h1>

    <h2>The Conclusion</h2>

    <p>
        The final chapter of the Drishyam story.
        A family, a secret and a battle of minds.
    </p>

    <a href="#about" class="button">
        Explore Movie
    </a>

    <a href="#gallery" class="button">
        Gallery
    </a>

</section>


<!-- ================= ABOUT ================= -->

<section class="section" id="about">

    <h2 class="title">
        About The Movie
    </h2>

    <div class="about">

        <p>
            Drishyam The Conclusion is a suspense thriller
            movie website created using JSP, HTML and CSS.
        </p>

        <p>
            This website contains movie information,
            star cast and gallery.
        </p>

    </div>

    <img
        class="poster"
        src="${pageContext.request.contextPath}/images/drishyam-poster.png"
        alt="Drishyam Poster">

</section>


<!-- ================= CAST ================= -->

<section class="section cast" id="cast">

    <h2 class="title">
        Star Cast
    </h2>

    <h3>Ajay Devgn</h3>
    <p>Vijay Salgaonkar</p>

    <h3>Tabu</h3>
    <p>Meera Deshmukh</p>

    <h3>Shriya Saran</h3>
    <p>Nandini Salgaonkar</p>

</section>


<!-- ================= GALLERY ================= -->

<section class="section gallery" id="gallery">

    <h2 class="title">
        Movie Gallery
    </h2>

    <img
        src="${pageContext.request.contextPath}/images/drishyam-poster.png"
        alt="Drishyam Gallery">

</section>


</body>

</html>
