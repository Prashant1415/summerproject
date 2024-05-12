
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/remixicon@3.4.0/fonts/remixicon.css"
      rel="stylesheet"
    />
    <s:url var="url_css" value="/static/css/user.css"/>
    <s:url var="url_header" value="/static/img/header.jpg"/>
    
    <link href="${url_css }" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.2/themes/start/jquery-ui.css" type="text/css" media="all" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.2/jquery-ui.min.js" type="text/javascript"></script>
    <title>User Dashboard</title>
  </head>
  <body>
  <s:url var="url_logout" value="/logout"/>
    <s:url var="url_reg" value="/regx"/>
    <s:url var="url_home" value="/home"/>
    <s:url var="url_bookFlight" value="/bookFlight"/>
     <!-- for  navbar -->
      <jsp:include page="include/menu.jsp"></jsp:include>
    
    <header class="section__container header__container">
      <h1 class="section__header">Your <br />Dashboard</h1>
      <img src="${url_header }" alt="header" />
    </header>

    <section class="section__container booking__container">
      <div class="booking__nav">
        <span>Economy Class</span>
        <span>Business Class</span>
        <span>First Class</span>
      </div>
     
   

<form action="<s:url value="/dataSearch"/> " method="post" >
        <div class="form__group">
          <span><i class="ri-map-pin-line"></i></span>
          <div class="input__content">
            <div class="input__group">
           <input type="text" name="freeText" placeholder="From">
             
            </div>
            <p>Where are you?</p>
          </div>
        </div>
        
                <div class="form__group">
          <span><i class="ri-map-pin-line"></i></span>
          <div class="input__content">
            <div class="input__group">
            <input type="text"  name="freeText2" placeholder="To">
             
            </div>
            <p>Where are you going?</p>
          </div>
        </div>
        
      
        <div class="form__group">
          <span><i class="ri-calendar-line"></i></span>
          <div class="input__content">
            <div class="input__group">
              <input type="text" id="txtDateFrom" name="freeText3" placeholder="DepartureTime"/>
             
            </div>
            <p>Add date</p>
          </div>
        </div>
        <div class="form__group">
          <span><i class="ri-calendar-line"></i></span>
          <div class="input__content">
            <div class="input__group">
              <input type="text" id="txtDateTo"  placeholder="ReturnTime"/>
            
            </div>
            <p>Add date</p>
          </div>
        </div>
<%--         <div class="form__group">
           <span><i class="ri-user-3-line"></i></span>
          <div class="input__content">
            <div class="input__group">
              <input type="text"  placeholder="Traveler" />
             
            </div>
            <p>Where are you going?</p>
          </div>
        </div>
 --%>        
        <button class="btn"><i class="ri-search-line"> Search</i></button>
      </form> 
    </section>  

   

    <footer class="footer">
    <jsp:include page="include/footer.jsp"></jsp:include>
          </footer>
  </body>
      <script type="text/javascript">
        $(document).ready(function () {
            $('#txtDateFrom,#txtDateTo').datepicker({
                changeYear: true,
                beforeShow: function (textbox, instance) {
                instance.dpDiv.css({
                    marginTop: (-textbox.offsetHeight) + 'px',
                    marginLeft: textbox.offsetWidth + 'px'
                });
                }
            });
        });
    </script>
  
</html>
