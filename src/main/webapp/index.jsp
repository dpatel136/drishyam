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
    z-index: 999;

    display: flex;
    justify-content: space-between;
    align-items: center;

    padding: 18px 7%;

    background: rgba(0,0,0,0.96);

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
    color: white;
    text-decoration: none;
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
    text-shadow: 0 0 30px rgba(255,204,0,0.5);
}

.hero h2 {
    margin-top: 20px;
    font-size: 25px;
}

.hero p {
    margin-top: 20px;
    color: #ccc;
    font-size: 17px;
    line-height: 1.8;
}

.button {
    display: inline-block;

    margin-top: 25px;
    margin-right: 10px;

    padding: 14px 25px;

    background: #ffcc00;
    color: #050505;

    text-decoration: none;
    font-weight: bold;

    border-radius: 5px;

    transition: 0.3s;
}

.button:hover {
    background: white;
    transform: translateY(-3px);
}


/* ================= COMMON ================= */

.section {
    padding: 80px 7%;
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


/* ================= MOVIE DETAILS ================= */

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
        0 10px 35px rgba(255,204,0,0.2);
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


/* ================= MY PROJECT PHOTO ================= */

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
        0 15px 50px rgba(0,0,0,0.6);
}

.project-image {

    width: 100%;

    max-height: 650px;

    object-fit: cover;

    display: block;

    border-radius: 12px;

    border: 2px solid #ffcc00;

    transition: 0.5s;
}

.project-image:hover {

    transform: scale(1.02);

    box-shadow:
        0 0 35px rgba(255,204,0,0.35);
}

.project-caption {

    text-align: center;

    padding: 25px 10px
