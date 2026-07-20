<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" href="<c:url value='/tailwind.css' />">
<meta charset="UTF-8">
<title>Add Todo Page</title>
</head>
<body class="min-h-screen bg-gray-50 py-10 px-4">

  <div class="max-w-3xl mx-auto">

    <div class="flex items-center justify-between mb-6">
      <h1 class="text-2xl font-bold text-gray-800">
        Enter Todos Details
      </h1>
      <form method="post">
      	Description: <input type="text" name="description"/>
      	<input type="submit" class="btn">
      </form>
    </div>

    

  </div>

</body>
</html>