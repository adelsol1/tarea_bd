<?php include "header.php"; ?>
<!-- home section -->
<div id="home">
  <div class="container">
    <div class="row">
        <h2>Bienvenidos</h2>
        <h1>RENNAB <strong>Sitema Informático UC</strong></h1>
        <p>Ya se encuentra publicada la Programación Académica del primer semestre 2016, y la TAV 2016, en el Buscador de Cursos. Antes de comenzar la inscripción de cursos, debes elaborar una lista con los cursos que deseas inscribir y sus alternativas en caso de no encontrar vacantes disponibles, anotando los NRC (código de curso-sección) que se requieren para solicitar cursos durante la inscripción.
Los horarios de inscripción de cursos para la TAV y el primer semestre 2016 ya se encuentran publicados en Mi Portal UC (revisa acá un tutorial para conocer tu horario y status de inscripción).
Recuerda que a partir de ahora el Buscador de Cursos te permitirá visualizar las vacantes programadas indicando el tipo de reserva, en caso de existir, y cuantas de ellas ya han sido utilizadas, durante la inscripción de cursos. Si deseas saber más de las mejoras que se han aplicado al proceso de inscripción de cursos, entra a esta página.</p>
        <a href="busca_cursos.php" class="btn btn-default smoothScroll">BUSCA CURSOS</a>
    </div>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-md-1 col-sm-1"></div>
    <div class="col-md-10 col-sm-10">
      <hr>
    </div>
    <div class="col-md-1 col-sm-1"></div>
  </div>
</div>

<!-- mis_cursos section -->
<div id="mis_cursos">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12">
        <h2>Mis Cursos</h2>
      </div>

    <?php
    try {
      $db = new PDO("pgsql:dbname=grupo18;host=localhost;port=5432;user=grupo18;password=grupo18");
      }
    catch(PDOException $e) {
      echo $e->getMessage();
      }
    $myusername = $_SESSION['myusername'];
    $query=
      "SELECT curso.nombre, icurso.sigla, icurso.ano, icurso.semestre, inscribe.nota
      FROM curso, icurso, inscribe
      WHERE icurso.curso_id = inscribe.curso_id
      AND icurso.sigla = curso.sigla
      AND inscribe.username = '" . $myusername . "'
      ORDER BY icurso.ano,icurso.semestre;";
    echo "<table border='1' align='center' text-align='center' margin='100' style='width:70%'
      <tr>
        <th style='text-align:center'>Nombre</th>
        <th style='text-align:center'>Sigla</th>
        <th style='text-align:center'>Año</th>
        <th style='text-align:center'>Semestre</th>
        <th style='text-align:center'>Nota</th>
      </tr>";
    foreach($db->query($query) as $row){
      echo "<tr>
        <td style='text-align:center'>" . $row[0] . "</td>
        <td style='text-align:center'>" . $row[1] . "</td>
        <td style='text-align:center'>" . $row[2] . "</td>
        <td style='text-align:center'>" . $row[3] . "</td>
        <td style='text-align:center'>" . $row[4] . "</td>
        </tr>";
    }
    echo "</table>";
    ?>
  </div>
</div>
<!-- divider section -->
<div class="container">
  <div class="row">
      <div class="col-md-1 col-sm-1"></div>
      <div class="col-md-10 col-sm-10">
        <hr>
      </div>
    <div class="col-md-1 col-sm-1"></div>
  </div>
</div>
      <!-- RENNAB section -->
<div id="RENNAB">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12">
        <h2>BENEFICIOS RENNAB UC</h2>
      </div>
      <img src="../images/Beneficios.png" class="img-responsive" alt="about img">
    </div>
  </div>
</div>

<?php include "footer.php"; ?>