<?php 

include "koneksi.php";

$id_per = $_POST['id_per'];
$tgl 	= date('Y-m-d',strtotime($_POST['tgl']));
$supp 	= $_POST['sup'];
$obat 	= $_POST['obat'];
$jml 	= $_POST['jml'];
$ket 	= $_POST['keterangan'];

if ($id_per == 0) {

	$sql 	= mysqli_query($conn,"INSERT INTO tb_permintaan VALUES('','$supp','$jml','$ket','$tgl')");
	$id 	= mysqli_insert_id($conn);
	$sql2 	= mysqli_query($conn,"INSERT INTO tb_permintaan_list VALUES('','$id','$obat','$jml')");
		if ($sql2) { ?>
			<script type="text/javascript">
				alert('Tambah Data Sukses !');
				window.location.href = 'home.php?link=permintaan&id_per='+<?php echo $id; ?>;
			</script>
		<?php }else{ ?>
			<script type="text/javascript">
				alert('Tambah Data Gagal !');
				window.location.href = 'home.php?link=permintaan&id_per='+<?php echo $id; ?>;
			</script>
		<?php 	
		}
}else{
	$sql 	= mysqli_query($conn,"UPDATE tb_permintaan SET jumlah = jumlah + '$jml' WHERE id_per = $id_per");
	$sql2 	= mysqli_query($conn,"INSERT INTO tb_permintaan_list VALUES('','$id_per','$obat','$ket','$jml')");
	if ($sql2) { ?>
		<script type="text/javascript">
			alert('Tambah Data Sukses !');
			window.location.href = 'home.php?link=permintaan&id_per='+<?php echo $id_per; ?>;
		</script>
	<?php }else{ ?>
		<script type="text/javascript">
			alert('Tambah Data Gagal !');
			window.location.href = 'home.php?link=permintaan&id_per='+<?php echo $id_per; ?>;
		</script>
	<?php 	
	}
}

 ?>