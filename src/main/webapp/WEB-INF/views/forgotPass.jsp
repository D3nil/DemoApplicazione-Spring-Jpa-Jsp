<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
<head>
  <title>Recupero credenziali</title>
  <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/my-style.css">

</head>
<body>
  <nav class="navbar navbar-expand-sm color ">
    <div class="container">
      
        <a href="index.jsp">
        <img src="img/Consoft-Sistemi-2017-310x175.png" width="140" height="auto"> 
        </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto txt-w">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Communicazioni</a>
          </li>
          <li class="nav-item">
            <a class="nav-link " href="#">Area Clienti</a>
          </li>
        </ul>
      </div>
      </div>
    </nav>

  <div class="container restore_password">
    <h1>Portale Fornitori Consoft</h1>
    <p>Benevnuto nell'area per il recupero delle tue credenziali d'accesso</p>

    <section>
      <p>Inserisci il tuo numero di Partita Iva</p>
      <p>Riceverai un messaggio alla mail collegata all'account con le procedure di ripristino credenziali</p>
    </section>

    <form action="" method="POST">
      <div class="form-group">
        <input class="form-control" type="text" required>
        <button type="submit" class="btn btn-primary">Invia</button>
      </div>
    </form>
  </div>


  <!-- Bootstrap Scripts -->
  <script src="js/jquery.min.js" ></script>
<script src="js/bootstrap.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" ></script>
<script src="svg-with-js/js/fontawesome-all.js" ></script>
</body>
</html>
