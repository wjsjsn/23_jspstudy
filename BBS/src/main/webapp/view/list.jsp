<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset=UTF-8>
<title>Insert title here</title>
<style type="text/css">
#bbs table {
	width:580px;
	margin:0 auto;
	margin-top:20px;
	border: 1px solid gray;
	border-collapse: collapse;
	font-size: 14px;
}

#bbs table caption {
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 10px;
}

#bbs table th, #bbs table td {
	text-align: center;
	border: 1px solid gray;
	padding: 4px 10px;
}

.no { width: 15% }
.subject { 	width: 30% }
.writer {	width: 20% }
.reg {	width: 20% }
.hit {	width: 15% }
.title {	background: lavender }
.odd {	background: silver }

/* paging */
table tfoot ol.paging {
	list-style: none;
}

table tfoot ol.paging li {
	float: left;
	margin-right: 8px;
}

table tfoot ol.paging li a {
	display: block;
	padding: 3px 7px;
	border: 1px solid gray;
	color: gray;
	font-weight: bold;
}

table tfoot ol.paging li a:hover {
	background: lavender;
	color: white;
	font-weight: bold;
}

.disable {
	padding: 3px 7px;
	border: 1px solid silver;
	color: silver;
}

.now {
	padding: 3px 7px;
	border: 1px solid lavender;
	background: lavender;
	color: white;
	font-weight: bold;
}
</style>
<script type="text/javascript">
	function write_go() {
		location.href="/MyController?cmd=write";
	}
</script>
</head>
<body>
	<div id="bbs" align="center">
		<table summary="게시판 목록">
			<caption>게시판 목록</caption>
			<thead>
				<tr class="title">
					<th class="no">번호</th>
					<th class="subject">제목</th>
					<th class="writer">글쓴이</th>
					<th class="reg">날짜</th>
					<th class="hit">조회수</th>
				</tr>
			</thead>
			
			<tbody>
				<c:choose>
					<c:when test="${empty list}">
						<tr>
							<td colspan="5"><h2>자료가 존재하지 않습니다.</h2></td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="k" items="${list}" varStatus="vs">
							<tr>
								<td>${paging.totalRecord - ((paging.nowPage - 1)*paging.numPerPage + vs.index)}</td>
								<td><a href="/MyController?cmd=onelist&b_idx=${k.b_idx}&cPage=${paging.nowPage}">${k.subject}</a></td>
								<td>${k.writer}</td>
								<td>${k.write_date.substring(0, 10)}</td>
								<td>${k.hit}</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>

			<!-- 페이지기법 -->
			<tfoot>
				<tr>
					<td colspan="4">
						<ol class="paging">
							<!-- 이전 -->
							<c:choose>
							<%-- 시작 블록과 pagePerBlock을 비교해서 
							        시작 블록이 작으면 '이전으로'가 비활성화됨 --%>
								<c:when test="${paging.beginBlock <=  paging.pagePerBlock }">
									<li class="disable">이전으로</li>
								</c:when>
								<c:otherwise>
									<li><a href="/MyController?cmd=list&cPage=${paging.beginBlock - paging.pagePerBlock}">이전으로</a></li>
								</c:otherwise>
							</c:choose>
						    
						    <!-- 블록안에 들어간 페이지번호들 -->
						    <c:forEach begin="${paging.beginBlock}" end="${paging.endBlock }" step="1" var="k">
						    	<%-- 현재 페이지와 현재 페이지가 아닌 것으로 나누기 --%>
						    	<c:choose>
						    		<c:when test="${k == paging.nowPage}">
						    			<li class="now">${k}</li>
						    		</c:when>
						    		<c:otherwise>
						    			<li><a href="/MyController?cmd=list&cPage=${k}">${k}</a></li>
						    		</c:otherwise>
						    	</c:choose>
						    </c:forEach>
							
							<!-- 다음 -->
							<c:choose>
							<%-- 시작 블록과 pagePerBlock을 비교해서 
							        시작 블록이 작으면 '이전으로'가 비활성화됨 --%>
								<c:when test="${paging.endBlock >=  paging.totalPage}">
									<li class="disable">다음으로</li>
								</c:when>
								<c:otherwise>
									<li><a href="/MyController?cmd=list&cPage=${paging.beginBlock + paging.pagePerBlock}">다음으로</a></li>
								</c:otherwise>
							</c:choose>
						</ol>
					</td>
					<td>
					<button style="background-color: lightyellow" onclick="write_go()">글쓰기</button>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
</body>
</html>
