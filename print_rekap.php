<!DOCTYPE html>
<html>
<head>
<?php 
include "koneksi.php";
 ?>
<title>Print</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="assets/css/simple-sidebar.css">
  <!-- <link rel="stylesheet" type="text/css" href="assets/css/dataTables.bootstrap.css"> -->
  <link rel="stylesheet" type="text/css" href="assets/css/jquery.dataTables.css">

  <script type="text/javascript" src="assets/js/jquery-2.2.3.min.js"></script>
  <script type="text/javascript" src="assets/js/dataTables.bootstrap.js"></script>
<style type="text/css">
		#ttd tbody tr td{
		border: none;
		}
		@media print{
			@page{margin: 0;}
			body{margin: 2cm;}
		}
</style>
</head>
<body onload=" 
  var css = '@page { size: landscape; }',
    head = document.head || document.getElementsByTagName('head')[0],
    style = document.createElement('style');

  style.type = 'text/css';
  style.media = 'print';

  if (style.styleSheet){
  style.styleSheet.cssText = css;
  } else {
  style.appendChild(document.createTextNode(css));
  }

  head.appendChild(style);
  window.print(); history.back() " style="font-satuan: 20px;">
<div class="container">

<div class="row">
   <div class="col-md-12">
   <table class="table">
     <tr>
       <td>
       </td>
       <td>
        <h3 class="text-center">Sinar Cahaya CELL<br>
           <h5 class="text-center">Bintara 4, Bekasi Barat Kota Bekasi.</h5></h3> 
       </td>
       <td>
       </td>
     </tr>
        <?php 
        $awal   = $_GET['awal'];
        $akhir  = $_GET['akhir'];

          $sql = " SELECT a.*,
                b.nm_barang, 
                b.hr_barang,
                b.satuan, 
                b.jm_barang,
                b.laba, 
                b.jum_barang
            FROM tb_transaksi a 
            LEFT JOIN (
              SELECT 
                z.id_trans, 
                SUM(z.jumlah) as jum_barang ,
                SUM(z.laba) as laba,
                GROUP_CONCAT(x.nama_barang) as nm_barang ,
                GROUP_CONCAT(x.harga_jual) as hr_barang ,
                GROUP_CONCAT(x.satuan) as satuan ,
                GROUP_CONCAT(z.jumlah) as jm_barang 
                FROM tb_transaksi_list z  
                LEFT JOIN  tb_barang x ON z.id_menu = x.id 
                GROUP BY z.id_trans
            ) as b ON b.id_trans = a.id
            WHERE a.tgl_transaksi BETWEEN '$awal' AND '$akhir'
            ORDER BY a.id ASC";
        
        ?>
     <tr>
       <td colspan="3" class="text-center">  <h4 class="text-center">Rekap pada tanggal <?php echo date('d-M-Y',strtotime($awal)).' s/d '. date('d-M-Y',strtotime($akhir)); ?></h4></td>
       
     </tr>
   </table>
   </div>  
 </div>

  <h3 align="center"></h3>

    <table id="tb_tran" class="table table-bordered">
        <thead>
          <tr>
            <th>No</th>
            <th>Tgl Transaksi</th>
            <th style="width: 10px;">Total Jenis Barang</th>
            <th style="width: 10px;">Total Barang </th>
            <th align="center" style="width: 40%;">List Barang </th>
            <th>Total harga</th>
            <th>Laba Keuntungan</th>
          </tr>
        </thead>
        <tbody>
        
        <?php
          $no=1;
          $query = mysqli_query($conn,$sql);
          $totlaba = 0;
          $totpen = 0;
          while ($tran = mysqli_fetch_array($query)) { 
        ?>
          <tr>
            <td><?php echo $no++; ?></td>
            <td><?php echo date('d-M-Y H:i A', strtotime($tran['tgl_transaksi'])); ?></td>
            <td><?php echo $tran['jumlah_menu']; ?></td>
            <td><?php echo $tran['jum_barang']; ?></td>
            <td><table style="width: 100%;">
              <thead>
                <tr>
                  <th width="40%">Nama</th>
                  <th>Satuan</th>
                  <th>Harga</th>
                  <th>Jumlah</th>
                </tr>
              </thead>
              <tbody>
              <?php 
                $nm = explode(',', $tran['nm_barang']);
                $sz = explode(',', $tran['satuan']);
                $hr = explode(',', $tran['hr_barang']);
                $jm = explode(',', $tran['jm_barang']);
               for ($i=0; $i < count($jm) ; $i++) {             
               ?>

                <tr class="text-center">
                  <td><?php echo $nm[$i]; ?></td>
                  <td><?php echo $sz[$i]; ?></td>
                  <td>Rp.<?php echo number_format($hr[$i] ,0,',','.'); ?></td>
                  <td><?php echo $jm[$i]; ?></td>
                </tr>
                <?php } ?>
              </tbody>
            </table>
            </td>
            <td><table style="width: 100%;">
                <tr>
                  <th>Belanja</th>
                  <th>:</th>
                  <td>Rp. <?php echo number_format($tran['total_harga'] ,0,',','.'); ?></td>
                </tr>
                <tr>
                  <th>Bayar</th>
                  <th>:</th>
                  <td>Rp. <?php echo number_format($tran['bayar'] ,0,',','.'); ?></td>
                </tr>
                <tr>
                  <th>Kembali</th>
                  <th>:</th>
                  <td>Rp. <?php echo number_format($tran['kembali'] ,0,',','.'); ?></td>
                </tr>
              </table>
            </td>
            <td>Rp. <?php echo number_format($tran['laba'] ,0,',','.'); ?></td>
          </tr>
        <?php 
          $totlaba = $totlaba + $tran['total_harga'];
          $totpen =  $totpen + $tran['laba'];
          }
        ?>
          <tr>
              <td colspan="5">Total : </td>
              <td>Rp.<?php echo number_format($totlaba ,0,',','.');  ?></td>
              <td>Rp.<?php echo number_format($totpen ,0,',','.');  ?></td>
          </tr>
        </tbody>
  </table>
</div>
<script type="text/javascript" src="assets/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/js/dataTables.bootstrap.js"></script>
</body>
</html>