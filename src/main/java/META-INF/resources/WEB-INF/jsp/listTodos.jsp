<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
</head>
<body>
	<div>Welcome ${name}</div>
	<table class="table-auto border-collapse w-full">
	<thead>
  	<tr>
  		<th>Id</th>
  		<th>Description</th>
  		<th>Target Date</th>
  		<th>Is Done?</th>
  	</tr>
  </thead>
  <c:forEach items="${todos}" var="todo">
  
    <tr class="border-b">
    <td class="px-4 py-2">${todo.id}</td>
      <td class="px-4 py-2">${todo.description}</td>
      <td class="px-4 py-2">${todo.targetDate}</td>
      <td class="px-4 py-2">${todo.done}</td>
    </tr>
  </c:forEach>
</table>
</body>
</html> 	