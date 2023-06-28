<!DOCTYPE html>
<html lang="ru" xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>Всё меню Bagels</title>
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
<#--<body onload="document.getElementById('navbarDropdown').click(); document.getElementById('navbarDropdown').blur()">-->


<#--<%-------------------- Голова, белая полосака с логотипом и страничками --------------------%>-->

<nav class="navbar sticky-top navbar-light bg-light navbar-expand-md">
    <a href="/" class="navbar-brand">Bagels</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
    </button>
    <#if (user.username)??>
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
                    ${user.username}
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a style="text-decoration: underline" href="/about"
                       class="dropdown-item">${user.username}</a>
                    <div class="dropdown-divider"></div>
                    <a style="color:red" href="/logout" class="dropdown-item">Выйти</a>
                </div>
            </div>
        </div>
    <#else>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="/">Меню</a></li>
            </ul>
            <a href="/login" class="nav-link ml-auto">Войти</a>
        </div>
    </#if>
</nav>



<#--<%--------------------Секция с содержанием меню--------------------%>-->

<section class="u-align-center u-black u-clearfix" id="carousel_5156">
    <img class="u-expand-resize u-expanded-width u-image u-image-1" src="/images/wdq-min1.jpg" alt="Yes">
    <div class="cvadrMain">
<#--        <p style="color: white"> <b> <b>Пекарня создана людьми, но кушают здесь только Боги! </b></b></p>-->
        <div class="text-white px-3 py-4 p-md-5 mx-md-4 container tekst_sverhu_kartinki" style="top: 10%; left: 1%">
            <h1 class="mb-4">Меню: </h1>
        </div>
        <div class="u-section-1 u-align-left u-container-style u-list-item  u-repeater-item u-shape-rectangle">
            <div class="u-container-layout u-similar-container u-valign-top u-container-layout-1 u-list-item-1 ">

            <#list menuList as menu>
                <div class="u-align-center u-border-radius-50 u-container-style u-group u-opacity u-opacity-45 u-palette-5-dark-1 u-shape-round u-group-1">
                    <div class="u-container-layout u-valign-middle u-container-layout-2">
                        <h1 class="u-custom-font u-text u-text-1">${menu.id}</h1>
                    </div>
                </div>
                <h5 class="u-text u-text-body-alt-color u-text-2">${menu.name}</h5>
                <p class="u-text u-text-default u-text-grey-30 u-text-3">${menu.price_per_price} руб.</p>
                <a href="/main/${menu.id}" class="u-active-none u-border-2 u-border-active-white u-border-hover-white u-border-white u-btn u-button-style u-hover-none u-none u-text-body-alt-color u-text-hover-grey-30 u-btn-1">learn more</a>
                <br>
            </#list>
            </div>
        </div>
    </div>


<#--            <#if usr.id == user_role.id && user_role == "ADMIN">-->
<#--                <hr>-->
<#--                <h3>Создать новый товар</h3>-->
<#--                <form action="/main/create" method="post" enctype="multipart/form-data">-->
<#--                    Название продукта: <input type="text" name="name"/><br><br>-->
<#--                    Описание: <input type="text" name="description"/><br><br>-->
<#--                    Цена: <input type="number" name="price_per_price"/><br><br>-->
<#--                    <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--                    <input type="submit" value="Добавить товар"/>-->
<#--                </form>-->
<#--            </#if>-->

</section>

<#--<section class="u-align-center u-black u-clearfix" id="carousel_5156">-->
<#--    <img class="u-expand-resize u-expanded-width u-image u-image-1" src="/images/black.png" alt="Yes">-->
<#--    <div class="cvadrMain">-->
<#--        <p class="u-align-center u-text u-text-grey-30 u-text-19">Пекарня от-->
<#--            <a href="https://vk.com/lambertl" class="u-border-1 u-border-white u-btn u-button-style u-none u-text-grey-30 u-btn-7">Ладушки</a>-->
<#--        </p>-->
<#--    </div>-->
<#--</section>-->


<footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer u-black" id="sec-c4fa">
    <div class="u-clearfix u-sheet u-sheet-1">
        <p style="line-height: 0.005" lang="ru" xml:lang="ru" class="u-small-text u-text u-text-variant u-text-1"><big>Рай для диабетиков, реальность для тебя.</big></p>
    </div>
</footer>
<footer class="footer text-center podval1">
    <p class="small mb-0">© ООО «Корпорация Bagels» Все права защищены 2023 </p>
    <a href="https://github.com/lirummirul?tab=repositories" target="_blank">GitHub сайта</a>
    , создан при поддержке
    <a href="https://github.com/andreichev/itis-programming-java3" target="_blank">Михаила Дмитриевича</a>
    <br>
</footer>
</body>
</html>
