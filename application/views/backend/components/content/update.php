<div class="content-wrapper">
		<section class="content-header">
			<h1>Cập nhật bản tin</h1>
			
		</section>
		<!-- Main content -->
		<section class="content">
			<div class="row">
				<div class="col-md-12">
					<div class="box" id="view">
						<div class="box-body">
							<div id="myData" class="col-md-9">
							
									<!--Update-->


			<div class="breadcrumb">
				<a class="btn btn-primary" onclick="saveNew()">
					Save
				</a>
				<a class="btn btn-warning" href="admin/content" role="button">
					Exit
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
</div>

<script>
	// Get By Id
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
             
              
               var htmlText= `
               		<div class="form-group">
										<label>Title <span class = "maudo">(*)</span></label>
										<input id="title" type="text" class="form-control" name="title" style="width:100%" placeholder="Title" value="${result.title}">
										<div class="error" id="password_error"><?php echo form_error('title')?></div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="col-md-6" style="padding-left: 0px;"></div>
										<div class="col-md-6" style="padding-right: 0px;"></div>
										</div>
									</div>
								<div class="form-group">
									<label>IntroText</label>
									<input id="introText" name="introtext" class="form-control" value="${result.introText}">
									<div class="error" id="password_error"><?php echo form_error('title')?></div>
								</div>

								<div class="form-group">
									<label>Link Image</label>
									<input id="image" name="image" class="form-control" value="${result.img}">
									<div class="error" id="password_error"><?php echo form_error('image')?></div>
								</div>


								<div class="form-group">
									<label>FullText</label>
									<textarea  name="detail" id="detail" class="form-control" value="${result.fullText}"></textarea>
                `;
                   
              

          
           $('#myData').append(htmlText);
           CKEDITOR.replace('detail');
    }
    }
    getById();
	// Jquery call api add new
	function saveNew(){

			var url = window.location.href;
		    console.log("URL = "+window.location.href);
		    var idstr = url.substring(url.lastIndexOf('/') + 1);
		    var id = parseInt(idstr);
		    console.log("Id = "+id);
		    console.log(typeof(id));

		    var url = `http://localhost:8082/nhom7/news/${id}`;


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
              method: 'PUT',
              headers: myHeaders,
              body: raw,
              redirect: 'follow'
            };

            fetch(url, requestOptions)
              .then(response => response.json())
              .then(result => console.log(result))
              .catch(error => console.log('error', error));

              alert("Thêm mới thành công")
              window.location.replace("http://localhost/trieukhucstore/admin/content");

    }

</script>