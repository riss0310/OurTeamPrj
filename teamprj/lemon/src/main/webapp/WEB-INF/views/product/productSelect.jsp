<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<div id="fh5co-product">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-md-offset-1 animate-box">
					<div class="owl-carousel owl-carousel-fullwidth product-carousel">
						<div class="item">
							<div class="active text-center">
								<figure>
									<img src="images/product-single-1.jpg" alt="user">
								</figure>
							</div>
						</div>
						<div class="item">
							<div class="active text-center">
								<figure>
									<img src="images/product-single-2.jpg" alt="user">
								</figure>
							</div>
						</div>
						<div class="item">
							<div class="active text-center">
								<figure>
									<img src="images/product-single-3.jpg" alt="user">
								</figure>
							</div>
						</div>
						<div class="item">
							<div class="active text-center">
								<figure>
									<img src="images/product-single-4.jpg" alt="user">
								</figure>
							</div>
						</div>
						<div class="item">
							<div class="active text-center">
								<figure>
									<img src="images/product-single-5.jpg" alt="user">
								</figure>
							</div>
						</div>
					</div>
					<div class="row animate-box">
						<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
							<h2>${product.productTitle}</h2>
							<p>
								<c:if test="${name ne product.productWriter}">
									<a href="#" class="btn btn-primary btn-outline btn-lg">찜하기</a>
								</c:if>
								<c:if test="${name eq product.productWriter}">
									<a href="productUpdateForm.do" class="btn btn-primary btn-outline btn-lg">수정</a>
									<a href="productDelete.do" class="btn btn-primary btn-outline btn-lg">삭제</a>

									<!-- 									id 받아오는거 해주세여... -->

								</c:if>
									<a href="productList.do" class="btn btn-primary btn-outline btn-lg">목록</a>

							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<div class="fh5co-tabs animate-box">
						<ul class="fh5co-tab-nav">
							<li class="active"><a href="#" data-tab="1"><span class="icon visible-xs"><i class="icon-file"></i></span><span class="hidden-xs">상품 소개</span></a></li>
							<li><a href="#" data-tab="2"><span class="icon visible-xs"><i class="icon-bar-graph"></i></span><span class="hidden-xs">댓글</span></a></li>
						</ul>

						<!-- Tabs -->
						<div class="fh5co-tab-content-wrap">

							<div class="fh5co-tab-content tab-content active" data-tab-content="1">
								<div class="col-md-10 col-md-offset-1">
									<span class="price">가격 : ${product.productPrice}</span>
									<h2>${product.productTitle}</h2>

									<div class="row">
										<div class="col-md-6">
											<p>${product.productSubject}</p>
										</div>
									</div>

								</div>
							</div>

							<div class="fh5co-tab-content tab-content" data-tab-content="2">
								<div class="col-md-10 col-md-offset-1">
									<h3>댓글 목록</h3>
									<div class="feed">
										<c:forEach items="${replyList}" var="replyList">
											<div>
												<blockquote>
													<p>${replyList.replySubject}</p>
												</blockquote>
												<h3>&mdash; ${replyList.replyWriter}, ${replyList.replyWdate}</h3>
										</c:forEach>
										<c:if test="${not empty id }">
											<form name="replyForm" method="post">
												<input type="hidden" id="productId" name="productId" value="${p.productId}" />
												<div>
													<label for="replyWriter">댓글 작성자</label><input type="text" id="replyWriter" name="replyWriter" value=${name} readonly="readonly" />
													<br>
													<label for="replyWriter">댓글 내용</label><input type="text" id="replySubject" name="replySubject" />
													<br>
													<label for="replySecret">비밀 댓글</label>
												</div>
												<div>
													<button type="button" class="btn btn-primary btn-outline btn-lg">댓글 작성</a>
												</div>
											</form>
										</c:if>
									</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
	
	</script>
</body>
</html>