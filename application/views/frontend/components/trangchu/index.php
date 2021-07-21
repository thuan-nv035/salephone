<section id="menu-slider">
    <div class="slider">
       
    </div>
</div>
<div class="container" style="margin-top: 20px;">
    <div style="background: #006633;" class="sale-title">
        <span>SẢN PHẨM KHUYẾN MÃI HOT</span>
    </div>
</div>
<div>
    <div class="container" style="margin-bottom: 20px;">
    <div class="owl-carousel owl-carousel-product" style="border: 1px solid #0f9ed8;">
        <?php 
        $product_sale = $this->Mproduct->product_sale(10);
        foreach ($product_sale as $row) :?>
            <div class="item" style="margin: 0px;">
                <div class="products-sale">
                    <div class="lt-product-group-image">
                        <a href="<?php echo $row['alias'] ?>" title="<?php echo $row['name'] ?>" >
                            <img class="img-p"src="public/images/products/<?php echo $row['avatar'] ?>" alt="">
                        </a>

                        <?php if($row['sale'] > 0) :?>
                            
                        <?php endif; ?>
                    </div>
                    <div class="lt-product-group-info">
                        <a href="<?php echo $row['alias'] ?>" title="<?php echo $row['name'] ?>" style="text-align: left;">
                            <h3><?php echo $row['name'] ?></h3>
                        </a>
                        

                        <div class="price-box">
                            <?php if($row['sale'] > 0) :?>

                                <p class="old-price">
                                    <span class="price"><?php echo(number_format($row['price'])); ?>₫</span>
                                </p>
                                <p class="special-price">
                                    <span class="price"><?php echo(number_format($row['price_sale'])); ?>₫</span>
                                </p>
                                <?php else: ?>
                                 <p class="old-price">
                                    <span class="price" style="color: #fff"><?php echo(number_format($row['price'])); ?>₫</span>
                                </p>
                                <p class="special-price">
                                    <span class="price"><?php echo(number_format($row['price'])); ?>₫</span>
                                </p>
                            <?php endif;?>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
</div>

<div class="container" style="margin-top: 20px;">
    <div style="background: #006633;" class="sale-title">
        <span>SẢN PHẨM BÁN CHẠY</span>
    </div>
</div>
<div class="container" style="margin-bottom: 20px;">
    <div class="owl-carousel owl-carousel-product owl-theme" style="border: 1px solid #0f9ed8;">
        <?php 
        $product_sale = $this->Mproduct->product_selling(10);
        foreach ($product_sale as $row) :?>
            <div class="item" style="margin: 0px;">
                <div class="products-sale">

                    <div class="lt-product-group-image">
                        <a href="<?php echo $row['alias'] ?>" title="<?php echo $row['name'] ?>" >
                            <img class="img-p"src="public/images/products/<?php echo $row['avatar'] ?>" alt="">
                        </a>
                    </div>
                    
                    <div class="lt-product-group-info">
                        <a href="<?php echo $row['alias'] ?>" title="<?php echo $row['name'] ?>" style="text-align: left;">
                            <h3><?php echo $row['name'] ?></h3>
                        </a>
                        <div class="price-box">
                            <?php if($row['sale'] > 0) :?>

                                <p class="old-price">
                                    <span class="price"><?php echo(number_format($row['price'])); ?>₫</span>
                                </p>
                                <p class="special-price">
                                    <span class="price"><?php echo(number_format($row['price_sale'])); ?>₫</span>
                                </p>
                                <?php else: ?>
                                 <p class="old-price">
                                    <span class="price" style="color: #fff"><?php echo(number_format($row['price'])); ?>₫</span>
                                </p>
                                <p class="special-price">
                                    <span class="price"><?php echo(number_format($row['price'])); ?>₫</span>
                                </p>
                            <?php endif;?>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
</div>
</section>

</section>
<div id="content">
    <div class="container">
        <?php 
        $listCategory=$this->Mcategory->category_list(0,'10');
        foreach ($listCategory as $rowCategory):
            // row dien thoai
            $subCategory=$this->Mcategory->category_list($rowCategory['id'],'10');
            // Id dien thoai
            $catId=$this->Mcategory->category_id($rowCategory['link']);
            // list id dt ss, apple,...
            $listCatId=$this->Mcategory->category_listcat($catId);
            // list dt ss, apple
            $listProducts=$this->Mproduct->product_home_limit($listCatId,10);
            if((count($listProducts) >= 3)):?>
                <div class="list-product">
                    <div style="background: #006633;" class="list-header-z">
                        <h2><a style="color: white;" href="<?php echo  $rowCategory['link']?>"><?php echo  $rowCategory['name']?></a></h2>
                        <ul class="sub-category">
                            <?php foreach ($subCategory as $rowSubCategory) :?>
                                <li>
                                    <a href="san-pham/<?php echo $rowSubCategory['link'] ?>" ' 
                                        title="<?php echo $rowSubCategory['name'] ?>"
                                        class="ws-nw overflow ellipsis"
                                        >
                                        <?php echo $rowSubCategory['name'] ?>
                                    </a>
                                </li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                    <div class="product-container">
                        <?php foreach ($listProducts as $sp) :?>
                            <div class="p-box-5">
                                <div class="product-lt">
                                    <div class="lt-product-group-image">
                                        <a href="<?php echo $sp['alias'] ?>" title="<?php echo $sp['name'] ?>" >
                                            <img class="img-p"src="public/images/products/<?php echo $sp['avatar'] ?>" alt="">
                                        </a>

                                        <?php if($sp['sale'] > 0) :?>
                                            <!-- <div class="giam-percent">
                                                <span class="text-giam-percent">Giảm <?php echo $sp['sale'] ?>%</span>
                                            </div> -->
                                        <?php endif; ?>
                                    </div>

                                    <div class="lt-product-group-info">
                                        <a href="<?php echo $sp['alias'] ?>" title="<?php echo $sp['name'] ?>" style="text-align: left;">
                                            <h3><?php echo $sp['name'] ?></h3>
                                        </a>
                                        <div class="price-box">
                                            <?php if($sp['sale'] > 0) :?>

                                                <p class="old-price">
                                                    <span class="price"><?php echo(number_format($sp['price'])); ?>₫</span>
                                                </p>
                                                <p class="special-price">
                                                    <span class="price"><?php echo(number_format($sp['price_sale'])); ?>₫</span>
                                                </p>
                                                <?php else: ?>
                                                 <p class="old-price">
                                                    <span class="price" style="color: #fff"><?php echo(number_format($sp['price'])); ?>₫</span>
                                                </p>
                                                <p class="special-price">
                                                    <span class="price"><?php echo(number_format($sp['price'])); ?>₫</span>
                                                </p>
                                            <?php endif;?>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach;?>
                    </div>
                </div>
            <?php endif;?>
        <?php endforeach;?>
    </div>
</div>
</div>


