<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Cadastro</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/salvar" method="post">
		<c:out value="${msg}" />
		<c:if test="${msg ne null }">
			<br/>
			<br/>
		</c:if>
		<input id="codigo"    name="codigo"    placeholder="codigo"    />
		<br/>
		<br/>
  		<input id="descricao" name="descricao" placeholder="descricao" />
  		<br/>
  		<br/>
  		<input id="nome"      name="nome"      placeholder="nome"      />
  		<br/>
  		<br/>
  		<input id="valor"     name="valor"     placeholder="valor"     />
  		<br/>
  		<br/>
  		<input id="duracao"   name="duracao"   placeholder="duracao em horas"   />
  		<br/>
  		<br/>
  		<input type="submit"  value="salvar"/>
	</form>
	<c:if test="${cursos ne null }">
		<table align="center" border="1" cellspacing="1" cellpadding="5" title="CURSOS CADASTRADOS" style="text-align: center;">
			<thead align="center">
				<tr>
					<td>ID</td>
					<td>NOME</td>
					<td>DESCRIÇÃO</td>
					<td>CÓDIGO</td>
					<td>DURAÇÃO</td>
					<td>VALOR</td>
				</tr>
			</thead>
			<tbody align="center">
				<c:forEach var="curso" items="${cursos }">
					<tr>
						<td><c:out value="${curso.id }"></c:out> </td>
						<td><c:out value="${curso.nome}"></c:out> </td>
						<td><c:out value="${curso.descricao }"></c:out> </td>
						<td><c:out value="${curso.codigo }"></c:out> </td>
						<td><c:out value="${curso.duracao}"></c:out> </td>
						<td><c:out value="${curso.valor}"></c:out> </td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>
</body>
</html>