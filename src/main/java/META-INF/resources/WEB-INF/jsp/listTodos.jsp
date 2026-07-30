<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" href="<c:url value='/tailwind.css' />">
<meta charset="UTF-8">
<title>List Todos Page</title>
</head>
<body class="min-h-screen bg-gray-50 py-10 px-4">

  <div class="max-w-3xl mx-auto">

    <div class="flex items-center justify-between mb-6">
      <h1 class="text-2xl font-bold text-gray-800">
        Your Todos
      </h1>

      <a href="<c:url value='/add-todo' />"
        class="bg-green-600 hover:bg-green-700 text-white font-medium
               rounded-lg px-4 py-2 text-sm transition">
        + Add Todo
      </a>
    </div>

    <div class="bg-white rounded-2xl shadow-lg overflow-hidden">
      <table class="w-full text-sm">
        <thead class="bg-gray-100 text-gray-600 uppercase text-xs tracking-wide">
          <tr>
            <th class="text-left px-4 py-3">Id</th>
            <th class="text-left px-4 py-3">Description</th>
            <th class="text-left px-4 py-3">Target Date</th>
            <th class="text-left px-4 py-3">Status</th>
            <th class="text-left px-4 py-3"></th>
            <th></th>
          </tr>
        </thead>
        <tbody>
          <c:forEach items="${todos}" var="todo">
            <tr class="border-b border-gray-100 hover:bg-gray-50 transition">
              <td class="px-4 py-3 text-gray-500">${todo.id}</td>
              <td class="px-4 py-3 text-gray-800">${todo.description}</td>
              <td class="px-4 py-3 text-gray-500">${todo.targetDate}</td>
              <td class="px-4 py-3">
                <c:choose>
                  <c:when test="${todo.done}">
                    <span class="bg-green-100 text-green-700 text-xs font-medium px-2 py-1 rounded-full">Done</span>
                  </c:when>
                  <c:otherwise>
                    <span class="bg-yellow-100 text-yellow-700 text-xs font-medium px-2 py-1 rounded-full">Pending</span>
                  </c:otherwise>
                </c:choose>
              </td>
              <td><a href="delete-todo?id=${todo.id}" class="bg-red-600 hover:bg-red-700 text-white font-medium
               rounded-lg px-4 py-2 text-sm transition">DELETE</a></td>
               <td><a href="update-todo?id=${todo.id}" class="bg-blue-600 hover:bg-blue-700 text-white font-medium
               rounded-lg px-4 py-2 text-sm transition">UPDATE</a></td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>

  </div>

</body>
</html>