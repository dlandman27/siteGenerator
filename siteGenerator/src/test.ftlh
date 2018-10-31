<!DOCTYPE html>
<html>
    <head>
        <meta name="hhhHSEPlayersWebPage" content="Show Information">
        <link rel="stylesheet" type="text/css" href="/hhhHsePlayersWebsite/style.css">
        <link rel="stylesheet" href="../style.css" type="text/css"/>

        
</head>

<body style= "background: linear-gradient(to right, #800000 19%, #ff6666 86%);; width: 100%;   height: 100%;margin: 0px;padding: 0px; overflow-x: hidden">
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
        <a href="https://calendar.google.com/calendar/b/1?cid=b2k3N2tvMHBpMWZlbW91dHA4bmI5OXJ0Y2NAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ" target="_blank">
        <button class="tablinks">Schedule</button>
        </a>

        
        <a href="/hhhHsePlayersWebsite/stage-crew.html">
        <button class="tablinks">Stage Crew</button>
        </a>
        <a href="/hhhHsePlayersWebsite/pit-orchestra.html">
        <button class="tablinks">Pit Orchestra</button>     
        </a>
<div class="dropdown">
  <button class="dropbtn">Thespian &darr;</button>
  <div class="dropdown-content">
    <a href="https://goo.gl/forms/1J60ILCUkZI2HIq43">Application</a>
    <a href="https://goo.gl/forms/EVLvdlkSJmlLNfdT2" target="_blank">Points List/Sheets</a>
    <a href="thespianSchedule.html">Meeting Schedule</a>
  </div>
</div>
<a href="https://trimhse.wixsite.com/home/documents">
                <button class="tablinks">Tri-M</button> 	
            </a>
    </div>
    
   
    
   <!---------------Stage image------------------->
   <div class="imgStage">
   </div>    
   <!---------------white box------------------->
   <div class="box pdam">
<!-------------------------------Past Dramas and musicals tab------------------------------------------------------------------>
    <div id="Show" class="tabcontent" >
    
   <h1 align="center"><font color="white">${showTitle}</h1>
        <h3 align="center">${showYear}</h3>
<font color="black">
        <div class="namesbox">
            <div class="scrolling">
<div class="box">
                    <div class="fixed"><h1 align="center"><font color="White">Cast</font></h1></div>

                    <h1 align="center"><br></h1>

            <table style="width:100%">
            
        
           
            <tr>
        
            <th align="left">Name</th>
            <th align="left">Role</th> 

          </tr>
          <#list players as p>
          <tr>
            <td>${p.name}</td>
            <td>${p.role}</td>
          </tr>
          </#list>
        </table>    
            </div>
</div>
                </div>
            </div>



        <div class="directorsbox">
            <div class="scrolling">
            <div class="box">
            <table style="width:100%">
<div class="fixed"><h1 align="center"><font color="White">Production Team</font></h1></div>
                    <h1><br></h1>
          <tr>
            <th align="left">Name</th>
            <th th align="left">Role</th> 

          </tr>
        <#list producers as t>
          <tr>
            <td>${t.name}</td>
            <td>${t.role}</td>
          </tr>
           </#list>
        </table>    
            </div>
                
            </div>
</div>
        <div class="bigurlbox">     
            </div>

   

   
          
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
<script>
window.onscroll = function() {myFunction()};

var header = document.getElementById("myHeader");
var sticky = header.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
}
</script>

   </div>   
   
   <div class="footer">
  <p>Designed by: Dylan Landman</p>
  <p>Mr. Petrucci Contact information: <a href="https://mail.google.com/mail/">mpetrucci@hhh.k12.ny.us</a>.</p>
</div>
</body>
</html>
