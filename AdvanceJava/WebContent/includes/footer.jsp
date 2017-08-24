<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<footer id="footer" class="block block-bg-grey-dark"
	data-block-bg-img="img/bg_footer-map.png"
	data-stellar-background-ratio="0.4">
	<div class="container">
		<div class="row" id="contact">
			<div class="col-md-3">
				<address>
					<strong>CMC Laptop</strong> <br> <i
						class="fa fa-map-pin fa-fw text-primary"></i> CMC Tower, 11 Duy
					Tân, Dịch Vọng Hậu, Cầu Giấy, Hà Nội <br> <i
						class="fa fa-phone fa-fw text-primary"></i> 0243.333.333 <br>
					<i class="fa fa-envelope-o fa-fw text-primary"></i> info@cmc.com.vn
					<br>
				</address>
			</div>
			<div class="col-md-6">
				<h4 class="text-uppercase">Liên hệ với chúng tôi:</h4>
				<div class="form">
					<div id="sendmessage">Gửi góp ý thành công!</div>
					<div id="errormessage"></div>
					<form action="" method="post" role="form" class="contactForm">
						<div class="form-group">
							<input type="text" name="name" class="form-control" id="name"
								placeholder="Your Name" data-rule="minlen:4"
								data-msg="Please enter at least 4 chars" />
							<div class="validation"></div>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" name="email" id="email"
								placeholder="Your Email" data-rule="email"
								data-msg="Please enter a valid email" />
							<div class="validation"></div>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="subject"
								id="subject" placeholder="Subject" data-rule="minlen:4"
								data-msg="Please enter at least 8 chars of subject" />
							<div class="validation"></div>
						</div>
						<div class="form-group">
							<textarea class="form-control" name="message" rows="5"
								data-rule="required" data-msg="Please write something for us"
								placeholder="Message"></textarea>
							<div class="validation"></div>
						</div>
						<div class="text-center">
							<button type="submit">Send Message</button>
						</div>
					</form>
				</div>
			</div>
			<div class="col-md-3">
				<h4 class="text-uppercase">Follow Us On:</h4>
				<div class="social-media social-media-stacked">
					<a href="#"><i class="fa fa-facebook fa-fw"></i> Facebook</a> <a
						href="#"><i class="fa fa-google-plus fa-fw"></i> Google+</a>
				</div>
			</div>
		</div>
		<div class="row subfooter">
			<div class="col-md-7">
				<p>Bản quyền © CMC Laptop</p>
				<div class="credits">
					Phát triển bởi <a href="https://fb.com/ngocdoan1711">Ngọc Đoàn</a>
				</div>
			</div>
		</div>
		<a href="#top" class="scrolltop">Top</a>
	</div>
</footer>