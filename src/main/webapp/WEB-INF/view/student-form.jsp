<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Form</title>

<style>
.error {
	color: red
}
</style>
</head>
<body>
	<form:form action="processForm" modelAttribute="student">
	First name: <form:input path="firstName" />
		<br>
		<br>
	Last name (*): <form:input path="lastName" />
		<form:errors path="lastName" cssClass="error" />
		<br>
		<br>

	Country: 
		<form:select path="country">
			<form:options items="${student.countryOptions}"></form:options>
		</form:select>
		<br>
		<br>
	Favorite Language:
		<br>
		<form:radiobuttons path="favoriteLanguage"
			items="${student.favoriteLanguageOptions}" />
		<br>
		<br>
	
	FreePasses: <form:input path="freePasses" />
		<form:errors path="freePasses" cssClass="error" />
		<br>
		<br>

	Postal Code: <form:input path="postalCode" />
		<form:errors path="postalCode" cssClass="error" />
		<br>
		<br>

		<input type="submit" value="Submit" />

	</form:form>

</body>
</html>