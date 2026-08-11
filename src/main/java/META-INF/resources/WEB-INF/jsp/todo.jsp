<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

<div class="flex items-center justify-center px-4 py-10">
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

      	 <form:errors path="description"
    class="block text-red-600 text-xs mt-1"/>
      </div>

      <div>
        <label class="block text-sm font-medium text-gray-700 mb-1">Target Date</label>
        <form:input type="text" path="targetDate" required="required"
          class="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm
                 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent"/>

      	 <form:errors path="targetDate"
    class="block text-red-600 text-xs mt-1"/>
      </div>

      <input type="submit" value="Add Todo"
        class="w-full bg-blue-600 hover:bg-blue-700 text-white font-medium
               rounded-lg px-4 py-2 text-sm cursor-pointer transition">

    </form:form>
</div>
  </div>

</body>
</html>