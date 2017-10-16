<%@page import="kh.com.model.SubjectDto"%>
<%@page import="java.util.List"%>
<%@page import="java.awt.Button"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<head>
<fmt:requestEncoding value="utf-8"/>  
</head>
<body>

<section class="category-content col-sm-9">
    <h2 class="category-title">성적입력</h2> 
    <!-- 과목 리스트 탭 -->
<c:if test="${not empty subList}">
<ul class="nav nav-tabs">	
<c:forEach begin="1" end="4" step="1" var="i"></c:forEach>
	<c:forEach items="${subList }" var="sub" varStatus="vs">
  <li><a href="gradeinput.do?seq=${sub.sub_seq }">${sub.sub_name}</a></li>
  </c:forEach>
</ul>
	<form id="listform" action="scoreMassUpdate.do" method="POST">
	<input type="hidden" id="seq" name="seq" value="${param.seq }" />
		<!-- 빈값일 경우 -->
		<c:if test="${empty list}">
			<table class="assesment_table">
			<colgroup>
				<col width="300">
			</colgroup>
				<tr>
					<td>평가할 학생이 없습니다</td>
				</tr>
			</table>
		</c:if>
		<c:if test="${not empty list}">
		<table border="1" style="text-align: center">
		<colgroup>
			<col width="50">
			<col width="80">
			<col width="200">
			<col width="150">
			<col width="50">
			<col width="50">
			<col width="50">
			<col width="100">
		</colgroup>
		<tr>
			<td>과목번호</td> <td>과목이름</td> <td>학번</td> <td>학생 이름</td> <td>점수</td>
		</tr>
			<c:forEach items="${list }" var="as" varStatus="vs">
			<tr>
				<td>${as.sub_seq_num}</td>
				<td>${as.sub_name}</td>
				<td>${as.student_id}</td>
				<td>${as.student_name}</td>
				<td><input type="text" name="${as.student_id}" value="${as.student_score }" /></td>
			</tr>
			</c:forEach>
		</table>
		<button type="submit" id="grade_write">입력하기</button>
		</c:if>
	</form>
</c:if>
</section>

</body>
</html>