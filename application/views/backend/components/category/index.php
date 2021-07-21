<div class="content-wrapper">
	<section class="content-header">
		<h1>Danh sách thể loại</h1>
		<div class="breadcrumb">
			<?php
			if($user['role']==1){
				echo '<a class="btn btn-warning" href="'.base_url().'admin/category/insert" role="button">
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
											<th>Tên loại sản phẩm</th>
											<!-- <th>Danh mục cha</th> -->
										<!-- 	<th>Ngày tạo</th> -->
											<!-- <th class="text-center">Trạng thái</th> -->
											<th class="text-center" colspan="2">Hành động</th>
										</tr>
									</thead>
									<tbody>
										<?php foreach ($list as $row):?>
											<tr>
												<td class="text-center"><?php echo $row['id'] ?></td>
												<td>
													<a href="<?php echo base_url() ?>admin/category/update/<?php echo $row['id'] ?>"><?php echo $row['name'] ?>
													(<?php $total=$this->Mproduct->product_count_parentid($row['id']); echo $total; ?>)
												</a>	
											</td>
											<!-- <td>
												<?php  
												$catid = $this->Mcategory->category_parentid($row['id']);
												$name = $this->Mcategory->category_name_parent($catid);
												if($catid == 0)
												{
													echo '';
												}
												else
												{
													echo $name;
												}
												?>
											</td> -->
											<!-- <td class="text-center">
												<?php echo $row['created_at'] ?>
											</td> -->
												<!-- <td class="text-center">
												<a href="<?php echo base_url() ?>admin/category/status/<?php echo $row['id'] ?>">
													<?php if($row['status']==1):?>
														<span class="glyphicon glyphicon-ok-circle mauxanh18"></span>
														<?php else: ?>
															<span class="glyphicon glyphicon-remove-circle maudo"></span>
														<?php endif; ?>
													</a>
												</td> -->
												<?php
												if($user['role']==1){
													echo '<td class="text-center">
													<a class="btn btn-info" href="admin/category/update/'.$row['id'] .'" role = "button">
													Sửa
													</a>
													</td>';
												}
												?>
												
												<td class="text-center">
													<a class="btn btn-info" style="background: green" href="<?php echo base_url() ?>admin/category/trash/<?php echo $row['id'] ?>" onclick="return confirm('Xác nhận xóa loại sản phẩm này ?')" role = "button">
														Xóa
													</a>
												</td>
											</tr>
										<?php endforeach; ?>
									</tbody>
								</table>
							</div>
							<div class="row">
								<div class="col-md-12 text-center">
									<ul class="pagination">
										<?php echo $strphantrang ?>
									</ul>
								</div>
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
</div><!-- /.content-wrapper -->