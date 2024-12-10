<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>
<!DOCTYPE html>
<html lang="en">


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
	<title>Aloute</title>
    <link rel="icon" href="static/images/fav.png" type="image/png" sizes="16x16"> 
    
    <link rel="stylesheet" href="static/css/main.min.css">
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
				<input placeholder="Tìm kiếm" />
				<a href="#/" class="fa fa-Tìm kiếm"></a>
			</form>
		</div>
	</div><!-- responsive header -->
	<section>
		<div class="gap2 no-gap gray-bg">
			<div class="container-fluid no-padding">
				<div class="row">
					<div class="col-lg-12">
						<div class="message-users">
							<div class="message-head">
								<h4>Tin Nhắn</h4>
								<div class="more">
									<div class="more-post-optns"><i class="ti-settings"></i>
										<ul>
											<li><i class="fa fa-wrench"></i>Setting</li>
											<li><i class="fa fa-envelope-open"></i> Liên hệ đang hoạt động</li>
											<li><i class="fa fa-folder-open"></i>Lưu trữs Chats</li>
											<li><i class="fa fa-eye-slash"></i>Tin nhắn chưa đọc</li>
											<li><i class="fa fa-flag"></i>Báo cáo vấn đề</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="message-people-srch">
								<form method="post">
									<input type="text" placeholder="Tìm kiếm Friend..">
									<button type="submit"><i class="fa fa-Tìm kiếm"></i></button>
								</form>
								<div class="btn-group add-group" role="group">
									<button id="btnGroupDrop2" type="button" class="btn group dropdown-toggle user-filter" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									  All
									</button>
									<div class="dropdown-menu" aria-labelledby="btnGroupDrop2">
									  <a class="dropdown-item" href="#">Online</a>
									  <a class="dropdown-item" href="#">Đang bận</a>
									  <a class="dropdown-item" href="#">Chưa xem</a>
									  <a class="dropdown-item" href="#">Lưu trữ</a>
									</div>
								</div>
								<div class="btn-group add-group align-right" role="group">
									<button id="btnGroupDrop1" type="button" class="btn group dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									  Tạo mới+
									</button>
									<div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
									  <a class="dropdown-item" href="#">Người khác</a>
									  <a class="dropdown-item" href="#">Tạo nhóm mới +</a>
										<a class="dropdown-item" href="#">Trò chuyện bí mật +</a>
									</div>
								</div>
							</div>
							<div class="mesg-peple">
								<ul class="nav nav-tabs nav-tabs--vertical msg-pepl-list">
									<li class="nav-item ">
										<a class="" href="#link10" data-toggle="tab">
											<figure><img src="static/images/resources/friend-avatar8.jpg" alt="">
												<span class="status f-offline"></span>
											</figure>
											<div class="user-name">
												<h6 class="">kelly Quin</h6>
												<span>Hi dude.. - 23 feb</span>
											</div>
											<div class="more">
												<div class="more-post-optns"><i class="ti-more-alt"></i>
													<ul>
														<li><i class="fa fa-bell-slash-o"></i>Tắt tiếng</li>
														<li><i class="ti-trash"></i>Xóa</li>
														<li><i class="fa fa-folder-open-o"></i>Lưu trữ</li>
														<li><i class="fa fa-ban"></i>chặn</li>
														<li><i class="fa fa-eye-slash"></i>Bỏ qua tin nhắn</li>
														<li><i class="fa fa-envelope"></i>Mark Chưa xem</li>

													</ul>
												</div>
											</div>
										</a>

									</li>
								</ul>
							</div>
						</div>
						<div class="tab-content messenger">
							<div class="tab-pane fade" id="link8">
								<div class="row merged">
									<div class="col-lg-12">
										<div class="mesg-area-head">
											<div class="active-user">
												<figure><img src="static/images/resources/friend-avatar6.jpg" alt="">
													<span class="status f-Đang bận"></span>
												</figure>
												<div>
													<h6 class="Chưa xem">Frank Will</h6>
													<span>Đang bận</span>
												</div>
											</div>
											<ul class="live-calls">
												<li><span class="fa fa-phone"></span></li>
												<li><span class="fa fa-video"></span></li>
												<li><span class="fa fa-info-circle"></span></li>
												<li>
													<div class="dropdown">
														<button class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
															<i class="ti-view-grid"></i>
														</button>
														<div class="dropdown-menu dropdown-menu-right">
															<a class="dropdown-item audio-call" href="#" ><i class="ti-headphone-alt"></i>Cuộc gọi thoại</a>
															<a href="#" class="dropdown-item video-call"><i class="ti-video-camera"></i>Cuộc gọi video</a>
															<hr>
															<a href="#" class="dropdown-item"><i class="ti-server"></i>Xóa lịch sử</a>
															<a href="#" class="dropdown-item"><i class="ti-hand-stop"></i>chặn Contact</a>
															<a href="#" class="dropdown-item"><i class="ti-trash"></i>Xóa Contact</a>
														</div>
													</div>
												</li>
											</ul>
										</div>
									</div>
									<div class="col-lg-8">
										<div class="mesge-area conversations">
											<div class="empty-chat">
												<div class="no-messages">
													<i class="ti-comments"></i>
													<p>Seems people are shy to start the chat. Break the ice send the first message.</p>
												</div>
											</div>
										</div>
										<div class="message-writing-box">
											<form method="post">
												<div class="text-area">
													<input type="text" placeholder="write your message here..">
													<button type="submit"><i class="fa fa-paper-plane-o"></i></button>
												</div>
												<div class="emojies">
													<i><img src="static/images/smiles/happy-3.png" alt=""></i>
													<ul class="emojies-list">
														<li><a href="#" title=""><img src="static/images/smiles/unhappy.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/tongue-out-1.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/suspicious.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/smiling.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/wink.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/bored.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/angry-1.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/angry.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/bored-1.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/bored-2.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/confused-1.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/confused.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/crying-1.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/crying.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/embarrassed.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/emoticons.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/happy-1.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/happy-2.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/happy-3.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/happy-4.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/ill.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/in-love.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/kissing.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/mad.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/nerd.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/ninja.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/quiet.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/sad.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/secret.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/smile.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/surprised-1.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/tongue-out.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/unhappy.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/suspicious.png" alt=""></a></li>
													</ul>
												</div>
												<div class="attach-file">
													<label class="fileContainer">
														<i class="ti-clip"></i>
														<input type="file">
													</label>
												</div>
											</form>
										</div>
									</div>
									<div class="col-lg-4">
										<div class="chater-info">
											<figure><img src="static/images/resources/chatuser4.jpg" alt=""></figure>
											<h6>Frank Will</h6>
											<span>Active 2 months ago</span>
											<div class="userabout">
												<span>About</span>
												<p>I love reading, traveling and discovering new things. You need to be happy in life.</p>
												<ul>
													<li><span>Phone:</span> +123976980</li>
													<li><span>Website:</span> <a href="#" title="">www.abc.com</a></li>
													<li><span>Email:</span> <a href="http://wpkixx.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="5625373b263a3316313b373f3a7835393b">[email&#160;protected]</a></li>
													<li><span>Phone:</span> Ontario, Canada</li>
												</ul>
												<div class="media">
													<span>Media</span>
													<ul>
														<li><img src="static/images/resources/audio-user1.jpg" alt=""></li>
														<li><img src="static/images/resources/audio-user2.jpg" alt=""></li>
														<li><img src="static/images/resources/audio-user3.jpg" alt=""></li>
														<li><img src="static/images/resources/audio-user4.jpg" alt=""></li>
														<li><img src="static/images/resources/audio-user5.jpg" alt=""></li>
														<li><img src="static/images/resources/audio-user6.jpg" alt=""></li>
														<li><img src="static/images/resources/admin2.jpg" alt=""></li>
														<li><img src="static/images/resources/audio-user1.jpg" alt=""></li>
														<li><img src="static/images/resources/audio-user4.jpg" alt=""></li>
														<li><img src="static/images/resources/audio-user3.jpg" alt=""></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane fade" id="link9">
								<div class="row merged">
									<div class="col-lg-12">
										<div class="mesg-area-head">
											<div class="active-user">
												<figure><img src="static/images/resources/friend-avatar9.jpg" alt="">
													<span class="status f-online"></span>
												</figure>
												<div>
													<h6 class="Chưa xem">Niclos Cage</h6>
													<span>Online</span>
												</div>
											</div>
											<ul class="live-calls">
												<li><span class="fa fa-phone"></span></li>
												<li><span class="fa fa-video"></span></li>
												<li><span class="fa fa-info-circle"></span></li>
												<li>
													<div class="dropdown">
														<button class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
															<i class="ti-view-grid"></i>
														</button>
														<div class="dropdown-menu dropdown-menu-right">
															<a class="dropdown-item audio-call" href="#" ><i class="ti-headphone-alt"></i>Cuộc gọi thoại</a>
															<a href="#" class="dropdown-item video-call"><i class="ti-video-camera"></i>Cuộc gọi video</a>
															<hr>
															<a href="#" class="dropdown-item"><i class="ti-server"></i>Xóa lịch sử</a>
															<a href="#" class="dropdown-item"><i class="ti-hand-stop"></i>chặn Contact</a>
															<a href="#" class="dropdown-item"><i class="ti-trash"></i>Xóa Contact</a>
														</div>
													</div>
												</li>
											</ul>
										</div>
									</div>
									<div class="col-lg-8">
										<div class="mesge-area conversations">
											<div class="empty-chat">
												<div class="no-messages">
													<i class="ti-comments"></i>
													<p>Seems people are shy to start the chat. Break the ice send the first message.</p>
												</div>
											</div>
										</div>
										<div class="message-writing-box">
											<form method="post">
												<div class="text-area">
													<input type="text" placeholder="write your message here..">
													<button type="submit"><i class="fa fa-paper-plane-o"></i></button>
												</div>
												<div class="emojies">
													<i><img src="static/images/smiles/happy-3.png" alt=""></i>
													<ul class="emojies-list">
														<li><a href="#" title=""><img src="static/images/smiles/unhappy.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/tongue-out-1.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/suspicious.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/smiling.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/wink.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/bored.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/angry-1.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/angry.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/bored-1.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/bored-2.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/confused-1.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/confused.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/crying-1.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/crying.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/embarrassed.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/emoticons.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/happy-1.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/happy-2.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/happy-3.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/happy-4.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/ill.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/in-love.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/kissing.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/mad.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/nerd.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/ninja.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/quiet.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/sad.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/secret.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/smile.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/surprised-1.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/tongue-out.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/unhappy.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/suspicious.png" alt=""></a></li>
													</ul>
												</div>
												<div class="attach-file">
													<label class="fileContainer">
														<i class="ti-clip"></i>
														<input type="file">
													</label>
												</div>
											</form>
										</div>
									</div>
									<div class="col-lg-4">
										<div class="chater-info">
											<figure><img src="static/images/resources/chatuser8.jpg" alt=""></figure>
											<h6>Niclos Cage</h6>
											<span>Active 10 hours ago</span>
											<div class="userabout">
												<span>About</span>
												<p>I love reading, traveling and discovering new things. You need to be happy in life.</p>
												<ul>
													<li><span>Phone:</span> +123976980</li>
													<li><span>Website:</span> <a href="#" title="">www.abc.com</a></li>
													<li><span>Email:</span> <a href="http://wpkixx.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="6714060a170b0227000a060e0b4904080a">[email&#160;protected]</a></li>
													<li><span>Phone:</span> Ontario, Canada</li>
												</ul>
												<div class="media">
													<span>Media</span>
													<ul>
														<li><img src="static/images/resources/audio-user1.jpg" alt=""></li>
														<li><img src="static/images/resources/audio-user2.jpg" alt=""></li>
														<li><img src="static/images/resources/audio-user3.jpg" alt=""></li>
														<li><img src="static/images/resources/audio-user4.jpg" alt=""></li>
														<li><img src="static/images/resources/audio-user5.jpg" alt=""></li>
														<li><img src="static/images/resources/audio-user6.jpg" alt=""></li>
														<li><img src="static/images/resources/admin2.jpg" alt=""></li>
														<li><img src="static/images/resources/audio-user1.jpg" alt=""></li>
														<li><img src="static/images/resources/audio-user4.jpg" alt=""></li>
														<li><img src="static/images/resources/audio-user3.jpg" alt=""></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane fade" id="link10">
								<div class="row merged">
									<div class="col-lg-12">
										<div class="mesg-area-head">
											<div class="active-user">
												<figure><img src="static/images/resources/friend-avatar8.jpg" alt="">
													<span class="status f-offline"></span>
												</figure>
												<div>
													<h6 class="Chưa xem">Kelly Quin</h6>
													<span>Offline</span>
												</div>
											</div>
											<ul class="live-calls">
												<li><span class="fa fa-phone"></span></li>
												<li><span class="fa fa-video"></span></li>
												<li><span class="fa fa-info-circle"></span></li>
												<li>
													<div class="dropdown">
														<button class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
															<i class="ti-view-grid"></i>
														</button>
														<div class="dropdown-menu dropdown-menu-right">
															<a class="dropdown-item audio-call" href="#" ><i class="ti-headphone-alt"></i>Cuộc gọi thoại</a>
															<a href="#" class="dropdown-item video-call"><i class="ti-video-camera"></i>Cuộc gọi video</a>
															<hr>
															<a href="#" class="dropdown-item"><i class="ti-server"></i>Xóa lịch sử</a>
															<a href="#" class="dropdown-item"><i class="ti-hand-stop"></i>chặn Contact</a>
															<a href="#" class="dropdown-item"><i class="ti-trash"></i>Xóa Contact</a>
														</div>
													</div>
												</li>
											</ul>
										</div>
									</div>
									<div class="col-lg-8">
										<div class="mesge-area conversations">
											<div class="empty-chat">
												<div class="no-messages">
													<i class="ti-comments"></i>
													<p>Seems people are shy to start the chat. Break the ice send the first message.</p>
												</div>
											</div>
										</div>
										<div class="message-writing-box">
											<form method="post">
												<div class="text-area">
													<input type="text" placeholder="write your message here..">
													<button type="submit"><i class="fa fa-paper-plane-o"></i></button>
												</div>
												<div class="emojies">
													<i><img src="static/images/smiles/happy-3.png" alt=""></i>
													<ul class="emojies-list">
														<li><a href="#" title=""><img src="static/images/smiles/unhappy.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/tongue-out-1.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/suspicious.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/smiling.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/wink.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/bored.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/angry-1.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/angry.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/bored-1.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/bored-2.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/confused-1.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/confused.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/crying-1.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/crying.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/embarrassed.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/emoticons.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/happy-1.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/happy-2.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/happy-3.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/happy-4.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/ill.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/in-love.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/kissing.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/mad.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/nerd.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/ninja.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/quiet.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/sad.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/secret.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/smile.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/surprised-1.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/tongue-out.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/unhappy.png" alt=""></a></li>
														<li><a href="#" title=""><img src="static/images/smiles/suspicious.png" alt=""></a></li>
													</ul>
												</div>
												<div class="attach-file">
													<label class="fileContainer">
														<i class="ti-clip"></i>
														<input type="file">
													</label>
												</div>
											</form>
										</div>
									</div>
									<div class="col-lg-4">
										<div class="chater-info">
											<figure><img src="static/images/resources/chatuser6.jpg" alt=""></figure>
											<h6>Kelly Quin</h6>
											<span>Active 10 hours ago</span>
											<div class="userabout">
												<span>About</span>
												<p>I love reading, traveling and discovering new things. You need to be happy in life.</p>
												<ul>
													<li><span>Phone:</span> +123976980</li>
													<li><span>Website:</span> <a href="#" title="">www.abc.com</a></li>
													<li><span>Email:</span> <a href="http://wpkixx.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="8efdefe3fee2ebcee9e3efe7e2a0ede1e3">[email&#160;protected]</a></li>
													<li><span>Phone:</span> Ontario, Canada</li>
												</ul>
												<div class="media">
													<span>Media</span>
													<ul>
														<li><img src="static/images/resources/audio-user1.jpg" alt=""></li>
														<li><img src="static/images/resources/audio-user2.jpg" alt=""></li>
														<li><img src="static/images/resources/audio-user3.jpg" alt=""></li>
														<li><img src="static/images/resources/audio-user4.jpg" alt=""></li>
														<li><img src="static/images/resources/audio-user5.jpg" alt=""></li>
														<li><img src="static/images/resources/audio-user6.jpg" alt=""></li>
														<li><img src="static/images/resources/admin2.jpg" alt=""></li>
														<li><img src="static/images/resources/audio-user1.jpg" alt=""></li>
														<li><img src="static/images/resources/audio-user4.jpg" alt=""></li>
														<li><img src="static/images/resources/audio-user3.jpg" alt=""></li>
													</ul>
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
		</div>	
	</section><!-- content -->
</div>
	<div class="side-panel">
		<h4 class="panel-title">General Setting</h4>
		<form method="post">
			<div class="setting-row">
				<span>Sử dụng chế độ ban đêm
</span>
				<input type="checkbox" id="nightmode1"/> 
				<label for="nightmode1" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>Notifications</span>
				<input type="checkbox" id="switch22" /> 
				<label for="switch22" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>Notification sound</span>
				<input type="checkbox" id="switch33" /> 
				<label for="switch33" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>My profile</span>
				<input type="checkbox" id="switch44" /> 
				<label for="switch44" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>Show profile</span>
				<input type="checkbox" id="switch55" /> 
				<label for="switch55" data-on-label="ON" data-off-label="OFF"></label>
			</div>
		</form>
		<h4 class="panel-title">Account Setting</h4>
		<form method="post">
			<div class="setting-row">
				<span>Sub users</span>
				<input type="checkbox" id="switch66" /> 
				<label for="switch66" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>personal account</span>
				<input type="checkbox" id="switch77" /> 
				<label for="switch77" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>Business account</span>
				<input type="checkbox" id="switch88" /> 
				<label for="switch88" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>Show me online</span>
				<input type="checkbox" id="switch99" /> 
				<label for="switch99" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>Xóa history</span>
				<input type="checkbox" id="switch101" /> 
				<label for="switch101" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>Expose author name</span>
				<input type="checkbox" id="switch111" /> 
				<label for="switch111" data-on-label="ON" data-off-label="OFF"></label>
			</div>
		</form>
	</div><!-- side panel -->
	
	<div class="call-wraper">
		<div class="m-live-call">
			<figure><img src="static/images/resources/author.jpg" alt=""></figure>
			<div class="call-box">
				<h6>Jack Carter</h6>
				<span>incoming call</span>
				<i class="ti-microphone"></i>
				<div class="wave">
					<span class="dot"></span>
					<span class="dot"></span>
					<span class="dot"></span>
				</div>
				<ins class="later-rmnd">Nhắc tôi sau</ins>
				<div class="yesorno">
					<a class="bg-blue accept-call" href="#" title=""><i class="fa fa-phone"></i></a>
					<a class="bg-red decline-call" href="#" title=""><i class="fa fa-close"></i></a>
				</div>
			</div>
		</div>
	</div><!-- audio video cTất cảpopup -->
	
	<script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="static/js/main.min.js"></script>
	<script src="static/js/script.js"></script>

</body>	

</html>