<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
   <head>
   	<title>Enter a new book</title>
   	<link href="<c:url value="/styles.css"/>" rel="Stylesheet" type="text/css"/>   
   </head>

   <body>
      <jsp:include page="/header.jsp"/>

      <div id="addBook">
        <form:form commandName="book">
	   	    <label>Enter ISBN</label><form:input path="isbn"/>	                    
		    <label>Enter Title</label><form:input path="title"/>	         	
	   		<label>Enter Author</label><form:input path="author"/>	         	
	   	 	<label>Enter Price</label><form:input path="price"/>         
	
	    	<input type="submit" value="Add New Book"/>
	 	</form:form>		   	  
      </div>
            
      <jsp:include page="/footer.jsp"/>
   </body>
</html>
