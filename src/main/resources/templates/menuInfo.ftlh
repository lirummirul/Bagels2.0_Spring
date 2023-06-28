<!DOCTYPE html>
<html lang="ru" xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>Подробная информация о товаре</title>
    <link rel="stylesheet" href="/lights.css" media="screen">
    <link rel="stylesheet" href="/about.css" media="screen">
    <link rel="stylesheet" href="/Main.css" media="screen">
    <link rel="stylesheet" href="/nicepage.css" media="screen">

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

<script>
    let errors_counter = 0;
    let count = 1;

    function countFPL() {
        // if (count )
        count++;
    }

    function countFMI() {
        if (count > 0) {
            count--;
        }
    }

    function like() {
        $.ajax({
            type: "post",
            url: "/menu/like",
            data: {
                "id": ${menu.getId()}
            },
            success: function (response) {
                let a = document.getElementById("like")
                a.style.color = "red";
                document.getElementById("btn_like").onclick = unlike
            }
        })
    }

    function unlike() {
        $.ajax({
            type: "post",
            url: "/menu/unlike",
            data: {
                "id": ${menu.getId()}
            },
            success: function (response) {
                let a = document.getElementById("like")
                a.style.color = "grey";
                document.getElementById("btn_like").onclick = like
            },
            contentType: "application/x-www-form-urlencoded"

        })
    }

    function openInNewTab(url) {
        let win = window.open(url, '_blank');
        win.focus();
    }

    function unregisteredError() {
        let a = document.createElement("div")
        let b = document.getElementById("errors")
        a.className = "error-block"
        a.id = errors_counter.toString()
        b.append(a)
        a.innerHTML = `
            <div class="row col-12 m-1">Необходимо авторизоваться, чтобы выполнить это действие<div>
            `
        errors_counter++
        return errors_counter - 1
    }


    /* закрытие окошка с ошибкой */
    function remove(id) {
        let a = document.getElementById(id)
        try {
            a.parentElement.removeChild(a)
        } catch (e) {

        }
    }
</script>

<#--<body data-home-page="menuInfo.ftlh" data-home-page-title="Меню" class="u-body u-xl-mode" data-lang="ru">-->
<body onload="document.getElementById('navbarDropdown').click(); document.getElementById('navbarDropdown').blur()">
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

<section class="u-align-center u-black u-clearfix u-section-1" id="carousel_5156">
    <div class="container">
        <img class="u-expand-resize u-expanded-width u-image u-image-1" src="/images/tomato.jpeg" alt="Yes">
        <div class="cvadr2">
            <h1 class="mb-4"> ${menu.name} </h1>
            <h4> Подробная информация: </h4><br>
            <b>Описание: ${menu.description}</b><br>
            <b>Цена: ${menu.price_per_price}</b><br>

            <div class="row">
                <div class="col-xs-12 col-lg-4 col-md-4 col-sm-5 text-xl-right text-lg-right text-md-right text-sm-right">
                    <button id="btn_like" class="btn btn-outline-primary"
                            <#if user??>
                        <#if is_liked??>
                            onclick="unlike()"
                        <#else>
                            onclick="like()"
                        </#if>
                            </#if>>
                        <i class="fa fa-heart" id="like"
                                <#if is_liked??>
                                    style="color: red"
                                <#else>
                                    style="color: grey"
                                </#if>
                        >
                        </i>
                        Добавить в избранное
                    </button>
                </div>
            </div>
        </div>
    </div>
</section>


<footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-c4fa">
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
