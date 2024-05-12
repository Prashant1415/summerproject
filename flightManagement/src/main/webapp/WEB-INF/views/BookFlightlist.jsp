<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Flights lists</title>
    <s:url var="url_css" value="static/css/flightlist.css"/>
     <link rel="stylesheet" type="text/css" href= "${url_css }"> 

  </head>

<body>
	
	
 <jsp:include page="include/menu.jsp"></jsp:include>
  <main class="" id="customers_table">
      
        <section class="table__header">
        	
            <h1> Flights</h1>
           <c:if test="${param.act eq 'saved' }">
           <p class=success> flights added successfully.</p>
           </c:if>
        
            <div class="export__file">
               
            </div>
        </section>
        <section class="table__body">
            <table>
                <thead>
                    <tr>
                    	<th> SN <span class="icon-arrow">&UpArrow;</span></th>
                        <th> FlightId <span class="icon-arrow">&UpArrow;</span></th>
                       <th> Location <span class="icon-arrow">&UpArrow;</span></th>
                        <th>  Departure Date <span class="icon-arrow">&UpArrow;</span></th>
                        <th> Time <span class="icon-arrow">&UpArrow;</span></th>
                        
                         <th> TicketPrice <span class="icon-arrow">&UpArrow;</span></th>
                         <th>Action <span class="icon-arrow">&UpArrow;</span></th>
                      
                      
        
                    </tr>
                </thead>
                <tbody>
                  <c:forEach var="f" items="${flightList}"  varStatus="st">
                    <tr>
                    
                
                    <td>${st.count }</td>
                        <td>${f.flightId }</td>
                        <td>${f.destination} to ${f.destinationTwo}</td>
                        <td>${f.departure}</td>
                        <td>${f.timeIn } -  ${f.timeOut }</td>
                        <td ><p class="status delivered">$395</p></td>
                        <s:url var="url_book" value="/user/book">
                        <s:param name="fid" value="${f.flightId }" />
                        </s:url>
                        <s:url var="url_del" value="/user/del">
                        <s:param name="fid" value="${f.flightId }" />
                        </s:url>

				
                        <td><a href="${url_book}"> Book</a>  </td>
                        
                        
                        
                        
                      
                    </tr>
                    </c:forEach> 
                    
                </tbody>
            </table>

        </section>
           </main>
   
</body>

</html>