<?php echo form_open( base_url()."lien-he"); ?>
<section>
	<div class="container">
		<div class="col-md-7 col-12">
			<div class="section-article contactpage" style="  padding-left: 20px;">
				<?php 
				echo validation_errors();
				
				?>
				<form accept-charset="UTF-8" action="<?php echo base_url() ?>lien-he" id="contact" method="post">
					<input name="FormType" type="hidden" value="contact">
					<input name="utf8" type="hidden" value="true">
					<h1 style="color: black;">Liên hệ với chúng tôi để được chăm sóc tốt nhất! </h1>				
					<h2><b><i>Triều khúc store. Không lo hàng lỗi!</i></b></h2>
					
				</form>
			</div>
		</div>
		<div class="col-md-4 col-12">
			<div class="f-contact" style="
			padding-left: 32px;
			">
			<h1 style="color: black">Thông tin liên hệ</h1>
			<ul class="list-unstyled">
				<li class="clearfix">
					<i class="fa fa-map-marker fa-1x" style="color:#006633; padding: 20px; "></i>
					<span style="color: black"> 54-Triều Khúc- Thanh Xuân- Hà Nội</span><br>
				</li>
				<li class="clearfix">
					<i class="fa fa-phone fa-1x" style="color:#006633;padding: 20px;  "></i>
					<span style="color: black">0987848632 - 0987848633</span>
				</li>
				<li class="clearfix">
					<i class="fa fa-envelope fa-1x " style="color:#006633; padding: 20px; "></i>
					<span style="color: black"><a href="mailto:sale.24hstore@gmail.com">nhom7@gmail.com</a></span>
				</li>
			</ul>
		</div>

	</div>
	<div class="col-md-12 col-lg-12 col-xs-12 col-12">

		<div style="margin-top: 15px;">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.1956757379703!2d105.79664331488266!3d20.98479198602226!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135acc6bdc7f95f%3A0x58ffc66343a45247!2sUniversity%20of%20Transport%20Technology!5e0!3m2!1sen!2s!4v1608002764856!5m2!1sen!2s" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
		</div>
	</div>
</div>

</section>