<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Drishyam | Movie Website</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    scroll-behavior:smooth;
}

body{
    font-family:Arial,Helvetica,sans-serif;
    background:#050505;
    color:white;
    line-height:1.6;
}

/* ================= NAVBAR ================= */

.navbar{
    position:sticky;
    top:0;
    z-index:1000;

    display:flex;
    justify-content:space-between;
    align-items:center;

    padding:18px 7%;

    background:rgba(5,5,15,.95);
    backdrop-filter:blur(10px);

    border-bottom:1px solid rgba(255,165,0,.2);
}

.logo{
    color:#ff9d00;
    font-size:28px;
    font-weight:900;
    letter-spacing:3px;
}

.nav-links{
    display:flex;
    gap:25px;
    list-style:none;
}

.nav-links a{
    color:white;
    text-decoration:none;
    font-size:14px;
    transition:.3s;
}

.nav-links a:hover{
    color:#ffae00;
}

/* ================= HERO ================= */

.hero{
    min-height:90vh;

    display:flex;
    align-items:center;

    padding:80px 8%;

    position:relative;
    overflow:hidden;

    background:
        linear-gradient(
            90deg,
            rgba(0,0,0,.78) 0%,
            rgba(0,0,0,.42) 45%,
            rgba(0,0,0,.10) 100%
        ),
        url("PASTE-YOUR-POSTER-URL-HERE");

    background-size:cover;
    background-position:center;
    background-repeat:no-repeat;
}

.hero-content{
    max-width:700px;
    position:relative;
    z-index:2;
}

.hero h1{
    font-size:clamp(55px,9vw,110px);
    color:#ffae00;
    line-height:1;
    letter-spacing:5px;

    text-shadow:
        0 0 10px #ffae00,
        0 0 30px rgba(255,174,0,.6);
}

.hero h2{
    margin-top:25px;
    font-size:clamp(22px,4vw,38px);
}

.hero p{
    margin-top:20px;
    max-width:650px;
    color:#ddd;
    font-size:18px;
}

.buttons{
    margin-top:35px;
    display:flex;
    gap:15px;
    flex-wrap:wrap;
}

.btn{
    display:inline-block;
    padding:14px 28px;

    background:#ffae00;
    color:#111;

    text-decoration:none;
    font-weight:bold;

    border-radius:8px;
    transition:.3s;
}

.btn:hover{
    transform:translateY(-4px);
    background:#ffc400;
    box-shadow:0 8px 25px rgba(255,174,0,.35);
}

.btn.secondary{
    background:transparent;
    color:white;
    border:1px solid #ffae00;
}

/* ================= SECTIONS ================= */

.section{
    padding:90px 8%;
}

.section-title{
    text-align:center;
    font-size:38px;
    margin-bottom:50px;
    color:#ffae00;
}

/* ================= ABOUT ================= */

.about{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:50px;
    align-items:center;
}

.about-text h2{
    font-size:38px;
    color:#ffae00;
    margin-bottom:20px;
}

.about-text p{
    color:#ccc;
    font-size:17px;
}

.poster-container{
    text-align:center;
}

.poster-container img{
    width:100%;
    max-width:600px;

    border-radius:18px;

    box-shadow:
        0 20px 50px rgba(0,0,0,.7),
        0 0 30px rgba(255,174,0,.15);
}

/* ================= INFO ================= */

.info-grid{
    margin-top:50px;

    display:grid;
    grid-template-columns:
        repeat(auto-fit,minmax(200px,1fr));

    gap:20px;
}

.info-card{
    background:#11131d;
    padding:25px;
    border-radius:15px;

    text-align:center;

    border:1px solid rgba(255,174,0,.15);
    transition:.3s;
}

.info-card:hover{
    transform:translateY(-8px);
    border-color:#ffae00;
}

.info-card h3{
    color:#ffae00;
    margin-bottom:10px;
}

/* ================= CAST ================= */

.cast-container{
    display:grid;
    grid-template-columns:
        repeat(auto-fit,minmax(220px,1fr));

    gap:30px;
}

.actor{
    background:#11131d;
    border-radius:18px;
    overflow:hidden;

    text-align:center;

    border:1px solid rgba(255,174,0,.15);
    transition:.3s;
}

.actor:hover{
    transform:translateY(-10px);
    border-color:#ffae00;
    box-shadow:0 15px 35px rgba(0,0,0,.5);
}

.actor img{
    width:100%;
    height:300px;

    object-fit:cover;
    display:block;

    background:#222;
}

.actor h3{
    color:#ffae00;
    margin-top:18px;
}

.actor p{
    color:#aaa;
    padding-bottom:20px;
}

/* ================= GALLERY ================= */

.gallery-grid{
    display:grid;

    grid-template-columns:
        repeat(auto-fit,minmax(280px,1fr));

    gap:25px;
}

.gallery-card{
    overflow:hidden;
    border-radius:16px;

    background:#11131d;

    border:1px solid rgba(255,174,0,.15);
    transition:.3s;
}

.gallery-card:hover{
    transform:translateY(-8px);
    border-color:#ffae00;
}

.gallery-card img{
    width:100%;
    height:280px;

    object-fit:cover;
    display:block;
}

.gallery-card.poster img{
    object-fit:contain;
    background:#000;
}

/* ================= PROJECT ================= */

.project-section{
    background:#080812;
}

.project-container{
    max-width:1000px;
    margin:auto;
    text-align:center;
}

.project-container h2{
    color:#ffae00;
    font-size:38px;
    margin-bottom:20px;
}

.project-container p{
    color:#bbb;
    margin-bottom:30px;
}

.project-image{
    width:100%;
    max-width:900px;

    border-radius:18px;

    border:2px solid rgba(255,174,0,.3);

    box-shadow:0 20px 50px rgba(0,0,0,.6);
}

/* ================= REVIEW ================= */

.review{
    text-align:center;
    max-width:900px;
    margin:auto;
}

.review p{
    font-size:21px;
    color:#ddd;
    margin-bottom:30px;
}

.review a{
    color:#ffae00;
    text-decoration:none;
    font-weight:bold;
}

/* ================= FOOTER ================= */

footer{
    text-align:center;

    padding:30px;

    background:#030303;

    color:#777;

    border-top:1px solid rgba(255,174,0,.15);
}

footer span{
    color:#ffae00;
}

/* ================= MOBILE ================= */

@media(max-width:800px){

    .navbar{
        flex-direction:column;
        gap:15px;
    }

    .nav-links{
        flex-wrap:wrap;
        justify-content:center;
        gap:15px;
    }

    .hero{
        min-height:80vh;
        padding:60px 7%;
    }

    .hero h1{
        font-size:55px;
    }

    .hero p{
        font-size:16px;
    }

    .about{
        grid-template-columns:1fr;
    }

    .section{
        padding:65px 6%;
    }

    .section-title{
        font-size:30px;
    }

    .actor img{
        height:330px;
    }
}

@media(max-width:500px){

    .logo{
        font-size:22px;
    }

    .nav-links{
        gap:10px;
    }

    .nav-links a{
        font-size:12px;
    }

    .hero h1{
        font-size:45px;
    }

    .buttons{
        flex-direction:column;
    }

    .btn{
        text-align:center;
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
        <li><a href="#home">Home</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="#cast">Cast</a></li>
        <li><a href="#gallery">Gallery</a></li>
        <li><a href="#project">My Project</a></li>
        <li><a href="#review">Review</a></li>
    </ul>

</nav>


<!-- ================= HERO ================= -->

<section id="home" class="hero">

    <div class="hero-content">

        <h1>DRISHYAM</h1>

        <h2>The Story That Changed Everything</h2>

        <p>
            A gripping crime thriller about family, mystery,
            evidence and the lengths people go to protect
            the ones they love.
        </p>

        <div class="buttons">

            <a href="#cast" class="btn">
                ⭐ Explore Cast
            </a>

            <a href="#gallery" class="btn secondary">
                🖼 View Gallery
            </a>

        </div>

    </div>

</section>


<!-- ================= ABOUT ================= -->

<section id="about" class="section">

    <div class="about">

        <div class="about-text">

            <h2>About Drishyam</h2>

            <p>
                Drishyam is a suspenseful crime thriller that
                explores family, investigation, evidence and
                the consequences of protecting loved ones.
            </p>

            <br>

            <p>
                The story follows Vijay Salgaonkar and his family
                as they become involved in a mysterious incident
                that leads to an intense police investigation.
            </p>

        </div>

        <div class="poster-container">

            <img
                src="PASTE-YOUR-POSTER-URL-HERE"
                alt="Drishyam The Conclusion Poster">

        </div>

    </div>


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
            <h3>Director</h3>
            <p>Abhishek Pathak</p>
        </div>

        <div class="info-card">
            <h3>Lead Actor</h3>
            <p>Ajay Devgn</p>
        </div>

    </div>

</section>


<!-- ================= CAST ================= -->

<section id="cast" class="section">

    <h2 class="section-title">
        Star Cast
    </h2>

    <div class="cast-container">

        <div class="actor">

            <img
                src="https://upload.wikimedia.org/wikipedia/commons/b/b3/Drishyam_Actor_Ajay_Devgn_with_suresh_sharma.JPG"
                alt="Ajay Devgn">

            <h3>Ajay Devgn</h3>
            <p>Vijay Salgaonkar</p>

        </div>


        <div class="actor">

            <img
                src="https://upload.wikimedia.org/wikipedia/commons/7/72/Shriya_Saran.jpg"
                alt="Shriya Saran">

            <h3>Shriya Saran</h3>
            <p>Nandini Salgaonkar</p>

        </div>


        <div class="actor">

            <img
                src="https://upload.wikimedia.org/wikipedia/commons/1/13/Drishyam_actres_Tabu_with_suresh_sharma.JPG"
                alt="Tabu">

            <h3>Tabu</h3>
            <p>Meera Deshmukh</p>

        </div>


        <div class="actor">

            <img
                src="https://upload.wikimedia.org/wikipedia/commons/1/14/Ishita_Dutta_at_the_meet_of_film_%27Drishyam%27_at_PVR_Juhu.jpg"
                alt="Ishita Dutta">

            <h3>Ishita Dutta</h3>
            <p>Anju Salgaonkar</p>

        </div>

    </div>

</section>


<!-- ================= GALLERY ================= -->

<section id="gallery" class="section">

    <h2 class="section-title">
        Drishyam Gallery
    </h2>

    <div class="gallery-grid">

        <div class="gallery-card poster">

            <img
                src="PASTE-YOUR-POSTER-URL-HERE"
                alt="Drishyam The Conclusion Poster">

        </div>


        <div class="gallery-card">

            <img
                src="https://upload.wikimedia.org/wikipedia/commons/0/0f/Drishyam_star_cast_Ajay_Devgn%2C_Shriya_Saran_and_Tabu_with_suresh_sharma.jpg"
                alt="Drishyam Star Cast">

        </div>


        <div class="gallery-card">

            <img
                src="https://upload.wikimedia.org/wikipedia/commons/b/b3/Drishyam_Actor_Ajay_Devgn_with_suresh_sharma.JPG"
                alt="Ajay Devgn">

        </div>


        <div class="gallery-card">

            <img
                src="https://upload.wikimedia.org/wikipedia/commons/1/13/Drishyam_actres_Tabu_with_suresh_sharma.JPG"
                alt="Tabu">

        </div>


        <div class="gallery-card">

            <img
                src="https://upload.wikimedia.org/wikipedia/commons/1/14/Ishita_Dutta_at_the_meet_of_film_%27Drishyam%27_at_PVR_Juhu.jpg"
                alt="Ishita Dutta">

        </div>

    </div>

</section>


<!-- ================= MY PROJECT ================= -->

<section id="project" class="section project-section">

    <div class="project-container">

        <h2>My Project</h2>

        <p>
            This responsive Drishyam movie website was developed
            using JSP, HTML, CSS and Apache Tomcat and deployed
            through a Jenkins CI/CD pipeline.
        </p>

        <img
            class="project-image"
            src="${pageContext.request.contextPath}/images/my-project.jpg"
            alt="My Drishyam Website Project">

    </div>

</section>


<!-- ================= REVIEW ================= -->

<section id="review" class="section">

    <div class="review">

        <h2 class="section-title">
            Movie Review
        </h2>

        <p>
            "Crowd-pleasing thrills, mounting tension,
            but a tiring finish."
        </p>

    </div>

</section>


<!-- ================= FOOTER ================= -->

<footer>

    <p>
        © 2026 <span>Drishyam Movie Website</span>
        | Developed with JSP & Apache Tomcat
    </p>

</footer>

</body>
</html>
