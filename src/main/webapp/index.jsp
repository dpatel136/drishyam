<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Drishyam | Official Fan Website</title>

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: Arial, Helvetica, sans-serif;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      background: #080808;
      color: white;
    }

    /* NAVBAR */
    nav {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      padding: 18px 7%;
      display: flex;
      justify-content: space-between;
      align-items: center;
      background: rgba(0, 0, 0, 0.85);
      z-index: 1000;
      backdrop-filter: blur(10px);
    }

    .logo {
      font-size: 28px;
      font-weight: bold;
      letter-spacing: 3px;
      color: #e50914;
    }

    nav ul {
      display: flex;
      gap: 30px;
      list-style: none;
    }

    nav a {
      color: white;
      text-decoration: none;
      font-size: 15px;
      transition: 0.3s;
    }

    nav a:hover {
      color: #e50914;
    }

    /* HERO */
    .hero {
      min-height: 100vh;
      display: flex;
      align-items: center;
      padding: 100px 7%;
      position: relative;
      overflow: hidden;

      background:
        linear-gradient(
          90deg,
          rgba(0,0,0,0.95) 0%,
          rgba(0,0,0,0.75) 45%,
          rgba(0,0,0,0.25) 100%
        ),
        url("https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?auto=format&fit=crop&w=2000&q=80");

      background-size: cover;
      background-position: center;
    }

    .hero-content {
      max-width: 650px;
    }

    .hero h1 {
      font-size: clamp(55px, 9vw, 110px);
      letter-spacing: 8px;
      margin-bottom: 10px;
      text-transform: uppercase;
    }

    .hero h2 {
      color: #e50914;
      margin-bottom: 20px;
      font-size: 24px;
    }

    .hero p {
      line-height: 1.8;
      color: #ddd;
      margin-bottom: 30px;
      font-size: 17px;
    }

    .buttons {
      display: flex;
      gap: 15px;
    }

    .btn {
      padding: 14px 25px;
      border-radius: 4px;
      text-decoration: none;
      font-weight: bold;
      transition: 0.3s;
    }

    .primary {
      background: #e50914;
      color: white;
    }

    .secondary {
      background: rgba(255,255,255,0.15);
      color: white;
      border: 1px solid #777;
    }

    .btn:hover {
      transform: translateY(-3px);
      opacity: 0.85;
    }

    /* GENERAL */
    section {
      padding: 90px 7%;
    }

    .section-title {
      text-align: center;
      font-size: 38px;
      margin-bottom: 50px;
    }

    .section-title span {
      color: #e50914;
    }

    /* ABOUT */
    .about {
      background: #101010;
    }

    .about-container {
      max-width: 1000px;
      margin: auto;
      text-align: center;
    }

    .about-container p {
      color: #ccc;
      line-height: 1.9;
      font-size: 17px;
    }

    .movie-info {
      margin-top: 35px;
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 20px;
    }

    .info-box {
      background: #181818;
      padding: 25px;
      border-radius: 8px;
      border: 1px solid #292929;
    }

    .info-box h3 {
      color: #e50914;
      margin-bottom: 10px;
    }

    .info-box p {
      font-size: 14px;
    }

    /* CAST */
    .cast {
      background: #080808;
    }

    .cast-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 25px;
    }

    .cast-card {
      background: #151515;
      border-radius: 10px;
      overflow: hidden;
      transition: 0.4s;
      border: 1px solid #252525;
    }

    .cast-card:hover {
      transform: translateY(-10px);
      border-color: #e50914;
      box-shadow: 0 10px 30px
