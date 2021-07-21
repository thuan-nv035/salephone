<?php
$d=getdate();
$year=$d['year'];
$total = 0; $cost = 0;
for ($i=1; $i <= 12 ; $i++) 
{   
  $list_orrders = $this->Morders->order_follow_month($year, $i);
  $sum = 0;
  foreach ($list_orrders as $row_orrder) 
  {
    $order_detail = $this->Morderdetail->orderdetail_orderid($row_orrder['id']);
    foreach ($order_detail as $value) {
      $sum += $value['count'];
    }
    $total += $row_orrder['money'];
  }
}
?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->

  <!-- Main content -->
  <section class="content">
    <!-- Small boxes (Stat box) -->
    <div class="row">
      <div class="col-lg-4 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-aqua" style="padding-bottom: 15px">
          <div class="inner">
            <!-- <h3><?php echo $total1; ?></h3> -->
            <p>Sản phẩm</p>
            <div class="icon">
              <i class="ion ion-bag"></i>
            </div>
          </div>
          <a href="<?php echo base_url() ?>admin/product" class="small-box-footer">Danh sách sản phẩm</a>
        </div>
      </div>
      <!-- ./col -->
      <div class="col-lg-4 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-green" style="padding-bottom: 15px">
          <div class="inner">
            <!-- <h3><?php echo $total2; ?></h3> -->
            <p>Khách hàng</p>
          </div>
          <div class="icon">
            <i class="ion ion-android-chat "></i>
          </div>
          <a href="<?php echo base_url() ?>admin/customer" class="small-box-footer">Danh sách khách hàng</a>
        </div>
      </div>
      <!-- ./col -->
      
      <!-- ./col -->
      <div class="col-lg-4 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-red" style="padding-bottom: 15px">
          <div class="inner">
           <!--  <h3><?php echo $total4; ?></h3> -->
            <p>Đơn hàng</p>
          </div>  
          <div class="icon">
            <i class="ion ion-cube"></i>
          </div>
          <a href="<?php echo base_url() ?>admin/orders" class="small-box-footer">Danh sách đơn hàng</a>
        </div>
      </div>
      <!-- ./col -->
    </div>
    <!-- /.row -->
  </section>
  

  
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <script>
   google.charts.load('current', {'packages':['corechart']});
   google.charts.setOnLoadCallback(drawVisualization);

   function drawVisualization() {
    var data = google.visualization.arrayToDataTable([
     ['Month', 'Bán ra', 'Đơn hàng'],
     <?php
     $d=getdate();
     $year=$d['year'];
     for ($i=1; $i <= 12 ; $i++) 
     {   
      $list_orrders = $this->Morders->order_follow_month($year, $i);
      $sum = 0;
      foreach ($list_orrders as $row_orrder) 
      {
        $order_detail = $this->Morderdetail->orderdetail_orderid($row_orrder['id']);
        foreach ($order_detail as $value) {
          $sum += $value['count'];
        }
      }
      if($i >= 1 && $i <=9)
      {
        echo "['0".$i.'/'.$year."',".$sum.",".count($list_orrders)."],";
      }
      else
      {
        echo "['".$i.'/'.$year."',".$sum.",".count($list_orrders)."],";
      }
    }
    ?>

    ]);

    var options = {
      title: 'Số lượng bán ra từ 03/2021 - 06/2021',
      seriesType: 'bars'
    };

    var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
    chart.draw(data, options);
  } 
</script>