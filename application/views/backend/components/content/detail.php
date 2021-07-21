<section id="content">
    <div class="row wraper">
      <div class="banner-product">
    <div class="container">
      <!-- <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <img src="public/images/sp.png">
      </div> -->
    </div>
  </div>
        <div class="container">
            
            <div class = "col-xs-12 col-sm-12 col-md-9 col-lg-9 product-content" id="list-content">
                <div class="product-wrap">
                  <div id="myData" class="fs-newsboxs">
                      <?php foreach ($list as $item) :?>
                        <div class="fs-ne2-it clearfix">
                            <div class="fs-ne2-if">
                                <!-- <a class="fs-ne2-img" href="tin-tuc/<?php echo $item['alias']; ?>">
                                    <img  src="public/images/posts/<?php echo $item['img']; ?>"">
                                </a> -->
                                <div style="display: flex;">
                                  
                               
                                   <a href="">
                                      <img src="https://www.sony.com.vn/image/42e7acd5e4e8451e3ded3219b30082d8?fmt=pjpeg&wid=330&bgcolor=FFFFFF&bgc=FFFFFF" alt="" style="width: 200px; height: 200px;">
                                   </a>
                                  <div class="fs-n2-info">
                                      <!-- <h3><a class="fs-ne2-tit" href="tin-tuc/<?php echo $item['alias']; ?>" title=""><?php echo $item['title']; ?></a></h3> -->
                                      <div class="fs-ne2-txt"><?php echo $item['introtext']; ?></div>
                                      <p class="fs-ne2-bot">
                                          <span class="fs-ne2-user">
                                              <img class="lazy"src="" style="">
                                          </span> 
                                          <span><?php echo $item['created']; ?></span>
                                      </p>
                                  </div>

                                 </div>
                            </div>

                        </div>
                    <?php endforeach; ?> 
                </div>
          </div>

      </div>
  </div>
</div>
</section>
<script>

    var requestOptions = {
     method: 'GET',
    redirect: 'follow'
    };

fetch("http://localhost:8082/news-ws/nhom7/news", requestOptions)
  .then(response => response.text())
  .then(result => appendData(result))
  .catch(error => console.log('error', error));

  // Get element
  
  function appendData(data) {
      var mainContainer = document.getElementById("myData");
            var mainContainer = document.getElementById("myData");
            for (var i = 0; i < data.length; i++) {
                var div = document.createElement("div");
                div.innerHTML = 'Name: ' + data[i]. + ' ' + data[i].;
                mainContainer.appendChild(div);
            }
</script>