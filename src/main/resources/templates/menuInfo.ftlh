<!DOCTYPE html>
<html lang="ru" xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>Подробная информация о товаре</title>
    <link rel="stylesheet" type="text/css" href="/Main.css">
    <link rel="stylesheet" href="/nicepage.css" media="screen">
    <link rel="stylesheet" href="/about.css" media="screen">
    <link rel="stylesheet" href="/Main.css" media="screen">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <script
            src="https://code.jquery.com/jquery-3.5.1.js"
            integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
          crossorigin="anonymous">
    <link href="https://getbootstrap.com/docs/4.1/examples/sticky-footer-navbar/sticky-footer-navbar.css"
          rel="stylesheet">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
            integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"
            integrity="sha384-LtrjvnR4Twt/qOuYxE721u19sVFLVSA4hf/rRt6PrZTmiPltdZcI7q7PXQBYTKyf"
            crossorigin="anonymous"></script>

</head>

<style>
    .card:hover .card-header{
        background-color: #fff895;
    }
    .footer {
        position: absolute;
        bottom: 0;
        width: 100%;
        /* Set the fixed height of the footer here */
        height: 40px;
        line-height: 40px; /* Vertically center the text there */
        background-color: #f5f5f5;
        z-index: 10;
    }

    .error-div {
        position: absolute;
        right: 0;
        top: 20%;
        max-height: 40%;
        overflow: hidden;
    }
    @media (min-width: 768px) {
        .gradient-form {
            height: 100vh !important;
        }
    }
    @media (min-width: 769px) {
        .gradient-custom-2 {
            border-top-right-radius: .3rem;
            border-bottom-right-radius: .3rem;
        }
    }
</style>


<body data-home-page="main.ftlh" data-home-page-title="Главная" class="u-body u-xl-mode" data-lang="ru">

<#--<%-------------------- Голова, белая полосака с логотипом и страничками --------------------%>-->

<header class="u-clearfix u-header u-header" id="sec-9f1a">
    <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">

        <br>
        <img src="/images/bagels.png" class="u-logo-image u-logo-image-1" alt="Yes">
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
            <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 1px;">
                <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
                    <svg class="u-svg-link" viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
                    <svg class="u-svg-content" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg">
                        <g>
                            <rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect>
                            <rect y="13" width="16" height="2"></rect>
                        </g>
                    </svg>
                </a>
            </div>

            <div class="u-nav-container">
                <ul class="u-nav u-unstyled u-nav-1">
                    <li class="u-nav-item">
                        <a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="/main" style="padding: 10px 20px; color: black">Главная</a>
                    </li>
                    <li class="u-nav-item">
                        <a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="/about" style="padding: 10px 20px; color: black">О нас</a>
                    </li>
                    <li class="u-nav-item">
                        <a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="/basket" style="padding: 10px 20px; color: black">Корзина</a>
                    </li>
                    <li class="u-nav-item">
                        <a href="/signIn" class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" style="padding: 10px 20px; color: black">Вход</a>
                    </li>
                </ul>
            </div>

            <div class="u-nav-container-collapse">
                <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
                    <div class="u-inner-container-layout u-sidenav-overflow">
                        <div class="u-menu-close"></div>
                        <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
                            <li class="u-nav-item">
                                <a  lang="ru" xml:lang="ru" xmlns="http://www.w3.org/1999/xhtml" class="u-button-style u-nav-link" href="/main">Главная</a>
                            </li>
                            <li class="u-nav-item">
                                <a  lang="ru" xml:lang="ru" xmlns="http://www.w3.org/1999/xhtml" class="u-button-style u-nav-link" href="/about">О нас</a>
                            </li>
                            <li class="u-nav-item">
                                <a  lang="ru" xml:lang="ru" xmlns="http://www.w3.org/1999/xhtml"  class="u-button-style u-nav-link" href="/basket">Корзина</a>
                            </li>
                            <li class="u-nav-item">
                                <a href="/login" class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base">Вход</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
            </div>


        </nav>
    </div>
</header>

<#--<%--------------------Секция с содержанием меню--------------------%>-->

<section class="u-align-center u-black u-clearfix" id="carousel_5156">
    <div class="container">
        <img class="u-expand-resize u-expanded-width u-image u-image-1" src="/images/wdq-min1.jpg" alt="Yes">
        <p style="color: white"> <b> <b>Пекарня создана людьми, но кушают здесь только Боги! </b></b></p>
        <div class="u-section-1 u-align-left u-container-style u-list-item  u-repeater-item u-shape-rectangle">
            <div class="u-container-layout u-similar-container u-valign-top u-container-layout-1 u-list-item-1 ">
                <h4> Подробная информация </h4><br>
                <b>Название: ${menu.name}</b><br>
                <b>Описание: ${menu.description}</b><br>
                <b>Цена: ${menu.price_per_price}</b><br>
            </div>
        </div>
    </div>

    <p class="u-align-center u-text u-text-grey-30 u-text-19">Пекарня от
        <a href="https://vk.com/lambertl" class="u-border-1 u-border-white u-btn u-button-style u-none u-text-grey-30 u-btn-7">Ладушки</a>
    </p>
</section>





<#--<nav class="navbar sticky-top navbar-light bg-light navbar-expand-md">-->
<#--    <a href="/profile" class="navbar-brand">Bagels</a>-->
<#--    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">-->
<#--        <span class="navbar-toggler-icon"></span>-->
<#--    </button>-->
<#--    <#if test="${user != null}">-->
<#--        <div class="collapse navbar-collapse" id="navbarNav">-->
<#--            <ul class="navbar-nav">-->
<#--                <li class="nav-item"><a class="nav-link" href="/menus">Меню</a></li>-->
<#--                <li class="nav-item"><a class="nav-link" href="/profile/menus/saved">Корзина</a></li>-->
<#--            </ul>-->
<#--            <div class="nav-item dropdown ml-auto">-->
<#--                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"-->
<#--                   data-toggle="dropdown"-->
<#--                   aria-haspopup="true" aria-expanded="false">-->
<#--                    ${user.getLogin()}-->
<#--                </a>-->
<#--                <div class="dropdown-menu" aria-labelledby="navbarDropdown">-->
<#--                    <a style="text-decoration: underline" href="/profile"-->
<#--                       class="dropdown-item">${user.getLogin()}</a>-->
<#--                    <div class="dropdown-divider"></div>-->
<#--                    <a style="color:red" href="/logout" class="dropdown-item">Выйти</a>-->
<#--                </div>-->
<#--            </div>-->
<#--        </div>-->
<#--    </#if>-->
<#--    <c:if test="${user == null}">-->
<#--        <div class="collapse navbar-collapse" id="navbarNav">-->
<#--            <ul class="navbar-nav">-->
<#--                <li class="nav-item"><a class="nav-link" href="/menus">Меню</a></li>-->
<#--            </ul>-->
<#--            <a href="/login" class="nav-link ml-auto">Войти</a>-->
<#--        </div>-->
<#--    </c:if>-->
<#--</nav>-->

<#--<section class="u-align-center u-black u-clearfix u-section-1">-->
<#--    <img class="u-expand-resize u-expanded-width u-image u-image-1" src="../images/wdq-min1.jpg" alt="Yes">-->
<#--    <div class="text-white px-3 py-4 p-md-5 mx-md-4 container tekst_sverhu_kartinki" style="top: 10%; left: 9%">-->
<#--        <h1 class="mb-4">Меню: </h1>-->
<#--    </div>-->


<#--    <div class="container tekst_sverhu_kartinki" style="top: 25%; left: 11%">-->
<#--        <div class="row">-->
<#--            <#list menus as menu>-->
<#--                <div class="col-lg-6 col-sm-12 col-12 col-xl-4 mb-1">-->
<#--                    <div class="card" onclick="window.location.assign('/menu?id=${menu.getId()}')">-->
<#--                        <div class="card-header font-weight-bold text-card sizeMenuMain">-->
<#--                            ${menu.getName()}-->
<#--                        </div>-->
<#--                        <div class="card-body">-->
<#--                            <div class="text-card card-text sizeMenu">-->
<#--                                <c:if test="${menu.getDescription() != null}">-->
<#--                                    ${menu.getDescription()}-->
<#--                                </c:if>-->
<#--                                <br>-->
<#--                                <c:if test="${menu.getPrice_per_piece() != 0}">-->
<#--                                    ${menu.getPrice_per_piece()} руб-->
<#--                                </c:if>-->
<#--                            </div>-->
<#--                        </div>-->
<#--                    </div>-->
<#--                </div>-->
<#--            </#list>-->
<#--        </div>-->
<#--    </div>-->
<#--</section>-->


<footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-c4fa">
    <div class="u-clearfix u-sheet u-sheet-1">
        <p style="line-height: 0.005" lang="ru" xml:lang="ru" class="u-small-text u-text u-text-variant u-text-1"><big>Рай для диабетиков, реальность для тебя.</big></p>
    </div>
</footer>
<footer class="footer text-center podval1">
    <p class="small mb-0">© ООО «Корпорация Bagels» Все права защищены 2022 </p>
    <a href="https://github.com/lirummirul?tab=repositories" target="_blank">GitHub сайта</a>
    , создан при поддержке
    <a href="https://github.com/andreichev/itis-programming-java3" target="_blank">Михаила Дмитриевича</a>
    <br>
</footer>
</body>
</html>
