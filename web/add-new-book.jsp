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
         <form action="addNewBook.do" method="post"> 
   	    <label>Enter ISBN</label><input type="text" name="isbn"/>	                    
	    <label>Enter Title</label><input type="text" name="title"/>	         	
	    <label>Enter Author</label><input type="text" name="author"/>	         	
	    <label>Enter Price</label><input type="text" name="price"/>         
	
	    <input type="submit" value="Add New Book"/>
	 </form>		   	  
      </div>
            
      <jsp:include page="/footer.jsp"/>
   </body>
</html>
