<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@taglib prefix="temps" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<temps:page_template>
	<jsp:attribute name="title"><c:out value="${title}" /></jsp:attribute>
	<jsp:attribute name="page"><c:out value="${page}" /></jsp:attribute>
	
	<jsp:attribute name="content">
		<form:form method="post" modelAttribute="contact">
			<h3>Your name</h3>
			<form:errors class="alert alert-danger" element="div" path="name" />
			<form:input class="form-control" type="text" name="name" path="name"></form:input>
			<h3>Your E-mail</h3>
			<form:errors class="alert alert-danger" element="div" path="email" />
			<form:input class="form-control" type="text" name="email" path="email"></form:input>
			<h3>Your message</h3>
			<form:errors class="alert alert-danger" element="div" path="text" />
			<form:textarea class="form-control" rows="8" name="text" path="text"></form:textarea>
			<br />
			<form:button class="form-control">Send message</form:button>
		</form:form>
	</jsp:attribute>
	
	<jsp:attribute name="sidebar">
		<p><c:out value="${txt}"></c:out></p>
		example sidebar
	</jsp:attribute>
</temps:page_template>