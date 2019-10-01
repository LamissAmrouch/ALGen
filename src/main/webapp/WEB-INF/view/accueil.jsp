<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Algen</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  %>
    <!-- Favicons -->
    <link href="img/favicon.png" rel="icon">
    <link href="img/apple-touch-icon.png" rel="apple-touch-icon">


    <!-- Bootstrap CSS File -->
    <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css"rel="stylesheet">


    <!-- Libraries CSS Files -->
    <link href="webjars/font-awesome/5.8.1/css/all.css"
          rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">


    <link href="css/ionicons.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/lightbox.css" rel="stylesheet">

    <!-- Main Stylesheet File -->
    <link href="css/accueil.css" rel="stylesheet">

    <!-- =======================================================
      Theme Name: BizPage
      Theme URL: https://bootstrapmade.com/bizpage-bootstrap-business-template/
      Author: BootstrapMade.com
      License: https://bootstrapmade.com/license/
    ======================================================= -->

</head>

<body>

<!--==========================
  Header
============================-->

<header id="header">
    <div class="container-fluid">

        <div id="logo" class="pull-left">
            <!-- Uncomment below if you prefer to use an image logo -->
            <a href="./"><img src="img/Algen-Logo.png" alt="" title="" /></a>
        </div>

        <nav id="nav-menu-container">
            <ul class="nav-menu">

                <li><a href="./">Accueil</a></li>
                <li><a href="/ListInstitution">Institutions</a></li>
                <li><a href="/affichage-lois">Lois</a></li>
                <li class="menu-has-children"><a href="#">Ressources</a>
                    <ul>
                        <li><a href="./ListRgForest">Forestieres</a></li>
                        <li><a href="./ListRgAlimagricol">Alimentaires</a></li>
                        <li><a href="./ListRgMarine">Marine</a></li>
                        <li><a href="./ListRgFaune">Faune</a></li>
                        <li><a href="./ListRgMicroOrg">Micro Orga</a></li>
                    </ul>
                </li>
                <li><a href="/faq">Faq</a></li>
                <li><a href="./#contact">Contact</a></li>
                <li><a href="./#footer">A propos</a></li>

                <c:if test="${logged}">
                    <li class="menu-has-children"><a href="#">${user.getNom()}</a>
                        <ul>

                            <li><a href="./logout">Se Déconnecter</a></li>

                        </ul>
                    </li>

                </c:if>
                <c:if test="${!logged}">
                    <li><a href="./login">Se Connecter</a></li>
                </c:if>


            </ul>
        </nav>
    </div>
</header><!-- #header -->

<!--==========================
  Intro Section
============================-->

<section id="intro">
    <div class="intro-container">
        <div id="introCarousel" class="carousel  slide carousel-fade" data-ride="carousel">

            <ol class="carousel-indicators"></ol>

            <div class="carousel-inner" role="listbox">

                <div class="carousel-item active" style="background-image: url('img/download (1).jpeg');">
                    <div class="carousel-container">
                        <div class="carousel-content">
                            <h2>L'inra annonce lors de son séminaire:</h2>
                            <p>Decouverte d'un nouveau micro-organisme en Algerie</p>
                            <a href="./#about"  class="btn-get-started scrollto details">Plus de d&eacutetails</a>
                        </div>
                    </div>
                </div>

                <div class="carousel-item" style="background-image: url('img/02_01_slide_nature.jpg');">
                    <div class="carousel-container">
                        <div class="carousel-content">
                            <h2>L'inra annonce lors de son séminaire:</h2>
                            <p>Decouverte d'un nouveau micro-organisme en Algerie</p>
                            <a href="./#about" class="btn-get-started scrollto details">Plus de d&eacutetails</a>
                        </div>
                    </div>
                </div>

                <div class="carousel-item" style="background-image: url('img/images (3).jpeg');">
                    <div class="carousel-container">
                        <div class="carousel-content">
                            <h2>Evenement de partage</h2>
                            <p>R&eacusever vos places pour &eacuvenement</p>
                            <a href="./#about" class="btn-get-started scrollto details">Plus de d&eacutetails</a>
                        </div>
                    </div>
                </div>

                <div class="carousel-item" style="background-image: url('img/images (3).jpeg');">
                    <div class="carousel-container">
                        <div class="carousel-content">
                            <h2>Evenement de partage</h2>
                            <p>R&eacusever vos places pour &eacuvenement</p>
                            <a href="./#about" class="btn-get-started scrollto details">Plus de d&eacutetails</a>
                        </div>
                    </div>
                </div>

                <div class="carousel-item" style="background-image: url('img/intro-carousel/5.jpg');">
                    <div class="carousel-container">
                        <div class="carousel-content">
                            <h2>Magnam aliquam quaerat</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                            <a href="./#about" class="btn-get-started scrollto">Get Started</a>
                        </div>
                    </div>
                </div>

            </div>

            <a class="carousel-control-prev" href="#introCarousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon ion-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>

            <a class="carousel-control-next" href="#introCarousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon ion-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>

        </div>
    </div>
</section><!-- #intro -->

<main id="main">



    <!--==========================
      About Us Section
    ============================-->

    <section id="about">
        <div class="container">

            <header class="section-header">
                <h3>Ressources g&eacuten&eacutetiques</h3>
                <p>            C'est la terminologie employée pour évoquer les ressources naturelles que constituent les diverses espères vivantes, animales ou végétales. Pour la CDB – Convention sur la Diversité Biologique adoptée en 1992 lors du Sommet de Rio – il s'agit d'un "matériel d'origine végétale, animale, microbienne ou autre, contenant des unités fonctionnelles de l'hérédité". Ce matériel génétique à une valeur effective ou potentielle.
                    Les enjeux liés à leur exploitation, à leur utilisation ainsi qu'au brevetage des médicaments ou aliments produits à base de ses ressources génétiques sont cruciaux pour la protection de la biodiversité et intégrer aux négociations internationales sur la Biodiversité organisées au sein de la CDB.
                    En 1992, lors du Sommet de la Terre, l'ONU a reconnu les ressources génétiques comme un bien commun et dont la préservation est nécessaire pour un développement durable de l'activité humaine. La CDB a trois objectifs principaux : la conservation de la biodiversité, l'utilisation durable des ressources génétiques et la partage équitable des bénéfices résultant de l'exploitation de ces ressources génétiques. La CDB est un document clé concernant le développement durable.
                    Dans les années 90, les ressources génétiques sont devenues des composants stratégiques pour les industriels lorsqu'ils se sont lancés dans le développement des biotechnologies. Les industries qui consomment le plus de ressources génétiques sont : l'industrie pharmaceutique, biotechnologique, cosmétique et agro-alimentaire.
                    En France, c'est le Bureau des Ressources Génétiques (BRG) et l'Agence Nationale de la Recherche (ANR) qui gèrent la question des ressources énergétiques en menant des études sur les liens entre sauvegarde des ressources génétiques et agriculture durable.</p>
            </header>

            <div class="row about-cols">

                <div class="col-md-4 wow fadeInUp">
                    <div class="about-col">
                        <div class="img">
                            <img src="img/about-mission.jpg" alt="" class="img-fluid">
                            <div class="icon"><i class="ion-ios-speedometer-outline"></i></div>
                        </div>
                        <h2 class="title"><a href="#">Apa</a></h2>
                        <p>
                            Le Protocole de Nagoya sur l'accès aux ressources génétiques et le partage juste et équitable des avantages découlant de leur utilisation (APA) a été adopté en 2010 lors de la 10e Conférence des Parties de la Convention sur la diversité biologique. Il précise le cadre international du mécanisme d'APA que les États signataires ont la responsabilité de traduire dans leur droit national.
                        </p>
                    </div>
                </div>

                <div class="col-md-4 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="about-col">
                        <div class="img">
                            <img src="img/about-plan.jpg" alt="" class="img-fluid">
                            <div class="icon"><i class="ion-ios-list-outline"></i></div>
                        </div>
                        <h2 class="title"><a href="#">Sensibilisation sur apa</a></h2>
                        <p>
                            Au niveau européen, le Parlement a adopté le 16 avril 2014 le règlement (UE)
                            n°511/2014 relatif aux mesures concernant le respect par les utilisateurs dans l'Union du Protocole de Nagoya sur l'APA puis son règlement d’exécution (UE) 2015/1866 du 13 octobre 2015 précisant les modalités d'application en ce qui concerne le registre des collections, la surveillance du respect des règles par l'utilisateur et les bonnes pratiques. L'Union européenne, qui a ratifié le Protocole en mai 2014, dispose désormais d’un cadre juridique mettant en œuvre les dispositions du Protocole de Nagoya. Ce cadre prévoit un certain nombre de mesures pour les utilisations de ressources génétiques et connaissances traditionnelles associées se déroulant sur le territoire de l’UE.
                       </p>
                    </div>
                </div>

                <div class="col-md-4 wow fadeInUp" data-wow-delay="0.2s">
                    <div class="about-col">
                        <div class="img">
                            <img src="img/about-vision.jpg" alt="" class="img-fluid">
                            <div class="icon"><i class="ion-ios-eye-outline"></i></div>
                        </div>
                        <h2 class="title"><a href="#">Apa en Algerie</a></h2>
                        <p>
                            Il a pour but de Renforcer la protection et l'utilisation durable des ressources génétiques et des connaissances traditionnelles associées en Algérie par le développement et la mise en œuvre d'un cadre national sur l'accès et le partage des avantages (APA) compatible avec la Convention sur la Diversité Biologique et son protocole de Nagoya.
                       </p>
                    </div>
                </div>

            </div>

        </div>
    </section><!-- #about -->
    <section id="aboutN">
        <div class="container">

            <header class="section-header">
                <h3>Le protocole de nagoya</h3>
                <p>Il a pour but de Renforcer la protection et l'utilisation durable des ressources génétiques et des connaissances traditionnelles associées en Algérie par le développement et la mise en œuvre d'un cadre national sur l'accès et le partage des avantages (APA) compatible avec la Convention sur la Diversité Biologique et son protocole de Nagoya.</p>
            </header>

            <iframe width="100%" height="450"
                    src="https://www.youtube.com/embed/2h6SaxKH1Qg?autoplay=1">
            </iframe>

        </div>
    </section><!-- #about -->




    <!--==========================
      Call To Action Section
    ============================-->

    <!--==========================
      Facts Section
    ============================-->
    <section id="facts"  class="wow fadeIn">
        <div class="container">

            <header class="section-header">
                <h3>Contenu</h3>
                <p>Algen a un contenu tr&eacutes puissant ,represent&eacute par : </p>
            </header>

            <div class="row counters">

                <div class="col-lg-4 col-12 text-center">
                    <span data-toggle="counter-up">150000</span>
                    <p>Ressources</p>
                </div>



                <div class="col-lg-4 col-12 text-center">
                    <span data-toggle="counter-up">25000</span>
                    <p>Lois</p>
                </div>

                <div class="col-lg-3 col-12 text-center">
                    <span data-toggle="counter-up">5000</span>
                    <p>Institution</p>
                </div>

            </div>

            <div class="facts-img">
                <img src="img/facts-img.png" alt="" class="img-fluid">
            </div>

        </div>
    </section><!-- #facts -->


    <!--==========================
      Portfolio Section
    ============================-->
    <section id="portfolio"  class="section-bg" >
        <div class="container">



            <div class="row">
                <div class="col-lg-12">
                    <ul id="portfolio-flters">
                        <li data-filter="*" class="filter-active">Touts</li>
                        <li data-filter=".filter-forest">Forestiaires</li>
                        <li data-filter=".filter-ali">Alimentaires</li>
                        <li data-filter=".filter-mar">Marine</li>
                        <li data-filter=".filter-faun">Faune</li>
                        <li data-filter=".filter-micro">Micro Orga</li>
                    </ul>
                </div>
            </div>

            <div class="row portfolio-container">

                <div class="col-lg-4 col-md-6 portfolio-item filter-forest wow fadeInUp">
                    <div class="portfolio-wrap">
                        <figure>
                            <img src="img/rg_forestiere/stramoine.jpg" class="img-fluid" alt="">
                            <a href="img/rg_forestiere/stramoine.jpg" data-lightbox="portfolio" data-title="For 1" class="link-preview" title="Preview"><i class="ion ion-eye"></i></a>
                            <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                        </figure>

                        <div class="portfolio-info">
                            <h4><a href="#">Stramoinie</a></h4>
                            <p>Forestiere</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-ali wow fadeInUp" data-wow-delay="0.1s">
                    <div class="portfolio-wrap">
                        <figure>
                            <img src="img/rg_alimentaire_agricole/Avoine.jpg" class="img-fluid" alt="">
                            <a href="img/rg_alimentaire_agricole/Avoine.jpg" class="link-preview" data-lightbox="portfolio" data-title="Web 3" title="Preview"><i class="ion ion-eye"></i></a>
                            <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                        </figure>

                        <div class="portfolio-info">
                            <h4><a href="#">Avoine</a></h4>
                            <p>Alimentaire</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-mar wow fadeInUp">
                    <div class="portfolio-wrap">
                        <figure>
                            <img src="img/rg_marine/OURSIN NOIR.jpg" class="img-fluid" alt="">
                            <a href="img/rg_marine/OURSIN NOIR.jpg" class="link-preview" data-lightbox="portfolio" data-title="Card 1" title="Preview"><i class="ion ion-eye"></i></a>
                            <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                        </figure>

                        <div class="portfolio-info">
                            <h4><a href="#">Pelagie</a></h4>
                            <p>Marine</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-faun wow fadeInUp">
                    <div class="portfolio-wrap">
                        <figure>
                            <img src="img/rg_faune/Fennec.jpg" class="img-fluid" alt="">
                            <a href="img/rg_faune/Fennec.jpg" class="link-preview" data-lightbox="portfolio" data-title="Card 2" title="Preview"><i class="ion ion-eye"></i></a>
                            <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                        </figure>

                        <div class="portfolio-info">
                            <h4><a href="#">Fennec</a></h4>
                            <p>Faune</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-micro wow fadeInUp" data-wow-delay="0.2s">
                    <div class="portfolio-wrap">
                        <figure>
                            <img src="img/rg_micro_orga/Bacillus.jpg" class="img-fluid" alt="">
                            <a href="img/rg_micro_orga/Bacillus.jpg" class="link-preview" data-lightbox="portfolio" data-title="App 3" title="Preview"><i class="ion ion-eye"></i></a>
                            <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                        </figure>

                        <div class="portfolio-info">
                            <h4><a href="#">Bacillus</a></h4>
                            <p>Micro Orga</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-micro wow fadeInUp" data-wow-delay="0.2s">
                    <div class="portfolio-wrap">
                        <figure>
                            <img src="img/rg_micro_orga/Bacillus.jpg" class="img-fluid" alt="">
                            <a href="img/rg_micro_orga/Bacillus.jpg" class="link-preview" data-lightbox="portfolio" data-title="App 3" title="Preview"><i class="ion ion-eye"></i></a>
                            <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                        </figure>

                        <div class="portfolio-info">
                            <h4><a href="#">Bacillus</a></h4>
                            <p>Micro Orga</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-mar wow fadeInUp">
                    <div class="portfolio-wrap">
                        <figure>
                            <img src="img/rg_marine/OURSIN NOIR.jpg" class="img-fluid" alt="">
                            <a href="img/rg_marine/OURSIN NOIR.jpg" class="link-preview" data-lightbox="portfolio" data-title="Card 1" title="Preview"><i class="ion ion-eye"></i></a>
                            <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                        </figure>

                        <div class="portfolio-info">
                            <h4><a href="#">Pelagie</a></h4>
                            <p>Marine</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-forest wow fadeInUp">
                    <div class="portfolio-wrap">
                        <figure>
                            <img src="img/rg_forestiere/stramoine.jpg" class="img-fluid" alt="">
                            <a href="img/rg_forestiere/stramoine.jpg" data-lightbox="portfolio" data-title="For 1" class="link-preview" title="Preview"><i class="ion ion-eye"></i></a>
                            <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                        </figure>

                        <div class="portfolio-info">
                            <h4><a href="#">Stramoinie</a></h4>
                            <p>Forestiere</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-forest wow fadeInUp">
                    <div class="portfolio-wrap">
                        <figure>
                            <img src="img/rg_forestiere/stramoine.jpg" class="img-fluid" alt="">
                            <a href="img/rg_forestiere/stramoine.jpg" data-lightbox="portfolio" data-title="For 1" class="link-preview" title="Preview"><i class="ion ion-eye"></i></a>
                            <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                        </figure>

                        <div class="portfolio-info">
                            <h4><a href="#">Stramoinie</a></h4>
                            <p>Forestiere</p>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </section><!-- #portfolio -->


    <section id="testimonials" class="section-bg wow fadeInUp">
        <div class="container">

            <header class="section-header">
                <h3>t&eacutemoignages</h3>
            </header>

            <div class="owl-carousel testimonials-carousel">

                <div class="testimonial-item">
                    <img src="img/IMG_20180726_0001.jpg" class="testimonial-img" alt="">
                    <h3>Sabour Oussama</h3>
                    <h4>Etudiant</h4>
                    <p>
                        <img src="img/quote-sign-left.png" class="quote-sign-left" alt="">
                        Algen how mkhayar ga333
                        <img src="img/quote-sign-right.png" class="quote-sign-right" alt="">
                    </p>
                </div>
                <div class="testimonial-item">
                    <img src="img/IMG_20180726_0001.jpg" class="testimonial-img" alt="">
                    <h3>Sabour Oussama</h3>
                    <h4>Etudiant</h4>
                    <p>
                        <img src="img/quote-sign-left.png" class="quote-sign-left" alt="">
                        Algen how mkhayar ga333
                        <img src="img/quote-sign-right.png" class="quote-sign-right" alt="">
                    </p>
                </div>


            </div>

        </div>
    </section><!-- #testimonials -->


    <!--==========================
      Contact Section
    ============================-->
    <section id="contact" class="section-bg wow fadeInUp">
        <div class="container">

            <div class="section-header">
                <h3>Contactez nous</h3>
                <p>Vous pouvez nous contacter par : </p>
            </div>

            <div class="row contact-info">

                <div class="col-md-4">
                    <div class="contact-address">
                        <i class="ion-ios-location-outline"></i>
                        <h3>Addresse</h3>
                        <address>Alger Oued Smar, 16309, Oued Smar 16309</address>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="contact-phone">
                        <i class="ion-ios-telephone-outline"></i>
                        <h3>Phone Number</h3>
                        <p><a href="tel:+213658981545">+213658981545</a></p>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="contact-email">
                        <i class="ion-ios-email-outline"></i>
                        <h3>Email</h3>
                        <p><a href="mailto:info@example.com">info@algen.com</a></p>
                    </div>
                </div>

            </div>

            <div class="form">
                <div id="sendmessage">Your message has been sent. Thank you!</div>
                <div id="errormessage"></div>
                <form action="" method="post" role="form" class="contactForm">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <input type="text" name="name" class="form-control" id="name" placeholder="Votre Nom" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                            <div class="validation"></div>
                        </div>
                        <div class="form-group col-md-6">
                            <input type="email" class="form-control" name="email" id="email" placeholder="Votre Email" data-rule="email" data-msg="Please enter a valid email" />
                            <div class="validation"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="subject" id="subject" placeholder="Sujet" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                        <div class="validation"></div>
                    </div>
                    <div class="form-group">
                        <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                        <div class="validation"></div>
                    </div>
                    <div class="text-center"><button type="submit">Envois Message</button></div>
                </form>
            </div>

        </div>
    </section><!-- #contact -->

</main>

<!--==========================
  Footer
============================-->
<footer id="footer">
    <div class="footer-top">
        <div class="container">
            <div class="row">

                <div class="col-lg-3 col-md-6 footer-info">
                      <div id="logo" class="pull-left">

                    <!-- Uncomment below if you prefer to use an image logo -->
                    <a id="logo-fot" href="#intro"><img src="img/Algen-Logo.png" alt="" title="" /></a>
                </div>
                    <p>l a pour but de Renforcer la protection et l'utilisation durable des ressources génétiques et des connaissances traditionnelles associées en Algérie par le développement et la mise en œuvre d'un cadre national sur l'accès et le partage des avantages (APA)</p>  </div>

                <div class="col-lg-3 col-md-6 footer-links">
                    <h4>Useful Links</h4>
                    <ul>
                        <li><i class="ion-ios-arrow-right"></i> <a href="/ListRgForest">Ressources</a></li>
                        <li><i class="ion-ios-arrow-right"></i> <a href="/ListInstitution">Institutions</a></li>
                        <li><i class="ion-ios-arrow-right"></i> <a href="/affichage-lois">Lois</a></li>
                    </ul>
                </div>

                <div class="col-lg-3 col-md-6 footer-contact">
                    <h4>Contact Us</h4>
                    <p>
                        Alger Oued Smar <br>
                        16309, Oued Smar 16309<br>

                        <strong>Phone:</strong> +213658981545<br>
                        <strong>Email:</strong> info@algen.com<br>
                    </p>

                    <div class="social-links">
                        <a href="#" class="twitter"><i class="fab fa-twitter-square"></i></a>
                        <a href="#" class="facebook"><i class="fab fa-facebook-square"></i></a>
                        <a href="#" class="instagram"><i class="fab fa-instagram"></i></a>
                        <a href="#" class="google-plus"><i class="fab fa-google-plus-square"></i></a>
                        <a href="#" class="linkedin"><i class="fab fa-linkedin"></i></a>
                    </div>

                </div>

                <div class="col-lg-3 col-md-6 footer-newsletter">
                    <h4>Our Newsletter</h4>
                    <p>l a pour but de Renforcer la protection et l'utilisation durable des ressources génétiques et des connaissances traditionnelles associées en Algérie par le développement et la mise en œuvre d'un cadre national sur l'accès et le partage des avantages (APA)</p>
                    <form action="" method="post">
                        <input type="email" name="email"><input type="submit"  value="S'abonner">
                    </form>
                </div>

            </div>
        </div>
    </div>

    <div class="container">
        <div class="copyright">
            &copy; Copyright <strong>Algen</strong>. All Rights Reserved
        </div>

    </div>
</footer><!-- #footer -->

<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

<!-- JavaScript Libraries -->

<script src="js/wow.js"></script>
<script src="webjars/jquery/3.3.1/jquery.min.js"></script>
<script src="webjars/bootstrap/4.3.1/js/bootstrap.bundle.js"></script>

<script src="js/owl.carousel.js"></script>

<script src="js/isotope.pkgd.js/"></script>
<script src="js/lightbox.js"></script>
<script src="js/superfish.min.js"></script>
<script src="js/hoverIntent.js"></script>
<script src="js/counterup.min.js"></script>
<script src="js/easing.min.js"></script>
<script src="js/waypoints.min.js"></script>
<script src="js/jquery.touchSwipe.min.js"></script>

<!--











-->
<!-- Contact Form JavaScript File -->
<script src="js/contactform.js"></script>

<!-- Template Main Javascript File -->



<script src="js/main.js"></script>

</body>
</html>
