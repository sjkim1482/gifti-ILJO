<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Insert title here</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
	<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin_member.css"> --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin_boardFaq.css">
	
	<!-- Tell the browser to be responsive to screen width -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/all.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/adminlte.min.css">
	<!-- Google Font: Source Sans Pro -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
</head>

<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item d-none d-sm-inline-block">
        <a href="loginMainView.do?id=admin" class="nav-link">회원페이지</a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="adminUserInfo.do" class="brand-link">
      <img src="${pageContext.request.contextPath}/images/logo_w.png"
           alt="AdminLTE Logo"
           class="brand-image img-circle elevation-3"
           style= "width : 200px; box-shadow: none!important;">
      <span class="brand-text font-weight-light" style=" color: #343a40;">.</span>
    </a>
	
    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="${pageContext.request.contextPath}/images/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <span>관리자님, 반갑습니다.</span>
        </div>
      </div>

      <!-- Sidebar Menu -->
	<nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        	<li class="nav-item">
        		 <a href="adminUserInfo.do" class="nav-link">
        		 	<p>일반회원관리	</p>
        		 </a>
        	</li>
        	<li class="nav-item">
        		 <a href="Blackcuslist.do" class="nav-link">
        		 	<p>블랙리스트관리</p>
        		 </a>
        	</li>
        	<li class="nav-item">
        		 <a href="Reportlist.do" class="nav-link">
        		 	<p>신고내역조회</p>
        		 </a>
        	</li>
        	<li class="nav-item">
        		 <a href="adminSalesTotal.do" class="nav-link">
        		 	<p>매출현황</p>
        		 </a>
        	</li>
        	<li class="nav-item">
        		 <a href="adminBoard.do" class="nav-link">
        		 	<p>공지사항관리</p>
        		 </a>
        	</li>
        	<li class="nav-item">
        		 <a href="adminFAQ.do" class="nav-link">
        		 	<p>FAQ관리</p>
        		 </a>
        	</li>
        	
		</ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="rowmb-2">
          <div class="col-sm-6">
          
            <h1>FAQ관리</h1>
            <br>
            <div id="sc">
          	<input type="text" id="search" placeholder="제목을 검색하세요.">
          	<button id="sh" class="btn btn-outline-primary" onclick="sear()">검색</button>
          </div>
         <div class="FAQ">
         	
         </div>
 			
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
		<div class="member">
			<p></p>
		</div>
    </section>
    <!-- /.content -->

    <a id="back-to-top" href="#" class="btn btn-primary back-to-top" role="button" aria-label="Scroll to top">
      <i class="fas fa-chevron-up"></i>
    </a>
  </div>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
   <div class="footer_style">
      <span>Copyright ©gifti-ILJO Rights Reserved.</span>
     </div>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->


<!-- jQuery -->
<script  src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/dist/js/adminlte.min.js"></script>
<script src="${pageContext.request.contextPath}/dist/js/demo.js"></script>
</body>
<script>
count = 0;
$(function(){
	$.ajax({
		url : '/CFMS/CFMSBoardFaqlist_admin.do',
		type : 'post',
		dataType:'json',
		success : function(res){
			code = '<input type="submit" class="btn btn-outline-secondary" value="글쓰기" style=" width: 100px; height: 37px; cursor:pointer;" onclick=\"insertView();\">'+'<br>';
			code += '<br>';
			code += '<table  class="table" id="usertb">';
			code +='<tr>';
			code +='<th class="table_th">' + "번호" +'</th>';
			code +='<th class="table_th">' + "제목" +'</th>';
			/* code +='<td class="t">' + "내용" +'</td>'; */
			code +='<th class="table_th">' + "날짜" +'</th>';
			code +='</tr>';
			code +='<tbody>';
		$.each(res, function(i,v){
			if(v.classify == 'FAQ'){
				count++;
				
				code +='<tr style="cursor:pointer;">';
				code +='<td style="cursor:pointer;" onclick=\"select('+v.seq+');\">' + count + '</td>';
				code +='<td style="cursor:pointer;" onclick=\"select('+v.seq+');\">' + v.title + '</td>';
				/* code +='<td onclick=\"select('+v.seq+');\">' + v.cont + '</td>'; */
				code +='<td style="cursor:pointer;" onclick=\"select('+v.seq+');\">' + v.date + '</td>';
				code +='<tr>';
			}
		})
		code +='</tbody>';
		code +='</table>';
		
		$('.FAQ').html(code);
		},
		error : function(xhr){
			alert("상태 : " + xhr.status);
			
		}
	})

		$('#test').on('click',function(){
			location.href="board/admin_boardFaqselect.jsp";
		})
	



})
	function select(seq){
		location.href='adminBoardFAQUpdate.do?seq='+seq;
	}
	function insertView(seq){
		location.href='adminBoardFAQInsertView.do';
	}
	
	 function sear(){
			
	        var search = $("#search").val().trim();
	          $("#usertb > tbody > tr").hide();
	          var temp = $("#usertb > tbody > tr > td:contains('"+ search +"')");
	          $(temp).parent().show();
	         
	     }
</script>
</html>
      
 