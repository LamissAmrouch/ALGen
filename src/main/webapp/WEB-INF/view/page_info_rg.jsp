<!doctype html>
<html lang="en">
<style>
    body , html{
        margin: 0;
        height: 100%;
        min-width: 70em;
        padding: 1em ;
        min-height: 600px;
        font-family: 'Raleway', sans-serif;
    }


    #rgListeElement
    {
        display: flex;
        justify-content: center;
        align-items: center;
        background-color:rgba(213, 243, 228, 0.8);
        width: fit-content;
        height: fit-content;
        padding: 0px;
        margin-top: 30px;
        margin-left: 30px;


    }
    #rgDiscription
    {
        color: black;
        font-family: 'Times New Roman', Times, serif;
        font-size: 1em;
        line-height: 1.6;


    }

    .rgImage{
        min-width:  35em;
        height : 15em;
        object-fit: cover;
    }

    #rgName{
        font-size: 16px;
        color: #18d26e;
        font-weight: bold

    }
    #scientificName{
        font-size: 14px;
        color: rgba(3, 39, 21, 0.8);
    }

    /*******  reg info css ***********/
    #generalInfoDive{
        display: flex;
        background-color : white;
        background-color: white;
        width: 90%;
        padding: 20px;
        margin-left: 4%
    }
    #generalInfoDive2{
        background-color : white;
        background-color: white;
        width: 90%;
        padding: 20px;
        margin-left: 4%
    }

    .rgInfoImg{
        margin-right: 0px;
        width: 18em;
        height : 30em;
        object-fit : cover;
    }

    #textInfo1{
        width: 50em;
        padding-right: 8em
    }

    .commun{
        padding: 16px;
    }

    #rgInfoName{
        font-size: 2em;
        color: #18d26e;
        font-weight: 400
    }
    #rgInfoDiscription{
        font-size: 0.8em;
        color: black;
        padding: 2em


    }
    .greenLine{
        size: 16px;
        color:  #18d26e;
    }

    .button1 {
        background-color: #4CAF50;
        border: 5px;
        width: 300px;
        border-radius: 16px;
        color: white;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
        -webkit-transition-duration: 0.4s; /* Safari */
        transition-duration: 0.4s;

    }

    .button1:hover {
        background-color:    green;
        color: white;
    }

    .btn-primary, .btn-primary:hover, .btn-primary:active, .btn-primary:visited {
        background-color:  white !important;
        border-color: #18d26e !important;
    }
</style>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="style/styleD.css" rel="stylesheet" type="text/css">
    <title>RG info previligie</title>
</head>

<body>
<section id="generalInfo" class="commun">
    <div id="generalInfoDive">
        <div id="textInfo1">
            <h1 id="rgInfoName">Cactus </h1>
            <p id="rgInfoDiscription">
                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Autem natus sunt tempora dolor, vero
                harum, voluptates id voluptatum eveniet nulla laudantium repellendus voluptatem necessitatibus
                distinctio nemo doloremque laboriosam accusantium nesciunt!
            </p>
            <hr style="height:3px; background-color: #18d26e;">
            <br>
            <div style="display: flex">
                <div>
                    <h1 id="rgInfoName">Distribution géeographique </h1>
                    <p id="rgInfoDiscription">
                        Lorem ipsum dolor sit, amet consectetur adipisicing elit
                    </p>
                </div>
                <div style="margin-left: 200px"><img src=" images/map.png" width="50px" height="50px"></div>
            </div>
            <hr style="height:3px; background-color: #18d26e;">
            <br>
            <div>
                <h1 id="rgInfoName">Clé d'identification</h1>
                <p id="rgInfoDiscription">
                    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ex voluptatem consequatur similique
                    beatae veniam natus, excepturi commodi tenetur fugit quibusdam quisquam et officiis sed
                    repudiandae praesentium vel quam aperiam adipisci.
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Quis magni impedit saepe sint velit,
                    veniam atque. Et vitae distinctio, ab iste voluptas, architecto ad obcaecati esse sequi
                    perferendis, at ut?
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam ipsa facere quaerat debitis
                    asperiores doloribus aliquam consequatur non! Culpa obcaecati asperiores eveniet voluptatem
                    dolor sunt vel repudiandae ducimus accusamus et.
                    Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quisquam dolorum ab numquam nostrum
                    ipsa, iure nisi quam tempore incidunt beatae praesentium totam molestiae culpa odio
                    necessitatibus eaque itaque. Quae, maiores.
                </p>
            </div>

        </div>

        <figure>
            <img src=" images/Gazelle_Cuvier.jpg" class="rgInfoImg">
        </figure>
    </div>
    <!--***************************************************************************************************-->
    <div id="generalInfoDive2">
        <hr style="height:3px; background-color: #18d26e;">
        <br>
        <div>
            <h1 id="rgInfoName">Alimentation </h1>
            <p id="rgInfoDiscription">
                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quasi eum facere illo dolorem
                totam, inventore, voluptatem accusantium, deleniti at ipsum similique? Error cum provident rem
                repellat quas veritatis tempore?
            </p>
        </div>
        <hr style="height:3px; background-color: #18d26e;">
        <br>

        <div>
            <h1 id="rgInfoName">Conaissance traditionel</h1>
            <p id="rgInfoDiscription">
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ex voluptatem consequatur similique
                beatae veniam natus, excepturi commodi tenetur fugit quibusdam quisquam et officiis sed
                repudiandae praesentium vel quam aperiam adipisci.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Quis magni impedit saepe sint velit,
                veniam atque. Et vitae distinctio, ab iste voluptas, architecto ad obcaecati esse sequi
                perferendis, at ut?
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam ipsa facere quaerat debitis
                asperiores doloribus aliquam consequatur non! Culpa obcaecati asperiores eveniet voluptatem
                dolor sunt vel repudiandae ducimus accusamus et.
                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quisquam dolorum ab numquam nostrum
                ipsa, iure nisi quam tempore incidunt beatae praesentium totam molestiae culpa odio
                necessitatibus eaque itaque. Quae, maiores.
            </p>
        </div>
        <hr style="height:3px; background-color: #18d26e;">
        <br>
        <div>
            <h1 id="rgInfoName">Classification </h1>
            <br>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>Règne</th>
                    <th>Sous-Règne</th>
                    <th>Division</th>
                    <th>Classe</th>
                    <th>Sous-classe</th>
                    <th>Ordre</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>Animal</td>
                    <td>lorem ipsum</td>
                    <td>lorem ipsum</td>
                    <td>lorem ipsum</td>
                    <td>lorem ipsum</td>
                    <td>john@lorem ipsum </td>
                </tr>

                </tbody>
            </table>
            <br>
        </div>
        <hr style="height:3px; background-color: #18d26e;">
        <br>
        <div>
            <h1 id="rgInfoName">Positionement géeographique </h1>

            <div style="margin-left: 200px;padding-top: 16px"><img src=" images/mapPosition.png" width="500px" height="400px" style="object-fit: cover"></div>
        </div>
    </div>
    <br>
</section>
<!--*****************************************************************-->
<section style="display: flex;justify-content: center;flex-direction: column;align-items: center; ">
    <h1 style="font-weight: 500;font-size:1.8em;padding-bottom: 16px">Voulez vous exploiter cette ressource ?</h1>
    <button class="button1" onclick="">Cliquer ici</button>
    <br><br><br><br><br>
</section>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>

</html>