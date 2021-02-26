<%-- 
    Document   : newjsp
    Created on : Apr 12, 2020, 5:31:36 PM
    Author     : Lenovo
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
</head>
<body>
     <header style="background-color:grey">
          <img src="Images\logo.png" style="height:80px;width:120px;">
          <nav>
	   <div class="list1">
           <ul>
           <li><a href="#hero" style="color:black;font-weight:bold">Home</a>
           <li><a href="aboutus.jsp" style="color:black;font-weight:bold">About</a>
	   <li><a href="#contact" style="color:black;font-weight:bold">Contact</a></li>
           <li><a href="#contact" style="color:black;font-weight:bold">Guidelines</a></li>
	   </ul> 
           </div>
             <div class="list2">
              <ul>
                  <li><span><u>Login</span></u></li>
                 <li style="margin-left:80%">Login as Student</li>
                 <li>Login as Admin</li>
              </ul>
             </div>
           </nav>
   </header>
          <main>
            <section>
                <div class="img">
                <img class="mySlides" src="Images\1.jpeg">
<img class="mySlides" src="Images\2.jpeg" >
<img class="mySlides" src="Images\3.jpeg">
<img class="mySlides" src="Images\4.jpeg">


<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) 
{
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2000);
}
</script>

                    
           </div>
            </section>
            
            
        </main>
        <footer>
            © Copyright Boberick The Llama, 2017
        </footer>
           
           

        
    </body>
</html>




