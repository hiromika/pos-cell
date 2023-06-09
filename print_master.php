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
<body onload="var css = '@page { size: landscape; }',
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
  window.print(); history.back() " style="font-size: 20px;">
<div class="container">
  
  <h3 align="center">REKAP STOK barang TANGGAL <?php echo date("d / M / Y"); ?></h3>

 <table class="table table-responsive table-bordered" id="tb_master">
    <thead>
      <tr>
        <th>No</th>
        <th style="display: none;">id</th>
        <th>Nama barang</th>
        <th style="display: none;">idj</th>
        <th>Jenis</th>
        <th>Keterangan</th>
        <th>Harga Modal</th>
        <th>Harga Jual</th>
        <th>Stock</th>
        <th>Last Update</th>
      </tr>
    </thead>
    <tbody>
    <?php 
      $no = 1;
      $sql = "SELECT *, a.id as idm, b.id as idj FROM tb_barang a LEFT JOIN tb_jenis b ON a.jenis = b.id";
      $query  = mysqli_query($conn,$sql);
      while ($data = mysqli_fetch_array($query)) { ?>
      <tr>
        <td><?php echo $no; ?></td>
        <td style="display: none;"><?php echo $data['idm']; ?></td>
        <td><?php echo $data['nama_barang'] ?></td>
        <td style="display: none;"><?php echo $data['jenis'] ?></td>
        <td><?php echo $data['nama_jenis'] ?></td>
        <td><?php echo $data['keterangan'] ?></td>
        <td><?php echo number_format($data['harga_modal'],0,',','.'); ?></td>
        <td><?php echo number_format($data['harga_jual'],0,',','.'); ?></td>
        <td><?php echo $data['stock'] ?></td>
        <td><?php echo date('d-M-Y H:i A', strtotime($data['last_update'])); ?></td>
      </tr>

    <?php 
    $no++;
      }
     ?>
    </tbody>
  </table>

</div>
<script type="text/javascript" src="assets/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/js/dataTables.bootstrap.js"></script>
</body>
</html>