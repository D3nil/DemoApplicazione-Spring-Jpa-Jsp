<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="javax.*" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/my-style.css">

<title>Registration Page</title>
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


<div class="container-fluid">
  <div class="row">
    <div class="card-header col-lg-12" id="color-h">
        <h1 class="mb-3 text-center text-capitalize">Portale Fornitori</h1>
      </div>
      <!-- INIZIO PRIMO MAIN -->
      <div class="card card-outline-secondary col-lg-7">
        <div class="row">
          <div class="col-lg-12">
            <h2 class="mb-3 text-center text-capitalize">Area Documentazione</h2>
          </div>                        
          <div class="card-body border-dark col-lg-12 ">
            <div class="bd-example bd-example-tabs">
              <div class="row " >
                <div class="col-3" id="descript-action">
                  <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                    <a class="nav-link" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="false" ><i class="fas fa-angle-right fa-lg"></i> Registrazione Portale</a>
                    <a class="nav-link active show" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="true"><i class="fas fa-angle-right fa-lg"></i> E-Procurament</a>
                    <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false"><i class="fas fa-angle-right fa-lg"></i> Albo Fornitori</a>
                    <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false"><i class="fas fa-angle-right fa-lg"></i> Condizioni contrattuali</a>
                  </div>
                </div>
                <div class="col-9">
                  <div class="tab-content" id="v-pills-tabContent">
                    <div class="tab-pane fade" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                      <p>Cillum ad ut irure tempor velit nostrud occaecat ullamco aliqua anim Lorem sint. Veniam sint duis incididunt do esse magna mollit excepteur laborum qui. Id id reprehenderit sit est eu aliqua occaecat quis et velit excepteur laborum mollit dolore eiusmod. Ipsum dolor in occaecat commodo et voluptate minim reprehenderit mollit pariatur. Deserunt non laborum enim et cillum eu deserunt excepteur ea incididunt minim occaecat.</p>
                    </div>
                    <div class="tab-pane fade active show" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                      <p>Culpa dolor voluptate do laboris laboris irure reprehenderit id incididunt duis pariatur mollit aute magna pariatur consectetur. Eu veniam duis non ut dolor deserunt commodo et minim in quis laboris ipsum velit id veniam. Quis ut consectetur adipisicing officia excepteur non sit. Ut et elit aliquip labore Lorem enim eu. Ullamco mollit occaecat dolore ipsum id officia mollit qui esse anim eiusmod do sint minim consectetur qui.</p>
                    </div>
                    <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                      <p>Fugiat id quis dolor culpa eiusmod anim velit excepteur proident dolor aute qui magna. Ad proident laboris ullamco esse anim Lorem Lorem veniam quis Lorem irure occaecat velit nostrud magna nulla. Velit et et proident Lorem do ea tempor officia dolor. Reprehenderit Lorem aliquip labore est magna commodo est ea veniam consectetur.</p>
                    </div>
                    <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
                      <p>Eu dolore ea ullamco dolore Lorem id cupidatat excepteur reprehenderit consectetur elit id dolor proident in cupidatat officia. Voluptate excepteur commodo labore nisi cillum duis aliqua do. Aliqua amet qui mollit consectetur nulla mollit velit aliqua veniam nisi id do Lorem deserunt amet. Culpa ullamco sit adipisicing labore officia magna elit nisi in aute tempor commodo eiusmod.</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        </div>
        <!-- FINE PRIMO MAIN -->
        
        <!-- INIZIO SECONDO MAIN -->
        <div class="card card-outline-secondary col-lg-5">
            <div class="row">
            <div class="card-body border-dark form-body col-lg-10 offset-1 ">
              <div class="card-header h3 text-center">
               <h3>
               Area Registrazione
               </h3> 
              </div>
                <form class="form" role="form" id="loginForm" action="Operation" method="POST">
                  <div class="form-group col-lg-12">
                    <label for="txtPIVA">N° Partita IVA</label>
                    <input type="text" class="form-control" name="txtPIVA"  required placeholder="Inserire n° partita IVA">
                    <div class="invalid-feedback">Partita IVA non valida !</div>
                  </div>                  
                  <div class="form-group col-lg-12">
                    <label for="txtPIVA">Company</label>
                    <input type="text" class="form-control" name="txtPIVA"  required placeholder="Inserire n° partita IVA">
                    <div class="invalid-feedback">Partita IVA non valida !</div>
                  </div>                  
                  <div class="form-group col-lg-12">
                    <label for="txtPIVA">Name</label>
                    <input type="text" class="form-control" name="txtPIVA"  required placeholder="Inserire n° partita IVA">
                    <div class="invalid-feedback">Partita IVA non valida !</div>
                  </div>                  
                  <div class="form-group col-lg-12">
                    <label for="txtPIVA">2° Name</label>
                    <input type="text" class="form-control" name="txtPIVA"  required placeholder="Inserire n° partita IVA">
                    <div class="invalid-feedback">Partita IVA non valida !</div>
                  </div>                  
                  <div class="form-group col-lg-12">
                    <label for="txtPIVA">Address</label>
                    <input type="text" class="form-control" name="txtPIVA"  required placeholder="Inserire n° partita IVA">
                    <div class="invalid-feedback">Partita IVA non valida !</div>
                  </div>                  
                  <div class="form-group col-lg-12">
                    <label for="txtPIVA">Address 2</label>
                    <input type="text" class="form-control" name="txtPIVA"  required placeholder="Inserire n° partita IVA">
                    <div class="invalid-feedback">Partita IVA non valida !</div>
                  </div>                  
                  <div class="form-group col-lg-12">
                    <label for="txtPIVA">City</label>
                    <input type="text" class="form-control" name="txtPIVA"  required placeholder="Inserire n° partita IVA">
                    <div class="invalid-feedback">Partita IVA non valida !</div>
                  </div>                  
                  <div class="form-group col-lg-12">
                    <label for="txtPIVA">Post code</label>
                    <input type="text" class="form-control" name="txtPIVA"  required placeholder="Inserire n° partita IVA">
                    <div class="invalid-feedback">Partita IVA non valida !</div>
                  </div>                  
                  <div class="form-group col-lg-12">
                    <label for="txtPIVA">Country Region Code</label>
                    <input type="text" class="form-control" name="txtPIVA"  required placeholder="Inserire n° partita IVA">
                    <div class="invalid-feedback">Partita IVA non valida !</div>
                  </div>                  
                  <div class="form-group col-lg-12">
                    <label for="txtPIVA">E-mail</label>
                    <input type="text" class="form-control" name="txtPIVA"  required placeholder="Inserire n° partita IVA">
                    <div class="invalid-feedback">Partita IVA non valida !</div>
                  </div>                  
                  <div class="form-group col-lg-12">
                    <label for="txtPIVA">Phone N°</label>
                    <input type="text" class="form-control" name="txtPIVA"  required placeholder="Inserire n° partita IVA">
                    <div class="invalid-feedback">Partita IVA non valida !</div>
                  </div>                  
                  <div class="form-group col-lg-12">
                    <label for="txtPIVA">Fax N°</label>
                    <input type="text" class="form-control" name="txtPIVA"  required placeholder="Inserire n° partita IVA">
                    <div class="invalid-feedback">Partita IVA non valida !</div>
                  </div>                  
                  <div class="form-group col-lg-12">
                    <label for="txtPIVA">Blocked Qaulification</label>
                    <input type="text" class="form-control" name="txtPIVA"  required placeholder="Inserire n° partita IVA">
                    <div class="invalid-feedback">Partita IVA non valida !</div>
                  </div>                  
                  <div class="form-group col-lg-12">
                    <label for="txtPIVA">Qualification Notes</label>
                    <input type="text" class="form-control" name="txtPIVA"  required placeholder="Inserire n° partita IVA">
                    <div class="invalid-feedback">Partita IVA non valida !</div>
                  </div>                  
                <div class="form-group col-lg-12">
                <input type="hidden" value="showAdminprovider" name="action">
                  <button type="submit" class="btn btn-dark btn-lg col-lg-6 offset-3" id="btnLogin">INVIA</button>
                  </div>                   
                  <div class="form-group col-lg-12 text-center">   
                    <span class="text-dark ">Sei già registrato allora entra 
                      <a href="Control?action=showLogin" class="text-danger ">QUI</a>
                    </span>
                  </div>
                </form>
              </div>                        
            </div>
        </div>
        <!--FINE SECONDO MAIN  -->
    </div>
</div>      




<div id="footer-body">
</div>
<script src="js/jquery.min.js" ></script>
<script src="js/bootstrap.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" ></script>
<script src="svg-with-js/js/fontawesome-all.js" ></script>

</body>
</html>