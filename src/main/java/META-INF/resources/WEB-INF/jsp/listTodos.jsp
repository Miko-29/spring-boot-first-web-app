<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

  <div class="max-w-3xl mx-auto">

    <div class="flex items-center justify-between mb-6">
      <h1 class="text-2xl font-bold text-gray-800">
        Your Todos
      </h1>

      <a href="<c:url value='/add-todo' />"
        class="bg-blue-600 hover:bg-blue-700 text-white font-medium
               rounded-lg px-4 py-2 text-sm transition">
        + Add Todo
      </a>
    </div>

    <div class="bg-white rounded-2xl shadow-lg overflow-hidden">
      <table class="w-full text-sm">
        <thead class="bg-gray-100 text-gray-600 uppercase text-xs tracking-wide">
          <tr>
            <th class="text-left px-4 py-3">Description</th>
            <th class="text-left px-4 py-3">Target Date</th>
            <th class="text-left px-4 py-3">Status</th>
            <th class="text-right px-4 py-3">Actions</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach items="${todos}" var="todo">
            <tr class="border-b border-gray-100 hover:bg-gray-50 transition">
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
              <td class="px-4 py-3 text-right space-x-4">
                <a href="update-todo?id=${todo.id}"
                  class="text-sm font-medium text-blue-600 hover:text-blue-800 transition">
                  Edit
                </a>
                <a href="delete-todo?id=${todo.id}"
                  class="text-sm font-medium text-gray-400 hover:text-red-600 transition">
                  Delete
                </a>
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>

  </div>

</body>
</html>