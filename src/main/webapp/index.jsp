<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Drishyam | Movie Experience</title>

<style>
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap');

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

html{
    scroll-behavior:smooth;
}

body{
    font-family:'Inter',sans-serif;
    background:#080808;
    color:#fff;
    overflow-x:hidden;
}

body.modal-open{
    overflow:hidden;
}

/* ================= NAVBAR ================= */

.navbar{
    position:fixed;
    top:0;
    left:0;
    width:100%;
    z-index:1000;
    padding:18px 6%;
    display:flex;
    align-items:center;
    justify-content:space-between;
    transition:.4s;
}

.navbar.scrolled{
    background:rgba(5,5,5,.95);
    backdrop-filter:blur(15px);
    padding:13px 6%;
    box-shadow:0 5px 25px rgba(0,0,0,.5);
}

.logo{
    font-size:28px;
    font-weight:800;
    letter-spacing:4px;
    color:#e50914;
}

.nav-links{
    display:flex;
    list-style:none;
    gap:30px;
}

.nav-links a{
    color:#fff;
    text-decoration:none;
    font-size:14px;
    font-weight:600;
    transition:.3s;
}

.nav-links a:hover{
    color:#e50914;
}

.menu-btn{
    display:none;
    border:0;
    background:none;
    color:white;
    font-size:28px;
    cursor:pointer;
}

/* ================= HERO ================= */

.hero{
    min-height:100vh;
    position:relative;
    display:flex;
    align-items:center;
    padding:120px 7%;
    background:
        linear-gradient(90deg,#050505 0%,rgba(5,5,5,.92) 25%,rgba(5,5,5,.55) 60%,rgba(5,5,5,.2)),
        url("https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?auto=format&fit=crop&w=2200&q=90");
    background-size:cover;
    background-position:center;
}

.hero-content{
    max-width:650px;
    animation:heroIn 1.2s ease;
}

@keyframes heroIn{
    from{
        opacity:0;
        transform:translateY(40px);
    }
    to{
        opacity:1;
        transform:translateY(0);
    }
}

.badge{
    display:inline-block;
    padding:8px 14px;
    background:#e50914;
    border-radius:4px;
    font-size:12px;
    font-weight:700;
    margin-bottom:20px;
}

.hero h1{
    font-size:clamp(55px,10vw,120px);
    letter-spacing:8px;
    line-height:.95;
    margin-bottom:25px;
}

.hero h1 span{
    color:#e50914;
}

.hero-info{
    display:flex;
    gap:15px;
    flex-wrap:wrap;
    color:#ddd;
    margin-bottom:22px;
    font-size:14px;
}

.hero p{
    color:#ccc;
    line-height:1.8;
    margin-bottom:30px;
}

.hero-buttons{
    display:flex;
    gap:15px;
}

.btn{
    border:0;
    padding:14px 24px;
    border-radius:5px
