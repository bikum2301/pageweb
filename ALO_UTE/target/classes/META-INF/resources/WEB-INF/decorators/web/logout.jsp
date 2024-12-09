<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
	<title>Aloute</title>
    <link rel="icon" href="static/images/fav.png" type="image/png" sizes="16x16"> 
    
    <link rel="stylesheet" href="static/css/main.min.css">
	<link rel="stylesheet" href="static/css/weather-icon.css">
	<link rel="stylesheet" href="static/css/weather-icons.min.css">
    <link rel="stylesheet" href="static/css/style.css">
    <link rel="stylesheet" href="static/css/color.css">
    <link rel="stylesheet" href="static/css/responsive.css">

</head>
<body>

<div class="theme-layout">
	
	<div class="responsive-header">
		<div class="mh-head first Sticky">
			<span class="mh-btns-left">
				<a class="" href="#menu"><i class="fa fa-align-justify"></i></a>
			</span>
			<span class="mh-text">
				<a href="newsfeed.html" title=""><img src="static/images/logo2.png" alt=""></a>
			</span>
			<span class="mh-btns-right">
				<a class="fa fa-sliders" href="#shoppingbag"></a>
			</span>
		</div>
		<div class="mh-head second">
			<form class="mh-form">
				<input placeholder="search" />
				<a href="#/" class="fa fa-search"></a>
			</form>
		</div>
		<nav id="menu" class="res-menu">
			<ul>
				<li><span>Trang chủ</span> 
					<ul>
						<li><a href="index.html" title="">Mặc định</a></li>
						<li><a href="pitrest.html" title="">Pitrest</a></li>
						<li><a href="redpit.html" title="">Redpit</a></li>
						<li><a href="redpit-category.html" title="">Danh mục Redpit</a></li>
						<li><a href="soundnik.html" title="">Soundnik</a></li>
						<li><a href="soundnik-detail.html" title="">Soundnik </a></li>
						<li><a href="career.html" title="">Công việc</a></li>
						<li><a href="shop.html" title="">Cửa hàng</a></li>
						<li><a href="classified.html" title="">Rao vặt</a></li>
						<li><a href="pitpoint.html" title="">Điểm Pit</a></li>
						<li><a href="pittube.html" title="">Pittube</a></li>
						<li><a href="chat-messenger.html" title="">Tin nhắn</a></li>
					</ul>
				</li>
				<li><span>Pittube</span>
					<ul>
						<li><a href="pittube.html" title="">Pittube</a></li>
						<li><a href="pittube-detail.html" title="">Pittube single</a></li>
						<li><a href="pittube-category.html" title="">Pittube Category</a></li>
						<li><a href="pittube-channel.html" title="">Pittube Channel</a></li>
						<li><a href="pittube-search-result.html" title="">Pittube Tìm kiếm Result</a></li>
					</ul>
				</li>
				<li><span>Điểm Pit</span>
					<ul>
						<li><a href="pitpoint.html" title="">Điểm Pit</a></li>
						<li><a href="pitpoint-detail.html" title="">Pitpoint Detail</a></li>
						<li><a href="pitpoint-list.html" title="">Pitpoint List style</a></li>
						<li><a href="pitpoint-without-baner.html" title="">Pitpoint without Banner</a></li>
						<li><a href="pitpoint-search-result.html" title="">Pitpoint Tìm kiếm</a></li>
					</ul>
				</li>
				<li><span>Công việc</span>
					<ul>
						<li><a href="career.html" title="">Công việc</a></li>
						<li><a href="career-detail.html" title="">Công việc Detail</a></li>
						<li><a href="career-search-result.html" title="">Job seach page</a></li>
						<li><a href="social-post-detail.html" title="">Social Post Detail</a></li>
					</ul>
				</li>
				<li><span>Dòng thời gian</span>
					<ul>
						<li><a href="timeline.html" title="">Dòng thời gian</a></li>
						<li><a href="timeline-photos.html" title="">Dòng thời gian Photos</a></li>
						<li><a href="timeline-videos.html" title="">Dòng thời gian Videos</a></li>
						<li><a href="timeline-groups.html" title="">Dòng thời gian Groups</a></li>
						<li><a href="timeline-friends.html" title="">Dòng thời gian Friends</a></li>
						<li><a href="timeline-friends2.html" title="">Dòng thời gian Friends-2</a></li>
						<li><a href="about.html" title="">Dòng thời gian About</a></li>
						<li><a href="blog-posts.html" title="">Dòng thời gian Blog</a></li>
						<li><a href="friends-birthday.html" title="">Sinh nhật bạn bè</a></li>
						<li><a href="newsfeed.html" title="">Bảng tin</a></li>
						<li><a href="search-result.html" title="">Tìm kiếm Result</a></li>
					</ul>
				</li>
				<li><span>Trang yêu thích</span>
					<ul>
						<li><a href="fav-page.html" title="">Trang yêu thích</a></li>
						<li><a href="fav-favers.html" title="">Trang thích</a></li>
						<li><a href="fav-events.html" title="">Trang sự kiện</a></li>
						<li><a href="fav-event-invitations.html" title="">Fav Event Invitations</a></li>
						<li><a href="fav-page-create.html" title="">Tạo trang mới</a></li>
					</ul>
				</li>
				<li><span>Diễn đàn</span>
					<ul>
						<li><a href="forum.html" title="">Diễn đàn</a></li>
						<li><a href="forum-create-topic.html" title="">Create Topic</a></li>
						<li><a href="forum-open-topic.html" title=""> Open Topic</a></li>
						<li><a href="forums-category.html" title=""> Category</a></li>
					</ul>
				</li>
				<li><span>Featured</span>
					<ul>
						<li><a href="chat-messenger.html" title="">Tin nhắn (Chatting)</a></li>
						<li><a href="notifications.html" title="">Thông báo</a></li>
						<li><a href="badges.html" title="">Badges</a></li>
						<li><a href="faq.html" title="">Faq's</a></li>
						<li><a href="contribution.html" title="">Contriburion Page</a></li>
						<li><a href="manage-page.html" title="">Quản lý trang</a></li>
						<li><a href="weather-forecast.html" title="">weather-forecast</a></li>
						<li><a href="statistics.html" title="">Statics/Analytics</a></li>
						<li><a href="shop-cart.html" title="">Cửa hàng Cart</a></li>
					</ul>
				</li>
				<li><span>Cài đặt tài khoản</span>
					<ul>
						<li><a href="setting.html" title="">Cài đặt</a></li>
						<li><a href="privacy.html" title="">Riêng tư</a></li>
						<li><a href="support-and-help.html" title="">Hỗ trợ & Trợ giúp</a></li>
						<li><a href="support-and-help-detail.html" title="">Support Detail</a></li>
						<li><a href="support-and-help-search-result.html" title="">Support Tìm kiếm</a></li>
					</ul>
				</li>
				<li><span>Authentication</span>
					<ul>
						<li><a href="login.html" title="">Trang đăng nhập</a></li>
						<li><a href="register.html" title="">Trang đăng kí</a></li>
						<li><a href="logout.html" title="">Trang đăng xuất</a></li>
						<li><a href="coming-soon.html" title="">Sắp ra mắt</a></li>
						<li><a href="error-404.html" title="">Lỗi 404</a></li>
						<li><a href="error-404-2.html" title="">Lỗi 404-2</a></li>
						<li><a href="error-500.html" title="">Lỗi 500</a></li>
					</ul>
				</li>
				<li><span>Tools</span>
					<ul>
						<li><a href="typography.html" title="">Typography</a></li>
						<li><a href="popup-modals.html" title="">Popups/Modals</a></li>
						<li><a href="post-versions.html" title="">Post Versions</a></li>
						<li><a href="widgets.html" title="">Widgets</a></li>
					</ul>
				</li>
			</ul>
		</nav>
		<nav id="shoppingbag">
			<div>
				<div class="">
					<form method="post">
						<div class="setting-row">
							<span>use night mode</span>
							<input type="checkbox" id="nightmode"/> 
							<label for="nightmode" data-on-label="ON" data-off-label="OFF"></label>
						</div>
						<div class="setting-row">
							<span>Thông báo</span>
							<input type="checkbox" id="switch2"/> 
							<label for="switch2" data-on-label="ON" data-off-label="OFF"></label>
						</div>
						<div class="setting-row">
							<span>Âm thanh thông báo</span>
							<input type="checkbox" id="switch3"/> 
							<label for="switch3" data-on-label="ON" data-off-label="OFF"></label>
						</div>
						<div class="setting-row">
							<span>Hồ sơ của tôi</span>
							<input type="checkbox" id="switch4"/> 
							<label for="switch4" data-on-label="ON" data-off-label="OFF"></label>
						</div>
						<div class="setting-row">
							<span>Hiển thị hồ sơ</span>
							<input type="checkbox" id="switch5"/> 
							<label for="switch5" data-on-label="ON" data-off-label="OFF"></label>
						</div>
					</form>
					<h4 class="panel-title">Cài đặt tài khoản</h4>
					<form method="post">
						<div class="setting-row">
							<span>Người dùng phụ</span>
							<input type="checkbox" id="switch6" /> 
							<label for="switch6" data-on-label="ON" data-off-label="OFF"></label>
						</div>
						<div class="setting-row">
							<span>personal account</span>
							<input type="checkbox" id="switch7" /> 
							<label for="switch7" data-on-label="ON" data-off-label="OFF"></label>
						</div>
						<div class="setting-row">
							<span>Tài khoản doanh nghiệp</span>
							<input type="checkbox" id="switch8" /> 
							<label for="switch8" data-on-label="ON" data-off-label="OFF"></label>
						</div>
						<div class="setting-row">
							<span>Hiển thị tôi trực tuyến</span>
							<input type="checkbox" id="switch9" /> 
							<label for="switch9" data-on-label="ON" data-off-label="OFF"></label>
						</div>
						<div class="setting-row">
							<span>Xóa lịch sử</span>
							<input type="checkbox" id="switch10" /> 
							<label for="switch10" data-on-label="ON" data-off-label="OFF"></label>
						</div>
						<div class="setting-row">
							<span>Hiển thị tên tác giả</span>
							<input type="checkbox" id="switch11" /> 
							<label for="switch11" data-on-label="ON" data-off-label="OFF"></label>
						</div>
					</form>
				</div>
			</div>
		</nav>
	</div><!-- responsive header -->
	
	<div class="topbar stick">		
		<div class="top-area">
			<div class="top-search">
				<form method="post" class="">
					<input type="text" placeholder="Tìm kiếm bạn bè, trang, nhóm">
					<button data-ripple><i class="ti-search"></i></button>
				</form>
			</div>
			<div class="page-name">
			    <span>Đăng xuất</span>
			</div>
			<ul class="setting-area">
				<li><a data-ripple="" title="Home" href="newsfeed.html"><i class="fa fa-home"></i></a></li>
				
			
				<li><a class="text" data-ripple="" title="Riêng tư" href="policies.html">Chính sách bảo mật</a></li>
				<li><a class="text" data-ripple="" title="Riêng tư" href="about.html">Liên hệ</a></li>
				<li><a class="text" data-ripple="" title="Riêng tư" href="forum.html">Diễn đàn</a></li>
			</ul>
		</div>
	</div><!-- topbar -->
		
	<section>
		<div class="page-header">
			<div class="header-inner">
				<h2>Bạn đã đăng xuất thành công</h2>
				
			</div>
			<figure><img src="static/images/resources/baner-forum.png" alt=""></figure>
		</div>
	</section><!-- sub header -->
	
	<section>
		<div class="gap gray-bg">
			<div class="container-fluid">
				<div class="row">
					<div class="offset-lg-1 col-lg-10">
						<div class="row border-center">
							<div class="col-lg-6 col-md-6">
								<div class="already-log">
									<h4>Lần đăng nhập trước</h4>
									<p>Bạn có thể ấn vào hình ảnh để đăng nhập lại tài khoản của bạn.</p>
									<div class="log-user">
										<div class="row">
											<div class="col-lg-4 col-md-4 col-sm-4">
											<!-- có thể thay thế hình ảnh -->
												<div class="user-log">
													<i class="ti-close" title="Remove Account"></i>
													<a href="#" title=""><img src="static/images/resources/author.jpg" alt="">
													<span>Adam James</span>
													</a>
											<!-- đây là ảnh đại diện đăng nhập lạiL -->
												</div>
											</div>
											<div class="col-lg-4 col-md-4 col-sm-4">
												<div class="user-log">
													<i class="ti-close" title="Remove Account"></i>
													<a href="#" title=""><img src="static/images/resources/author2.jpg" alt="">
													<span>Emma Watson</span>
													</a>
												</div>
											</div>
											<!-- có thể thay thế hình ảnh -->
											<div class="col-lg-4 col-md-4 col-sm-4">
												<div class="user-add">
													<div><i class="ti-plus"></i><span>Thêm tài khoản</span></div>
												</div>
											</div>
										</div>	
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="logout-f">
									<h4><i class="fa fa-key"></i> Đăng nhập</h4>
									<p>Hãy đăng nhập để đến với mạng xã hội Aloute</p>
									<div class="logout-form">
										<form method="post" class="again-login">
											<input type="text" placeholder="User Name" value="Adam James">
											<input type="password" placeholder="Password" value="12345678">
											<button type="submit">Đăng Nhập</button>
										</form>
										<a href="#" title="">Tạo tài khoản mới</a>
										<p>Nhấp vào đăng kí và bạn đồng ý với <a href="#" title="">Điều khoản và chính sách bảo mật </a>. Bạn sẽ nhận được mã xác nhận từ gmail của chúng tôi để kích hoạt tài khoản.</p>
									</div>	
								</div>	
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
	<div class="side-panel">
		<h4 class="panel-title">General Cài đặt</h4>
		<form method="post">
			<div class="setting-row">
				<span>use night mode</span>
				<input type="checkbox" id="nightmode1"/> 
				<label for="nightmode1" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>Thông báo</span>
				<input type="checkbox" id="switch22" /> 
				<label for="switch22" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>Âm thanh thông báo</span>
				<input type="checkbox" id="switch33" /> 
				<label for="switch33" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>Hồ sơ của tôi</span>
				<input type="checkbox" id="switch44" /> 
				<label for="switch44" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>Hiển thị hồ sơ</span>
				<input type="checkbox" id="switch55" /> 
				<label for="switch55" data-on-label="ON" data-off-label="OFF"></label>
			</div>
		</form>
		<h4 class="panel-title">Cài đặt tài khoản</h4>
		<form method="post">
			<div class="setting-row">
				<span>Người dùng phụ</span>
				<input type="checkbox" id="switch66" /> 
				<label for="switch66" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>personal account</span>
				<input type="checkbox" id="switch77" /> 
				<label for="switch77" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>Tài khoản doanh nghiệp</span>
				<input type="checkbox" id="switch88" /> 
				<label for="switch88" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>Hiển thị tôi trực tuyến</span>
				<input type="checkbox" id="switch99" /> 
				<label for="switch99" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>Xóa lịch sử</span>
				<input type="checkbox" id="switch101" /> 
				<label for="switch101" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>Hiển thị tên tác giả</span>
				<input type="checkbox" id="switch111" /> 
				<label for="switch111" data-on-label="ON" data-off-label="OFF"></label>
			</div>
		</form>
	</div><!-- side panel -->

	<div class="popup-wraper6">
		<div class="popup login">
			<span class="popup-closed"><i class="ti-close"></i></span>
			<div class="popup-meta">
				<div class="popup-head">
					<h5><i class="ti-key"></i> Đăng nhập vào Aloute</h5>
				</div>
				<div class="login-frm">
					<input type="text" placeholder="User Name">
					<input type="password" placeholder="Password">
					<div class="checkbox">
					  <label>
						<input type="checkbox" checked="checked"><i class="check-box"></i>Remember Password
					  </label>
					</div>
					<button data-ripple="" type="submit" class="main-btn">Đăng Nhập</button>
					<a href="#" title="">Quên mật khẩu?</a>
				</div>
			</div>
		</div>
	</div><!-- upload popup -->		
	
	<script src="static/js/main.min.js"></script>
	<script src="static/js/script.js"></script>

</body>	

</html>