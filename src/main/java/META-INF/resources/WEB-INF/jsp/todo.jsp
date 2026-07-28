<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" href="<c:url value='/tailwind.css' />">
<meta charset="UTF-8">
<title>Add Todo Page</title>
</head>
<body class="min-h-screen bg-gray-50 flex items-center justify-center px-4">

  <div class="w-full max-w-sm bg-white rounded-2xl shadow-lg p-8">

    <h1 class="text-2xl font-bold text-gray-800 mb-6">
      Enter Todo Details
    </h1>

    <form:form method="post" class="space-y-4" modelAttribute="todo">

      <div>
        <label class="block text-sm font-medium text-gray-700 mb-1">Description</label>
        <form:input type="text" path="description" required="required"
          class="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm
                 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent"/>
      </div>

      <input type="submit" value="Add Todo"
        class="w-full bg-blue-600 hover:bg-blue-700 text-white font-medium
               rounded-lg px-4 py-2 text-sm cursor-pointer transition">

    </form:form>

  </div>

</body>
</html>