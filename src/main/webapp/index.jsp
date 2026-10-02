<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

<title>Drishyam The Conclusion</title>

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    background: #000;
    color: white;
    font-family: Arial, sans-serif;
}

/* NAVBAR */

nav {
    height: 80px;
    background: #000;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 0 7%;
}

.logo {
    color: #ffd000;
    font-size: 30px;
    font-weight: bold;
}

nav a {
    color: white;
    text-decoration: none;
    margin-left: 30px;
}

/* POSTER */

.poster {
    width: 100%;
    text-align: center;
    background: #000;
}

.poster img {
    width: 100%;
    max-width: 1600px;
    height: auto;
    display: block;
    margin: auto;
}

/* HERO */

.hero {
    text-align: center;
    padding: 70px 20px;
}

.hero h1 {
    color: #ffd000;
    font-size: 60px;
}

.hero h2 {
    font-size: 30px;
    margin-top: 10px;
}

.hero p {
    margin-top: 25px;
    color: #ddd;
    font-size: 18px;
}

button {
    margin-top: 30px;
    padding: 15px 30px;
    background: #ffd000;
    border: none;
    border-radius: 5px;
    font-weight: bold;
}

</style>

</head>

<body>

<!-- NAVBAR -->

<nav>

    <div class="logo">
        DRISHYAM
    </div>

    <div>
        <a href="#home">Home</a>
        <a href="#about">About</a>
        <a href="#cast">Cast</a>
        <a href="#gallery">Gallery</a>
    </div>

</nav>


<!-- DRISHYAM REAL POSTER -->

<div class="poster" id="home">

    <img
        src="${pageContext.request.contextPath}/images/drishyam-poster.jpg"
        alt="Drishyam The Conclusion">

</div>


<!-- MOVIE DETAILS -->

<section class="hero">

    <h1>DRISHYAM</h1>

    <h2>The Conclusion</h2>

    <p>
        The final chapter of the Drishyam story.
        A family, a secret and a battle of minds.
    </p>

    <button>
        Explore Movie
    </button>

</section>


</body>
</html>
