<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table class="table mytable">
	<thead>
		<tr>
			<th>标题</th>
			<th>发布状态</th>
			<th>评论数</th>
			<th>阅读数</th>
			<th>操作</th>
			<th>操作</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${postPage.datas}" var="post" varStatus="status">
		<tr>
			<td><c:out value="${post.title}" /></td>
			<td>
				<c:choose>
					<c:when test="${post.status == '1'}">无效</c:when>
					<c:when test="${post.status == '0'}">有效</c:when>
				</c:choose>
			</td>
			<td><c:out value="${post.read_count}" /></td>
			<td><c:out value="${post.comment_count}" /></td>
			<td><a>编辑</a></td>
			<td><a>删除</a></td>
		</tr>
		</c:forEach>
	</tbody>
</table>
<ul class="pagination mypage">
	<c:choose>
		<c:when test="${postPage.pageNo!= '1'}">
			<li><a href="${ctx}/postsController/listPosts.do?pageNo=<c:out value="${postPage.pageNo-1}"/>">Prev</a></li>
		</c:when>
	</c:choose>
	<li><a href="${ctx}/postsController/listPosts.do?pageNo=<c:out value="${postPage.pageNo}"/>">
		<c:out value="${postPage.pageNo}"/></a></li>
	<!-- <c:when test="${postPage.pageNo == postPage.totalPage}">
			<li><a href="${ctx}/postsController/listPosts.do?pageNo=<c:out value="${postPage.pageNo+1}"/>">Next</a></li>
	</c:when> -->
	
</ul>