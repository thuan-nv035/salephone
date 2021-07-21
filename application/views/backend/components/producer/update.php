<?php echo form_open_multipart('admin/producer/update/'.$row['id']); ?>
<div class="content-wrapper">
	<form action="<?php echo base_url() ?>admin/producer/update.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
		<section class="content-header">
			<h1>Cập nhập nhà cung cấp</h1>
			
		</section>
		<!-- Main content -->
		<section class="content">
			<div class="row">
				<div class="col-md-12">
					<div class="box" id="view">
						<div class="box-body">
							<div class="col-md-9">
							<?php echo validation_errors(); ?>
								<div class="box-body">
									<div class="col-md-9">
										<div class="form-group">
											<label>Tên nhà cung cấp</label>
											<input type="text" class="form-control" name="name" placeholder="Tên nhà cung cấp" value="<?php echo $row['name'] ?>">
											<div class="error" id="password_error" style="color: red"><?php echo form_error('name')?></div>
										</div>
										<div class="form-group">
											<label>Mã<span class = "maudo">(*)</span></label>
											<input type="text" class="form-control" name="code" placeholder="Mã code" disabled value="<?php echo $row['code'] ?>">
											<div class="error" id="password_error" style="color: red"><?php echo form_error('code')?></div>
										</div>
										<div class="form-group">
											<label>Từ khóa <span class = "maudo">(*)</span></label>
											<input type="text" class="form-control" name="keyword" placeholder="Từ khóa" value="<?php echo $row['keyword'] ?>">
											<div class="error" id="password_error" style="color: red"><?php echo form_error('keyword')?></div>
										</div>
										<div class="form-group">
											<label>Trạng thái</label>
											<select name="status" class="form-control">
												<option value="1" <?php if($row['status'] == 1) {echo 'selected';}?> >Hoạt động</option>
												<option value="0" <?php if($row['status'] == 0) {echo 'selected';}?> >Không hoạt động</option>
											</select>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div><!-- /.box -->
				</div>
			<!-- /.col -->
			<div class="breadcrumb">
				<button type = "submit" class="btn btn-warning">
					Cập nhập
				</button>
				<a class="btn btn-primary" href="admin/producer" role="button">
					 Thoát
				</a>
			</div>
		  </div>
		  <!-- /.row -->

		</section>
	</form>
<!-- /.content -->
</div><!-- /.content-wrapper -->