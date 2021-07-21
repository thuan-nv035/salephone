<?php echo form_open('dang-nhap'); ?>
<div class="container">
	<div class="products-wrap">
		<div class="container">
			<div class="col-md-3 col-sm-3 hidden-xs"></div>
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div id="login">
					<div class="acctitle acctitlec">Đăng nhập</div>
					<div class="acc_content clearfix" style="display: block;">
						<form accept-charset="UTF-8" action="" id="customer_login" method="post">
							<div class="col_full">
								<label for="login-form-username">Tài khoản:<span class="require_symbol">* </span></label>
								<input type="text" id="login-form-username" name="username" value="" class="form-control">
								<div class="error" id="password_error"><?php echo form_error('username')?></div>
							</div>
							<div class="col_full">
								<label for="login-form-password">Mật khẩu:<span class="require_symbol">* </span></label>
								<input type="password" id="login-form-password" name="password" value="" class="form-control">
								<div class="error" id="password_error"><?php echo form_error('password')?></div>	
							</div>
							<?php  if(isset($error)):?>
								<div class="row">
									<?php echo "<p  style='color:red;'>$error</p>"; ?>
								</div>
							<?php  endif;?>
							<div class="col_full nobottommargin">
								<button class="button button-3d button-black nomargin pull-left" id="login-form-submit" name="login-form-submit" type="submit" value="login" style="background: #006633;">Đăng nhập</button>
								<ul class="pull-right">
									<li><a href="quen-mat-khau" class="fright" style="color: #006633;text-decoration: underline !important;">Quên mật khẩu?</a></li>
									<li  style="color: #006633;">Người dùng mới?<a href="<?php echo base_url() ?>dang-ky" class="fright" style="color: #006633;font-size: 20px; text-decoration: underline !important;"> Đăng ký tài khoản</a></li>
								</ul>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-3 hidden-xs"></div>
		</div>
	</div>
</div>