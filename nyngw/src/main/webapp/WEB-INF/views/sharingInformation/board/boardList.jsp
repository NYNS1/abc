<%@page import="com.nyngw.dto.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="com.nyngw.sharingInformation.board.BoardListView"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시판</h1>
	<input type="text"><button><a href="/sharingInformation/board/select">검색</a></button><button><a href="/sharingInformation/board/writeForm">등록</a></button>
	<table>
		<tr>
			<td><a href="/sharingInformation/board/detail">1</a></td>
			<td><a href="/sharingInformation/board/detail">2</a></td>
			<td><button><a href="/sharingInformation/board/updateForm">수정</a></button></td>
			<td><button>삭제</button></td>
		</tr>
		<tr>
			<td><a href="/sharingInformation/board/detail">3</a></td>
			<td><a href="/sharingInformation/board/detail">4</a></td>
			<td><button><a href="/sharingInformation/board/updateForm">수정</a></button></td>
			<td><button>삭제</button></td>
		</tr>
	</table>
	<c:forEach items="${boardList }" var="board">
		${board.board_number }
		${board.board_code_number }
		${board.board_title }
		${board.board_content }
		${board.board_file_name }
		${board.board_count }
		${board.board_date }
		${board.board_mem_number }
	</c:forEach>
	<%
	Integer pageNumber = (Integer)request.getAttribute("pageNumber");
	BoardListView viewData = (BoardListView)request.getAttribute("viewData");
	%>
	<table class="table table-bordered">
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>패스워드</th>
			<th>구분</th>
		</tr>
		<% if(viewData.getBoardCountPerPage()>0){
			List<BoardVO> boardList=viewData.getBoardList();
			for(int i =0; i<boardList.size();i++){
			%>
				<tr>
					<td><%=viewData.getFirstRow()+i%></td>
					<td><%=boardList.get(i).getBoard_code_number()%></td>
					<td><%=boardList.get(i).getBoard_content()%></td>
					<td><a href="deleteMemberForm?memberId=<%=boardList.get(i).getBoard_code_number()%>&page=${pageNumber}">
								삭제&nbsp;/</a> <a href="updateMemberForm?memberId=<%=boardList.get(i).getBoard_code_number()%>&page=${pageNumber}">
								&nbsp;수정</a></td>
				</tr>
			<%
			}
			%>		
					
			<%}else{ %>
				<tr>
					<td style="text-align: center;">내용이 없습니다.</td>
				</tr>
			<%} %>
	</table>

	<div id="pageNum">
		<%for(int i=1;i<viewData.getPageTotalCount()+1;i++){ %>
			<a href="/sharingInformation/board/list?page=<%=i%>">[<%=i%>]</a>
		<%} %>
	</div>
	
</body>
</html>