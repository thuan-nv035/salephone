<div class="content-wrapper">
		<section class="content-header">
			<h1>Thêm mới tin tức</h1>
			
		</section>
		<!-- Main content -->
		<section class="content">
			<div class="row">
				<div class="col-md-12">
					<div class="box" id="view">
						<div class="box-body">
							<div class="col-md-9">
							
									<div class="form-group">
										<label>Tiêu đề <span class = "maudo">(*)</span></label>
										<input id="title" type="text" class="form-control" name="title" style="width:100%" placeholder="Title">
										<div class="error" id="password_error"><?php echo form_error('title')?></div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="col-md-6" style="padding-left: 0px;"></div>
										<div class="col-md-6" style="padding-right: 0px;"></div>
										</div>
									</div>
								<div class="form-group">
									<label>Giới thiệu</label>
									<input id="introText" name="introtext" class="form-control" />
									<div class="error" id="password_error"><?php echo form_error('title')?></div>
								</div>

								<div class="form-group">
									<label>Đường dẫn ảnh</label>
									<input id="image" name="image" class="form-control" />
									<div class="error" id="password_error"><?php echo form_error('image')?></div>
								</div>


								<div class="form-group">
									<label>Nội dung</label>
									<textarea  name="detail" id="detail" class="form-control" ></textarea>
      								<script>CKEDITOR.replace('detail');</script>
								</div>

								<div class="breadcrumb">
				<a class="btn btn-primary" onclick="saveNew()">
					Lưu
				</a>
				<a class="btn btn-warning" href="admin/content" role="button">
					Thoát
				</a>
			</div>
							</div>
						</div>
					</div><!-- /.box -->
				</div>
			<!-- /.col -->
		  </div>
		  <!-- /.row -->
		</section>
<!-- /.content -->
</div><!-- /.content-wrapper -->

<script>
	// Jquery call api add new

	function saveNew(){
			var detail = CKEDITOR.instances['detail'].getData();
			console.log("Data = "+ detail);
            var myHeaders = new Headers();
            myHeaders.append('Content-Type', 'application/json');
            var raw = JSON.stringify({
              "title": $("#title").val(),
              "introText": $("#introText").val(),
              "fullText": detail,
              "img": $("#image").val()
            
            });

            var requestOptions = {
              method: 'POST',
              headers: myHeaders,
              body: raw,
              redirect: 'follow'
            };

            fetch("http://localhost:8082/nhom7/news", requestOptions)
              .then(response => response.json())
              .then(result => console.log(result))
              .catch(error => console.log('error', error));

              alert("Thêm mới thành công")
              window.location.replace("http://localhost/trieukhucstore/admin/content");

    }

</script>