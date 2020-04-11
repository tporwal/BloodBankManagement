<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<div class="container">
    <ul id="demo1">
        
        <li>
            <img src="images/1.jpg" alt="" />

            <div class="slide-desc">
            </div>
        </li>
        <li>
            <img src="images/2.jpg" alt="" />

            <div class="slide-desc">
            </div>
        </li>
        <li>
            <img src="images/3.jpg" alt="" />
            <div class="slide-desc">
            </div>
        </li>

        <li>
            <img src="images/4.jpg" alt="" />
            <div class="slide-desc">
            </div>
        </li>
        <li>
            <img src="images/2.jpg" alt="" />
            
            <div class="slide-desc">
            </div>
        </li>

    </ul>
</div>



<div class="container">
    <div id="second" class="carouseller"> 

        <div class="carouseller__wrap"> 
            <div class="carouseller__list"> 
                <div class="car__3">
                     <img src="images/bloods/1.jpg" height="100px;" width="200px;" class="blood_group" title="Apositive">
                </div>
                <div class="car__3">
                     <img src="images/bloods/2.jpg" height="100px;" width="200px;" class="blood_group" title="Bpositive">
                </div>
                <div class="car__3">
                      <img src="images/bloods/3.jpg" height="100px;" width="200px;" class="blood_group" title="ABpositive">
                </div>
                <div class="car__3">
                       <img src="images/bloods/4.jpg" height="100px;" width="200px;" class="blood_group" title="ABnegative">
                </div>
                <div class="car__3">
                     <img src="images/bloods/5.jpg" height="100px;" width="200px;" class="blood_group" title="Opositive">
                </div>
                <div class="car__3">
                    <img src="images/bloods/6.jpg" height="100px;" width="200px;" class="blood_group" title="Onegative">
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function () {
        $('#second').carouseller({
            scrollSpeed: 300,
            autoScrollDelay: 1000,
            easing: 'linear'
        });
    });
</script>




</body>
</html>