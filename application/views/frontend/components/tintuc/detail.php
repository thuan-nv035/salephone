
<section id="content">
    <div class="row wraper">
        <div class="container">
            
            <div class = "product-content" id="list-content">
                <div class="">
                    <div id="myData" class="content" style="width: 500px; margin-left: 200px">
                       
                   </div>
                </div>

            </div>
      </div>
</div>
</section>
<script>
  // Get id from url path
    function getById(){
    var url = window.location.href;
    console.log("URL = "+window.location.href);
    var idstr = url.substring(url.lastIndexOf('/') + 1);
    var id = parseInt(idstr);
    console.log("Id = "+id);
    console.log(typeof(id));

    var url = `http://localhost:8082/nhom7/news/${id}`;
    var requestOptions = {
     method: 'GET',
    redirect: 'follow'
    };

fetch(url, requestOptions)
  .then(response => response.json())
  .then(result => appendData(result))
  .catch(error => console.log('error', error));

  
  
  // Get element
  function appendData(result) {
      console.log(result);
      var mainContainer = document.getElementById('myData');
             
              
               var htmlText= `<div style="display:flex;">
                    <div style="margin-left: 20px">
                            <div style="margin-left: 20px">
                              <p class="p-loc">Created: ${result.created}</p>
                           </div>
                         <p class="p-loc">${result.fullText}</p>
                    </div>
                </div>
                `;
                   
              

          
           $('#myData').append(htmlText);
    }
    }

    getById();
  
</script>

<!-- <div style="margin-bottom: 10px;">
                      <img style="width: 200px; height: 200px;border-radius: 10px;" src="${result.img}" alt="">
                   </div> -->