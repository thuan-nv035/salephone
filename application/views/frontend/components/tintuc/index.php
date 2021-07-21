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
           <h1>Cập nhập tin tức mới nhất về công nghệ</h1>
            
            <div class = "col-xs-12 col-sm-12 col-md-9 col-lg-9 product-content" id="list-content">
                <div class="product-wrap">
                  <div id="myData" class="fs-newsboxs" >
                     
                 </div>
               </div>

          </div>
      </div>
</div>
</section>
<script type="text/javascript" charset="utf-8">
 function getById(){
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
                <div style="display:flex;">
                    
                  <div style="margin-bottom: 10px;">
                      <a href="tin-tuc/${result.id}"><img style="width: 200px; height: 200px;border-radius: 10px;" src="${result.img}" alt=""></a>
                   </div>

                    <div>
                      <div style="margin-left: 20px">
                        <a href="tin-tuc/${result.id}"><h4><b><p class="p-loc">${result.title}</p></b></h4></a>
                      </div>

                      <div style="margin-left: 20px">
                       <p class="p-loc">${result.introText}</p>
                      </div>

                      <div style="margin-left: 20px">
                         <p class="p-loc">Created: ${result.created}</p>
                       </div>
                    </div>
                </div>
                
                   
                 
                `;

            });

           $('#myData').append(htmlText);
    }
}
     getById();
</script>

