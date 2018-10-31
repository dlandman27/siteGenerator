<!DOCTYPE html>
<html>
    <head>
        <meta name="hhhHSEPlayersWebPage" content="Show Information">
        <link rel="stylesheet" type="text/css" href="/hhhHsePlayersWebsite/style.css">
        <link rel="stylesheet" href="../style.css" type="text/css"/>

        
</head>

<body style= "background-color: #800000; width: 100%;   height: 100%;margin: 0px;padding: 0px; overflow-x: hidden">
<header>
    <!--Top font-->
    <div class="transbox"  src="hhhHsePlayersWebsite.html" allowtransparency="true" style="   position:relative; top: 0px; left: 0px; background-image: url(images/TopBannerHHHHSEPlayers .png)">
        <font color="white" size="4"><p>HHH HSE Players</p></font>
        </div>      
    </header>
    
    
    <!----------->


    <!--Top links-->
    <div class="tab">
        <a href="/hhhHsePlayersWebsite/index.html">
            <button class="tablinks">Home</button>
        </a>
        <a href="/hhhHsePlayersWebsite/pdam.html">
        <button class="tablinks">Past Dramas and Musicals</button>
        </a>
        <a href="/hhhHsePlayersWebsite/schedule.html">
        <button class="tablinks">Schedule</button>
        </a>
        <a href="/hhhHsePlayersWebsite/thespian.html"> 
        <button class="tablinks">Thespian</button>
        </a>
        <a href="/hhhHsePlayersWebsite/stage-crew.html">
        <button class="tablinks">Stage Crew</button>
        </a>
        <a href="/hhhHsePlayersWebsite/pit-orchestra.html">
        <button class="tablinks">Pit Orchestra</button>     
        </a>
    </div>
    
   
    
   <!---------------Stage image------------------->
   <div class="imgStage">
   </div>    
   <!---------------white box------------------->
   <div class="box">
<!-------------------------------Points Sheet------------------------------------------------------------------>
    
   
 
        
   
<!------------------------------------------------------------------------------------------------------------->    

      
       <script>
        function page(evt, tabName) {
            var i, tabcontent, tablinks;
            tabcontent = document.getElementsByClassName("tabcontent");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
            }
            tablinks = document.getElementsByClassName("tablinks");
            for (i = 0; i < tablinks.length; i++) {
                tablinks[i].className = tablinks[i].className.replace(" active", "");
            }
            document.getElementById(tabName).style.display = "block";
            evt.currentTarget.className += " active";
            
        }
        
    </script>

   </div>   
   
   <div class="footer">
  <p>Designed by: Dylan Landman</p>
  <p>Mr. Petrucci Contact information: <a href="https://mail.google.com/mail/">mpetrucci@hhh.k12.ny.us</a>.</p>
</div>
</body>
</html>
