<div class="content-wrapper">
	<section class="content-header">
		<h1>Danh sách tin tức</h1>
		<div class="breadcrumb">
			<?php
			if($user['role']==1){
				echo '<a class="btn btn-warning" href="'.base_url().'admin/content/insert" role="button">
				Thêm mới
				</a>';
			}
			?>
		</div>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="box" id="view">
					<!-- /.box-header -->
					<div class="box-body">
						<?php  if($this->session->flashdata('success')):?>
							<div class="row">
								<div class="alert alert-success">
									<?php echo $this->session->flashdata('success'); ?>
									<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
								</div>
							</div>
						<?php  endif;?>
						<?php  if($this->session->flashdata('error')):?>
							<div class="row">
								<div class="alert alert-error">
									<?php echo $this->session->flashdata('error'); ?>
									<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
								</div>
							</div>
						<?php  endif;?>
						<div class="row" style='padding:0px; margin:0px;'>
							<!--ND-->
							<div class="table-responsive">
								<table class="table table-hover table-bordered">
									<thead>
										<tr>
											<th class="text-center">ID</th>
											<th>Tiêu đề</th>
											<!-- <th>Danh mục cha</th> -->
										<!-- 	<th>Ngày tạo</th> -->
											<!-- <th class="text-center">Trạng thái</th> -->
											<th class="text-center" colspan="2">Hành động</th>
										</tr>
									</thead>
									<tbody id="myData">
										<!--Du lieu mau-->

											
									</tbody>
								</table>
							</div>
							<!-- /.ND -->
						</div>
					</div><!-- ./box-body -->
				</div><!-- /.box -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
	</section>
	<!-- /.content -->
</div>

<script type="text/javascript" charset="utf-8">

	// Delete By Id
	function deleteById(id){
		var result = confirm("Bạn có chắc muốn xóa không?");
		if(result){
			console.log("Id = "+id);
	    	var url = `http://localhost:8082/nhom7/news/${id}`;
			var requestOptions = {
			  method: 'DELETE',
			  redirect: 'follow'
			};
			fetch(url, requestOptions)
			  .then(response => response.text())
			  .then(result => console.log(result))
			  .catch(error => console.log('error', error));
		}
	    
	}

 function getAllNews(){
    var requestOptions = {
     method: 'GET',
     redirect: 'follow'
    };

fetch("http://localhost:8082/nhom7/news", requestOptions)
  .then(response => response.json())
  .then(result => appendData(result))
  .catch(error => console.log('error', error));

  // Get element
  function appendData(result) {
      console.log(result);
      var mainContainer = document.getElementById('myData');
             var htmlText = result.map(function(result){
                return `
                <tr>
                   <td>${result.id}</td>
					<td>${result.title}</td>
					<td class="text-center">
						<a class="btn btn-primary"  href="admin/content/update/${result.id}">Sửa</a>
					</td>
					<td class="text-center">
						<a class="btn btn-primary" style="background:orange" href="admin/content" onclick="deleteById(${result.id})" role = "button">
							Xóa
						</a>
					</td>
					
                 </tr>
                `;
            });

           $('#myData').append(htmlText);
    }
}
     getAllNews();
</script>