<section id="product-detail">
	<div class="container">
		<div class="products-wrap">
			<form action="" method="post" id="ProductDetailsForm">
				<?php if($row):?>
					<div class="breadcrumbs">
						<ul>
							<li class="home">
								<a href="trang-chu" title="Go to Home Page">Trang chủ</a>
								<i class="fa fa-angle-right"></i>
							</li>
							<li class="category3">
								<a href="<?php echo base_url() ?>/san-pham/<?php $link=$this->Mcategory->category_link($row['catid']); echo $link; ?>" title=""><?php $name=$this->Mcategory->category_name($row['catid']); echo $name; ?></a>
								<i class="fa fa-angle-right"></i>
							</li>
							<li class="product"><?php echo $row['name'] ?></li>
						</ul>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 listimg-desc-product">
						<?php $this->load->view('frontend/modules/jcarousel');?>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
						<div class="product-view-content">
							<div class="product-view-name">
								<h1><?php echo $row['name'] ?></h1>
							</div>
							<div class="product-view-price">
								<div class="pull-left">
									<span class="price-label">Giá bán:</span>
									<span class="price"><?php echo number_format($row['price_sale'])?>₫</span>
								</div>
								<?php if($row['price_sale']>0 && $row['sale']>0): ?>
									<div class="product-view-price-old">
										<span class="price"><?php echo $row['price'] ?>₫</span>
										<!-- <span class="sale-flag">-<?php echo $row['sale'] ?>%</span>  -->
									</div>
								<?php endif; ?>
							</div>
							<div class="product-status">
								
								<p>Tình trạng: <?php if($row['number'] - $row['number_buy']==0 || $row['status'] == 0) echo 'Hết hàng'; else echo 'Còn hàng' ?></p>
							</div>
							<div class="product-view-desc">
								<h4>Mô tả:</h4>
								<p><?php echo $row['sortDesc'] ?></p>
							</div>
							<div class="actions-qty">
								<?php
								if($row['number'] - $row['number_buy']==0 || $row['status'] == 0){
									echo'<h2 style="color:red;">Ngừng kinh doanh</h2>';
								} else{
									echo '<div class="actions-qty__button">
									<button class="button btn-cart add_to_cart_detail detail-button" title="Mua ngay" type="button" aria-label="Mua ngay" class="fa fa-shopping-cart" onclick="onAddCart('.$row['id'].')"> Mua ngay</button>
								</div>';
								}
								?>
							</div>
							
							<div style="margin-top: 20px;">
								<b>Tình trạng</b>
								<br>
								<span>Nguyên hộp. Đầy đủ phụ kiện từ nhà sản xuất, gồm: Sạc, cáp, tai nghe, que lấy SIM, sách hướng dẫn</span>
							</div>
							<div style="margin-top: 20px;">
								<b>Bảo hành</b>
								<br>
								<span>Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi nhà sản xuất.</span>
							</div>
						</div>
					</div>
					<?php endif; ?>	
				</form>

					</div>
				</div>
			</section>
			<script>

				function onAddCart(id){
					var strurl="<?php echo base_url();?>"+'/sanpham/addcart';
					jQuery.ajax({
						url: strurl,
						type: 'POST',
						dataType: 'json',
						data: {id: id},
						success: function(data) {
							document.location.reload(true);
							alert('Thêm sản phẩm vào giỏ hàng thành công !');
						}
					});
				}
			</script>
