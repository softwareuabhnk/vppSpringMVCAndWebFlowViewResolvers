<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<body>
<h1>Here are the contents of your cart</h1>
			<ul>
			<c:forEach items="${cart}" var="nextBook">
			<li>
				<h2>${nextBook.title}</h2>
			</li>
			</c:forEach>
			</ul>		
</body>
</html>