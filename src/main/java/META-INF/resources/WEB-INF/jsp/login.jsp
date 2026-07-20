<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet" href="<c:url value='/tailwind.css' />">
</head>
<body class="min-h-screen flex items-center justify-center bg-gray-50">

  <div class="w-full max-w-sm bg-white rounded-2xl shadow-lg p-8">

    <h1 class="text-2xl font-bold text-gray-800 mb-1">Welcome back</h1>
    <p class="text-gray-500 text-sm mb-6">Log in to your todo list</p>

    <c:if test="${not empty errorMessage}">
      <div class="bg-red-50 text-red-600 text-sm rounded-lg px-4 py-2 mb-4">
        ${errorMessage}
      </div>
    </c:if>

    <form method="post" class="space-y-4">

      <div>
        <label class="block text-sm font-medium text-gray-700 mb-1">Name</label>
        <input type="text" name="name"
          class="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm
                 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent">
      </div>

      <div>
        <label class="block text-sm font-medium text-gray-700 mb-1">Password</label>
        <input type="password" name="password"
          class="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm
                 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent">
      </div>

      <input type="submit" value="Log In"
        class="w-full bg-blue-600 hover:bg-blue-700 text-white font-medium
               rounded-lg px-4 py-2 text-sm cursor-pointer transition">

    </form>

  </div>

</body>
</html>	