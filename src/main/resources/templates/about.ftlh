<!DOCTYPE html>
<html lang="ru">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="/lights.css" media="screen">
    <link rel="stylesheet" href="/about.css" media="screen">
    <link rel="stylesheet" href="/Main.css" media="screen">
    <link rel="stylesheet" href="/nicepage.css" media="screen">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
<#--    <link>-->
    <title>Профиль</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <script
            src="https://code.jquery.com/jquery-3.5.1.js"
            integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
          crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
            integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"
            integrity="sha384-LtrjvnR4Twt/qOuYxE721u19sVFLVSA4hf/rRt6PrZTmiPltdZcI7q7PXQBYTKyf"
            crossorigin="anonymous"></script>

</head>
<body onload="document.getElementById('navbarDropdown').click(); document.getElementById('navbarDropdown').blur()">

<nav class="navbar sticky-top navbar-light bg-light navbar-expand-md">
    <a href="/about" class="navbar-brand">Bagels</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link" href="/">Меню</a></li>
            <li class="nav-item"><a class="nav-link" href="/basket">Корзина</a></li>
            <li class="nav-item"><a class="nav-link" href="/about">О нас</a></li>
        </ul>
        <div class="nav-item dropdown ml-auto">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
               data-toggle="dropdown"
               aria-haspopup="true" aria-expanded="false">
                ${user.getUsername()}
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a style="text-decoration: underline" href="/"
                   class="dropdown-item">${user.getUsername()}</a>
                <div class="dropdown-divider"></div>
                <a style="color:red" href="/logout" class="dropdown-item">Выйти</a>
            </div>
        </div>
    </div>
</nav>

<section class="u-align-center u-black u-clearfix u-section-1" id="carousel_5156">
    <div class="container">
        <img class="u-expand-resize u-expanded-width u-image u-image-1" src="/images/les2.jpeg" alt="Yes">
        <div class="text-white px-3 py-4 p-md-5 mx-md-4 container tekst_sverhu_kartinki" style="top: 40%">
            <h1 class="mb-4">Добро пожаловать,  ${user.getUsername()}!</h1>
            <p class="small mb-0">Запеченный с любовью</p>
            <p class="small mb-0">У нас создаётся вкуснейшая выпечка.
                Закажи себе самый свежий хлеб и почувствуй вкус детства.
            </p>
        </div>
        <div class="cvadr">
            <p><big><big>Мы молодая сеть пекарень в прекрасном горде Казань</big></big></p>
            <br>
            <p><big>Найти нас вы сможете по этим адресам: </big></p>
            <p><big>Улица Пушкина, дом 27</big></p>
            <p><big>Улица Дзержинского, дом 38А</big></p>
            <br>
            <p><big>Телефон: +7(917)-152-16-50</big></p>
        </div>
    </div>
</section>

<footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-c4fa">
    <div class="u-clearfix u-sheet u-sheet-1">
        <p style="line-height: 0.005" lang="ru" xml:lang="ru" class="u-small-text u-text u-text-variant u-text-1"><big>Рай для диабетиков, реальность для тебя.</big></p>
    </div>
</footer>
<footer class="text-center ">
    <p class="small mb-0">© ООО «Корпорация Bagels» Все права защищены 2023 </p>
    <a href="https://github.com/lirummirul?tab=repositories" target="_blank">GitHub сайта</a>
    , создан при поддержке
    <a href="https://github.com/andreichev/itis-programming-java3" target="_blank">Михаила Дмитриевича</a>
    <br>
</footer>
</body>
</html>
