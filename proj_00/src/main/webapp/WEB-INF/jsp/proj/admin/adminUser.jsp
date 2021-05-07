<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<%@ include file="../includes/adminHeader.jsp"%>

</head>

	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
			<div class="sb-sidenav-menu">
				<div class="nav">
					<div class="sb-sidenav-menu-heading">관리자 전용</div>
					<a class="nav-link" href="/admin/userList.do">
						<div class="sb-nav-link-icon">
							<i class="fas fa-users"></i>
						</div> 회원관리
					</a> <a class="nav-link" href="/admin/prodList.do">
						<div class="sb-nav-link-icon">
							<i class="fas fa-box"></i>
						</div> 상품관리
					</a>
				</div>
			</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
			<div class="container-fluid">
				<h1 class="mt-4">회원관리</h1>
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table mr-1"></i> 회원 목록
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered table-hover" id="dataTable"
								width="100%" cellspacing="0">
								<thead>
									<tr>
										<th width="60px"></th>
										<th>아이디</th>
										<th>이름</th>
										<th>비밀번호</th>
										<th width="60px">탈퇴</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${userList}" var="userList"
										varStatus="status">
										<tr>
											<td style="text-align: center;"><c:out
													value="${(param.offset*10)+status.count}" /></td>
											<td><c:out value="${userList.id}" /></td>
											<td><c:out value="${userList.name}" /></td>
											<td><c:out value="${userList.pwd}" /></td>
											<td><button class="btn btn-danger withdrawalBtn">
													<i class="fas fa-user-minus"></i>
												</button></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-12 col-md-5">
							<div class="dataTables_info" id="dataTable_info" role="status"
								aria-live="polite">
								<p id="userCount">
									총 회원수 :
									<c:out value="${userCount }" />
									명
								</p>
							</div>
						</div>
						<div class="col-sm-12 col-md-7">
							<div class="dataTables_paginate paging_simple_numbers"
								id="dataTable_paginate">
								<ul class="pagination">
									<c:choose>
										<c:when test="${param.offset == 0 }">
											<li class="paginate_button page-item previous disabled"
												id="dataTable_previous"><a href="#"
												aria-controls="dataTable" data-dt-idx="0" tabindex="0"
												class="page-link">이전</a></li>
										</c:when>
										<c:otherwise>
											<li class="paginate_button page-item previous"
												id="dataTable_previous"><a
												href="/admin/userList.do?offset=${param.offset-1 }"
												aria-controls="dataTable" data-dt-idx="0" tabindex="0"
												class="page-link">이전</a></li>
										</c:otherwise>
									</c:choose>

									<c:choose>
										<c:when test="${userCount <= (param.offset+1)*10}">
											<li class="paginate_button page-item next disabled"
												id="dataTable_next"><a
												href="/admin/userList.do?offset=${param.offset+1 }"
												aria-controls="dataTable" data-dt-idx="2" tabindex="0"
												class="page-link">다음</a></li>
										</c:when>
										<c:otherwise>
											<li class="paginate_button page-item next"
												id="dataTable_next"><a
												href="/admin/userList.do?offset=${param.offset+1 }"
												aria-controls="dataTable" data-dt-idx="2" tabindex="0"
												class="page-link">다음</a></li>
										</c:otherwise>
									</c:choose>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</main>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script src="assets/demo/datatables-demo.js"></script>
</body>
<script type="text/javascript">
	
$(".withdrawalBtn").click(function(){
	var withdrawalBtn = $(this);
	var tr = withdrawalBtn.parent().parent();
	var td = tr.children();
	var id = td.eq(1).text();
	
	if(confirm(id+"의 강제탈퇴를 진행하시겠습니까?")){
		
		$.ajax({
			url : "/admin/userForcedWithdrawal.do",
			data : {id : id},
			type : "post",
			success : function(){
				alert("강제탈퇴가 완료되었습니다.");
				location.reload();
			},
			error : function(){
				alert("error");
			}	
		});	
		
	} else {
		return;
	}
});

	

</script>
</html>
