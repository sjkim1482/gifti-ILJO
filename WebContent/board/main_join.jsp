<%@page import="kr.or.ddit.cfms.vo.CustomerVO"%>
<%@page import="kr.or.ddit.cfms.vo.ProductVO"%>
<%@page import="kr.or.ddit.cfms.vo.ProlistVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>

<html>

<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"> 
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main_login.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mainbbbb.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/extra.css" />
	<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/images/favicon3_105_icon.ico">
	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	
	<title>gifti_ILJO</title>
	
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>gifti_ILJO</title>

<script>
// 	var modal = document.getElementById('id01');

// 	window.onclick = function(event) {
// 		if (event.target == modal) {
// 			modal.style.display = "none";
// 		}
// 	}
</script>





<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>gifti_ILJO</title>

<script>
// 	var modal = document.getElementById('id01');

// 	window.onclick = function(event) {
// 		if (event.target == modal) {
// 			modal.style.display = "none";
// 		}
// 	}
</script>

<style>
.main_slide {
    width: 0;
}
.fadeShow { 
background: #666;
width: 100%;
height: 370px;       
}
.fadeShow img{position:absolute;}
.fadeShow .active{
    z-index:1;
}
</style>




</head>
<body>
	<%
		CustomerVO custVo = (CustomerVO)request.getAttribute("userinfo");
		List<String> cateList = (List<String>)request.getAttribute("category");
		List<String> brandList = (List<String>)request.getAttribute("brand");
		List<String> priceList = (List<String>)request.getAttribute("price");
		
		int endNum = (Integer)request.getAttribute("endnum");
		
		String zeroCheck = "";
		
		if(endNum==0 ){
			zeroCheck="style='display:none;'";
		}
		
		String adminCheck = "";
		if(!"admin".equals(custVo.getCus_id())){
			adminCheck ="style='display:none;'";
		}
		
		String bandd="";
		String coffee="";
		String conv="";
		String pizch="";
		String fast="";
		
		String pari = "";
		String dunkin = "";
		String starbuc = "";
		String megaco = "";
		String gs25 = "";
		String emart24 = "";
		String domino = "";
		String bbq = "";
		String macdo = "";
		String subway = "";
		
		String p1 = "";
		String p2 = "";
		String p3 = "";
		String p4 = "";
		String p5 = "";
		
		
		if(cateList!=null){
			for(int i=0; i<cateList.size(); i++){
				if(cateList.get(i).equals("????????????/??????")){
					bandd="checked";
				}
				if(cateList.get(i).equals("??????/??????")){
					coffee="checked";
				}
				if(cateList.get(i).equals("?????????")){
					conv="checked";
				}
				if(cateList.get(i).equals("??????/??????")){
					pizch="checked";
				}
				if(cateList.get(i).equals("???????????????")){
					fast="checked";
				}
			}
		}
		
		if(brandList!=null){
			for(int i=0; i<brandList.size(); i++){
				if(brandList.get(i).equals("???????????????")){
					pari="checked";
				}
				if(brandList.get(i).equals("??????")){
					dunkin="checked";
				}
				if(brandList.get(i).equals("????????????")){
					starbuc="checked";
				}
				if(brandList.get(i).equals("????????????")){
					megaco="checked";
				}
				if(brandList.get(i).equals("GS25")){
					gs25="checked";
				}
				if(brandList.get(i).equals("?????????24")){
					emart24="checked";
				}
				if(brandList.get(i).equals("???????????????")){
					domino="checked";
				}
				if(brandList.get(i).equals("BBQ")){
					bbq="checked";
				}
				if(brandList.get(i).equals("????????????")){
					macdo="checked";
				}
				if(brandList.get(i).equals("????????????")){
					subway="checked";
				}
			}
		}
		
		if(priceList!=null){
			for(int i=0; i<priceList.size(); i++){
				if(priceList.get(i).equals("3000")){
					p1="checked";
				}
				if(priceList.get(i).equals("5000")){
					p2="checked";
				}
				if(priceList.get(i).equals("10000")){
					p3="checked";
				}
				if(priceList.get(i).equals("30000")){
					p4="checked";
				}
				if(priceList.get(i).equals("50000")){
					p5="checked";
				}
			}
		}
		
	
	%>
	<div id="container">
		<div id="content_wrap">
		
			<!-- header ?????? -->
			<div class="header">
			
				<!-- navbar ?????? -->
				<div id="navbar">
					<div class="inner">
						<div class="logo">

							<h1><a href="http://localhost/CFMS/loginMainView.do?id=<%=custVo.getCus_id()%>">gifti-ILJO</a></h1>

						</div>
						<div class="search">
							<form action="searchProduct.do" id="searchProduct" method="post">
								
								<input type="text" name="id" value="<%=custVo.getCus_id()%>" hidden="">
								<input type='text' class="search_area" id='search' name='search' placeholder="????????????????????? ???????????? ????????? ??????????????????.">
								<label for=""><a href="#" onclick="document.getElementById('searchProduct').submit();" class="btn_sch"><img src="${pageContext.request.contextPath}/images/search.png" alt="??????"></a></label>
							</form>	
						</div>
						<div class="right_menu">
							<p><a id="cust_on" href="#all_products">??????</a></p>
							<p><a OnClick="location.href ='customerService.do?id=<%=custVo.getCus_id()%>'">????????????</a></p>
						</div>
						
							
						
						
					</div>
				</div>	
				<!-- navbar ??? -->
				
				<!-- loginbar before ?????? -->
				<div class="loginbar_wrap before" style="display:none;">
					<ul>
						<li class ="loginbar"><a data-toggle="modal" href="#id01">?????????</a></li>


						<li class ="loginbar"><a href="${pageContext.request.contextPath}/board/main_joinmember.jsp" class="bar">????????????</a></li>

					</ul>
				</div>
				<!-- loginbar before ??? -->
				
				<!-- loginbar after ?????? -->
				<div class="loginbar_wrap after">
					<ul>
						<li class ="loginbar"><a href="myPageInfo.do?id=<%=custVo.getCus_id()%>"><%=custVo.getNicknm()%>???(<%=custVo.getPoint()%>P)</a></li>
						<li class ="loginbar"><a href="myPageInfo.do?id=<%=custVo.getCus_id()%>" class="bar">???????????????</a></li>
						<li class ="loginbar"><a href="productInfo.do?id=<%=custVo.getCus_id()%>" class="bar">????????????</a></li>
						<li class ="loginbar"><a href="chargeInfo.do?id=<%=custVo.getCus_id()%>" class="bar">???????????????</a></li>
						<li id="admin_title" class ="loginbar" <%=adminCheck %>><a href="adminUserInfo.do" class="bar">????????? ?????????</a></li>
						<li class ="loginbar"><a href="logOut.do?id=<%=custVo.getCus_id()%>" class="bar">????????????</a></li>
					</ul>
				</div>
				<!-- loginbar after ??? -->
				
			</div>
			<!-- header ??? -->
			
			
			<!-- body ?????? -->
			<div class="body">
			
				<!-- main_slide ?????? -->
				<div class="main_slide">
				
					<div class="fadeShow">
					     <img class="active" src="${pageContext.request.contextPath}/images/main_slide1.jpg" alt="image1" />
					     <img src="${pageContext.request.contextPath}/images/main_slide3.jpg" alt="image2" />
					     <img src="${pageContext.request.contextPath}/images/123.jpg" alt="image3" />
					</div>
					
					
					<script>
					var showImg, nextImg;
					function fadeInOut(){
					   
					   showImg = $(".fadeShow img:eq(0)");
					   nextImg = $(".fadeShow img:eq(1)");
					   nextImg.addClass("active");
					   nextImg.css("opacity","0")
					    .animate({opacity:1},500, 
				    		function() {     
					         $(".fadeShow").append( showImg );  
					      showImg.removeClass("active");  
					    });
					}
					var timer = setInterval("fadeInOut()",5000);
					$(".fadeShow").hover( 
					    function() {
					    clearInterval(timer)
					 }, 
					 function(){
					    timer = setInterval("fadeInOut()",5000);
					    }
					);
					</script>
				
				
					
				</div>
				<!-- main_slide ??? -->
				
				<!-- all_products ?????? -->
				<div class="all_products" id="all_products">
					<h3>????????????</h3>
					
					<!-- filter ?????? -->
					<div class="filter">
						<form action="category.do" id="checkedCate" method="post">
							<input type="text" name="id" value="<%=custVo.getCus_id()%>" hidden="">
							<dl class="filter_category">
								<dt>????????????</dt>
								<dd>
									<ul>
										<li class="category">
											<input onchange="document.getElementById('checkedCate').submit();" type="checkbox" <%=bandd%> name="Category" value="????????????/??????" id="A1">
											<label for="A1">????????????/??????</label>
										</li>
										<li class="category">
											<input onchange="document.getElementById('checkedCate').submit();" type="checkbox" <%=coffee %> name="Category" value="??????/??????" id="A2">
											<label for="A2">??????/??????</label>
										</li>
										<li class="category">
											<input onchange="document.getElementById('checkedCate').submit();" type="checkbox" <%=conv %>  name="Category" value="?????????" id="A3">
											<label for="A3">?????????</label>
										</li>
										<li class="category">
											<input onchange="document.getElementById('checkedCate').submit();" type="checkbox" <%=pizch %> name="Category" value="??????/??????" id="A4">
											<label for="A4">??????/??????</label>
										</li>
										<li class="category">
											<input onchange="document.getElementById('checkedCate').submit();" type="checkbox" <%=fast %> name="Category" value="???????????????" id="A5">
											<label for="A5">???????????????</label>
										</li>
									</ul>
								</dd>
							</dl>
														
							<dl>
								<dt>?????????</dt>
								<dd class="filter_brand">
									<ul>
									<li class="brand">
										<input onchange="document.getElementById('checkedCate').submit();" type="checkbox"<%=pari %> name="Brand" value="???????????????" id="B1">
										<label for="B1">???????????????</label>
									</li>
									<li class="brand">
										<input onchange="document.getElementById('checkedCate').submit();" type="checkbox" <%=dunkin %> name="Brand" value="??????" id="B2">
										<label for="B2">??????</label>
									</li>
									<li class="brand">
										<input onchange="document.getElementById('checkedCate').submit();" type="checkbox" <%=starbuc %> name="Brand" value="????????????" id="B3">
										<label for="B3">????????????</label>
									</li>
									<li class="brand">
										<input onchange="document.getElementById('checkedCate').submit();" type="checkbox" <%=megaco %> name="Brand" value="????????????" id="B4">
										<label for="B4">????????????</label>
									</li>
									<li class="brand">
										<input onchange="document.getElementById('checkedCate').submit();" type="checkbox" <%=gs25 %> name="Brand" value="GS25" id="B5">
										<label for="B5">GS25</label>
									</li>
									<li class="brand">
										<input onchange="document.getElementById('checkedCate').submit();" type="checkbox" <%=emart24 %> name="Brand" value="?????????24" id="B6">
										<label for="B6">?????????24</label>
									</li>
									<li class="brand">
										<input onchange="document.getElementById('checkedCate').submit();" type="checkbox" <%=domino %> name="Brand" value="???????????????" id="B7">
										<label for="B7">???????????????</label>
									</li>
									<li class="brand">
										<input onchange="document.getElementById('checkedCate').submit();" type="checkbox" <%=bbq %> name="Brand" value="BBQ" id="B8">
										<label for="B8">BBQ</label>
									</li>
									<li class="brand">
										<input onchange="document.getElementById('checkedCate').submit();" type="checkbox" <%=macdo %> name="Brand" value="????????????" id="B9">
										<label for="B9">????????????</label>
									</li>
									<li class="brand">
										<input onchange="document.getElementById('checkedCate').submit();" type="checkbox" <%=subway %> name="Brand" value="????????????" id="B10">
										<label for="B10">????????????</label>
									</li>
								</ul>
								</dd>
							</dl>
					
							<dl class="filter_price">
								<dt>??????</dt>
								<dd>
									<ul>
									<li class="price">
										<input onchange="document.getElementById('checkedCate').submit();" type="checkbox" <%=p1 %> name="Price" value="3000" id="C1">
										<label for="C1">3????????????</label>
									</li>
									<li class="price">
										<input onchange="document.getElementById('checkedCate').submit();" type="checkbox" <%=p2 %> name="Price" value="5000" id="C2">
										<label for="C2">3????????????-5????????????</label>
									</li>
									<li class="price">
										<input onchange="document.getElementById('checkedCate').submit();" type="checkbox" <%=p3 %> name="Price" value="10000" id="C3">
										<label for="C3">5????????????-1????????????</label>
									</li>
									<li class="price">
										<input onchange="document.getElementById('checkedCate').submit();" type="checkbox" <%=p4 %> name="Price" value="30000" id="C4">
										<label for="C4">1????????????-3????????????</label>
									</li>
									<li class="price">
										<input onchange="document.getElementById('checkedCate').submit();" type="checkbox" <%=p5 %> name="Price" value="50000" id="C5">
										<label for="C5">3????????????</label>
									</li>
								</ul>
								</dd>
							</dl>
						</form>
					</div>
					<!-- filter ??? -->
					

					
					<!-- DB??? ????????? ?????? ???????????? ???????????? ?????? -->
					<div class="products">
						
					
						<ul class="product_ul">
						<%
							List<ProlistVO> proList = (List<ProlistVO>)request.getAttribute("prolist");
							List<ProductVO> prodList = (List<ProductVO>)request.getAttribute("prodlist");
							if(prodList.size()!=0){	
							//for(int i = proList.size()-1; i>=0; i--){			
							for(int i = 0; i<proList.size(); i++){
								
								
								ProlistVO proVo = proList.get(i);
								ProductVO prodVo = prodList.get(i);
								int no = prodVo.getList_num();

								
								int pie = (int)Math.round(prodVo.getPro_pr()*100.0/prodVo.getRet_pr());
								
								pie = 100-pie;

						
						%>
						
						<!-- http://199.999.999(????????????ip)/?????????  ????????????/aaa.jpg
						D:\D_Other\uploadImage -->
						
						
						<li class="product"  OnClick="location.href ='productView.do?num=<%=no%>&id=<%=custVo.getCus_id()%>'" style="cursor:pointer;">
							 
							<!-- <img id="test" src="http://192.168.42.46/imageResponse.jsp" > -->
							<%-- <img alt="??????" src="${pageContext.request.contextPath}/images/coffee.jpg"> --%>
							<div class="product_wrapper">
								<div class="product_img">
									
									<%
										if(prodVo.getBrand().equals("???????????????")){
									%>
									
									<img id="image" src="${pageContext.request.contextPath}/images/paris.jpg" alt="???????????????">

									<%
										}else if(prodVo.getBrand().equals("??????")){
									%>	

									<img id="image" src="${pageContext.request.contextPath}/images/dunkin.jpg" alt="??????">

									<%
										}else if(prodVo.getBrand().equals("????????????")){
									%>			

									<img id="image" src="${pageContext.request.contextPath}/images/star.jpg" alt="????????????">
									
									<%
										}else if(prodVo.getBrand().equals("????????????")){
									%>			

									<img id="image" src="${pageContext.request.contextPath}/images/mega.jpg" alt="????????????">
									
									<%
										}else if(prodVo.getBrand().equals("GS25")){
									%>			

									<img id="image" src="${pageContext.request.contextPath}/images/gs25.jpg" alt="GS25">
									
									<%
										}else if(prodVo.getBrand().equals("?????????24")){
									%>			

									<img id="image" src="${pageContext.request.contextPath}/images/emart.jpg" alt="?????????24">
									
									<%
										}else if(prodVo.getBrand().equals("???????????????")){
									%>			

									<img id="image" src="${pageContext.request.contextPath}/images/domino.jpg" alt="???????????????">
									
									<%
										}else if(prodVo.getBrand().equals("BBQ")){
									%>			

									<img id="image" src="${pageContext.request.contextPath}/images/bbq.jpg" alt="BBQ">
									
									<%
										}else if(prodVo.getBrand().equals("????????????")){
									%>			

									<img id="image" src="${pageContext.request.contextPath}/images/mcdonald.jpg" alt="????????????">
									
									<%
										}else if(prodVo.getBrand().equals("????????????")){
									%>			

									<img id="image" src="${pageContext.request.contextPath}/images/subway.jpg" alt="????????????">
									
									<%
										}
									%>
								
									<p class="sale">SALE <%=pie %>%</p>
								</div>
								<div class="product_txt">
									<p class="product_before_price"><%=prodVo.getRet_pr()%></p>
									<p class="product_price"><%=prodVo.getPro_pr() %></p>
									<p class="product_name"><%=prodVo.getPro_nm() %></p>
									<p class="product_brand"><%=prodVo.getBrand() %></p>
									<p class="product_status"><%=proVo.getSel_check()%></p>
								</div>
							</div>
						</li>
						
						<% 
							}

							}
						%> 

						</ul> 

					</div> 
					<!-- products ??? -->
					<%int nextNum = endNum + 12; %>
					<form class="more" action="loginMainView.do" method="post">
						<input type="text" name="id" value="<%=custVo.getCus_id()%>" hidden="">
						<input type="text" name="endnum" value="<%=nextNum%>" hidden="">
						<div class="more_btn">
							<button class="more_wrapper" type="submit" <%=zeroCheck %> >
							<img class ="more_btn" src="${pageContext.request.contextPath}/images/arrow.png" alt="" >
							</button>
						</div>
					</form>
					
					<div class="push"></div>
					
				</div>
				<!-- all_products ??? -->
				
			</div>
			<!-- body ??? -->
			
		</div>
		<!-- content_wrap ??? -->
		<div class="push"></div>
	
		<!-- 	????????????????????? ?????? -->
		<div class="floatinglogos">
	        <ul class="logoitemgroup firsttrain">
	            <!-- ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:3rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/CU??????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/CGV??????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:5.2rem; height:5.2rem; position:relative; top:2rem; margin:0.5rem 0.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/11?????? ??????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/11?????? ??????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:2rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/??????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/??????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:2.5rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:5.2rem; height:5.2rem; position:relative; top:1.5rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/???????????????png.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/???????????????png.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1rem; margin:0.5rem 1.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:2rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/??????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/??????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:2rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:1.5rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/?????????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/?????????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:5.2rem; height:5.2rem; position:relative; top:2rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:5.2rem; height:5.2rem; position:relative; top:1.5rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:3rem; margin:0.5rem 0.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/???????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/???????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:2rem; margin:0.5rem 1.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/?????????1.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/?????????1.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:2rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/CGV??????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:5.2rem; height:5.2rem; position:relative; top:1.5rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/11?????? ??????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/11?????? ??????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1.5rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/??????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/??????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:5.2rem; height:5.2rem; position:relative; top:2rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:5.2rem; height:5.2rem; position:relative; top:3rem; margin:0.5rem 0.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:5.2rem; height:5.2rem; position:relative; top:1rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/???????????????png.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/???????????????png.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1.5rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:2rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/??????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/??????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:3rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:2rem; margin:0.5rem 1.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/?????????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/?????????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:2rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:5.2rem; height:5.2rem; position:relative; top:1.5rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:1.5rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/???????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/???????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:2rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/?????????1.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/?????????1.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:3rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/?????????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/CGV??????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:1rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/11?????? ??????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/11?????? ??????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/??????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/??????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:2.5rem; margin:0.5rem 1.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1rem; margin:0.5rem 0.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:5.2rem; height:5.2rem; position:relative; top:1.5rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/???????????????png.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/???????????????png.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1.5rem; margin:0.5rem 1.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/??????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/??????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1.5rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:5.2rem; height:5.2rem; position:relative; top:1rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/?????????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/?????????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:2rem; margin:0.5rem 0.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:2.5rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:3rem; margin:0.5rem 0.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/???????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/???????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:3rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/?????????1.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/?????????1.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:2.5rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/?????????????????????.png" type="image/svg+xml" src="assets/img/pg/inicis/color_1x1.svg">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:3rem; margin:0.5rem 1.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/11?????? ??????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/11?????? ??????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:2.5rem; margin:0.5rem 0.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/??????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/??????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:2rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:2rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:1rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/???????????????png.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/???????????????png.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:2rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:3rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/??????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/??????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:2.5rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/?????????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/?????????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:2.5rem; margin:0.5rem 0.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:3rem; margin:0.5rem 1.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:3rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/???????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/???????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1.5rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/?????????1.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/?????????1.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:5.2rem; height:5.2rem; position:relative; top:2rem; margin:0.5rem 2.1rem">
	                    <img ng-src="assets/img/pg/inicis/color_1x1.svg" type="image/svg+xml" src="assets/img/pg/inicis/color_1x1.svg">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1.5rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/11?????? ??????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/11?????? ??????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:1.5rem; margin:0.5rem 0.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/??????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/??????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:5.2rem; height:5.2rem; position:relative; top:1.5rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1rem; margin:0.5rem 0.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/???????????????png.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/???????????????png.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:3rem; margin:0.5rem 1.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:2rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/??????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/??????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:3rem; margin:0.5rem 0.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:1rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/?????????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/?????????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:3rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:2rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:3rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/???????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/???????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:1.5rem; margin:0.5rem 1.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/?????????1.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/?????????1.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems -->
	        </ul>
	        <ul class="logoitemgroup secondtrain">
	            <!-- ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:3rem; margin:0.5rem 1.1rem">
	                    <img ng-src="assets/img/pg/inicis/color_1x1.svg" type="image/svg+xml" src="assets/img/pg/inicis/color_1x1.svg">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:5.2rem; height:5.2rem; position:relative; top:2rem; margin:0.5rem 0.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/11?????? ??????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/11?????? ??????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:2rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/??????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/??????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:2.5rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:5.2rem; height:5.2rem; position:relative; top:1.5rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/???????????????png.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/???????????????png.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1rem; margin:0.5rem 1.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:2rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/??????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/??????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:2rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:1.5rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/?????????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/?????????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:5.2rem; height:5.2rem; position:relative; top:2rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:5.2rem; height:5.2rem; position:relative; top:1.5rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:3rem; margin:0.5rem 0.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/???????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/???????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:2rem; margin:0.5rem 1.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/?????????1.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/?????????1.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:2rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/CGV??????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/CGV??????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:5.2rem; height:5.2rem; position:relative; top:1.5rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/11?????? ??????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/11?????? ??????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1.5rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/??????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/??????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:5.2rem; height:5.2rem; position:relative; top:2rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:5.2rem; height:5.2rem; position:relative; top:3rem; margin:0.5rem 0.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:5.2rem; height:5.2rem; position:relative; top:1rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/???????????????png.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/???????????????png.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1.5rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:2rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/??????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/??????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:3rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:2rem; margin:0.5rem 1.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/?????????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/?????????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:2rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:5.2rem; height:5.2rem; position:relative; top:1.5rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:1.5rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/???????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/???????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:2rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/?????????1.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/?????????1.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:3rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/?????????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/CGV??????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:1rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/11?????? ??????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/11?????? ??????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/??????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/??????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:2.5rem; margin:0.5rem 1.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1rem; margin:0.5rem 0.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:5.2rem; height:5.2rem; position:relative; top:1.5rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/???????????????png.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/???????????????png.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1.5rem; margin:0.5rem 1.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/??????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/??????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1.5rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:5.2rem; height:5.2rem; position:relative; top:1rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/?????????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/?????????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:2rem; margin:0.5rem 0.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:2.5rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:3rem; margin:0.5rem 0.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/???????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/???????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:3rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/?????????1.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/?????????1.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:2.5rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/SK??????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/CGV??????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:3rem; margin:0.5rem 1.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/11?????? ??????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/11?????? ??????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:2.5rem; margin:0.5rem 0.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/??????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/??????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:2rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:2rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:1rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/???????????????png.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/???????????????png.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:2rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:3rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/??????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/??????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:2.5rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/?????????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/?????????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:2.5rem; margin:0.5rem 0.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:3rem; margin:0.5rem 1.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:3rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/???????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/???????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1.5rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/?????????1.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/?????????1.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:5.2rem; height:5.2rem; position:relative; top:2rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/CGV??????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/CGV??????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1.5rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/11?????? ??????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/11?????? ??????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:1.5rem; margin:0.5rem 0.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/??????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/??????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:5.2rem; height:5.2rem; position:relative; top:1.5rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:1rem; margin:0.5rem 0.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/???????????????png.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/???????????????png.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:3rem; margin:0.5rem 1.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:2rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/??????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/??????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:3rem; margin:0.5rem 0.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:1rem; margin:0.5rem 0.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/?????????????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/?????????????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:3rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:2rem; margin:0.5rem 2.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:2.6rem; height:2.6rem; position:relative; top:3rem; margin:0.5rem 1.1rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/???????????????.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/???????????????.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems --><li ng-repeat="item in logoitems" class="ng-scope">
	                <div class="logo-item" style="width:3.9000000000000004rem; height:3.9000000000000004rem; position:relative; top:1.5rem; margin:0.5rem 1.6rem">
	                    <img ng-src="${pageContext.request.contextPath}/images/?????????1.png" type="image/svg+xml" src="${pageContext.request.contextPath}/images/?????????1.png">
	                </div>
	            </li><!-- end ngRepeat: item in logoitems -->
	        </ul>
	    </div>
		<!-- 	???????????????????????? -->	
	
	
	
	
		<div class="push"></div>
		
		<!-- footer ?????? -->
		<div id="footer">
			<p>Copyright ??gifti-ILJO Rights Reserved.</p>
		</div>
		<!-- footer ??? -->
	</div>
	<!-- container ??? -->
	

	<!-- start modal	 -->
	<div id="id01" class="modal">
		<form class="modal-content animate" action="<%=request.getContextPath()%>/SessionLoginServlet.do" method="post">
		 
			<div class="imgcontainer">
				<span onclick="document.getElementById('id01').style.display='none'"
					class="close" title="Close Modal">&times;</span> 
				<img src="../images/logo.png" alt="Avatar" class="avatar">
			</div>

			<div class="container_modal">
				<label for="uname"><b>?????????</b></label> 
					<input id="modalid" type="text" placeholder="????????? ??????" name="uname" required> 
					<label  for="psw"><b>????????????</b></label> 
				<input id="modalpass" type="password" placeholder="???????????? ??????" name="psw" required>
				<button id="modalbutton" type="submit">?????????</button>
				<label> 
				<input id="moadlcheck" type="checkbox" checked="checked" name="remember"> ?????????????????????
				</label>
			</div>

			<div class="container" style="background-color: #f1f1f1">
				<a href="#">??????????????? </a>&nbsp;<a href="#">??????????????????</a>
			</div>
		</form>
	</div>
	<!-- end modal -->
</body>
</html>