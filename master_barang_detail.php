<h1>Detail barang</h1>
<a href="home.php?link=master_barang" style="margin-bottom: 10px;" title="" class="btn btn-info pull-right">Back</a>
<br>
	<table class="table table-responsive" id="tb_master">
		<thead>
			<tr>
				<th>No</th>
				<th style="display: none;">id</th>
				<th>Kode barang</th>
				<th>Nama barang</th>
				<th>Tgl Masuk</th>
				<th>Tgl Expired</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
		<?php 
			$no = 1;
			$sql = "SELECT *, a.id as idm , b.id as ids FROM tb_barang a LEFT JOIN tb_barang_stok b ON a.id = b.id_barang WHERE a.id = $_GET[id]";
			$query  = mysqli_query($conn,$sql);
			while ($data = mysqli_fetch_array($query)) { ?>
			<tr style="color: <?php echo (date('Y-m-d') < $data['tgl_expired'])?'back':'red'; ?>">
				<td><?php echo $no; ?></td>
				<td style="display: none;"><?php echo $data['idm']; ?></td>
				<td><?php echo $data['kode_barang'] ?></td>
				<td><?php echo $data['nama_barang'] ?></td>
				<td><?php echo date('d-m-Y',strtotime($data['tgl_masuk'])); ?></td>
				<td><?php echo date('d-m-Y',strtotime($data['tgl_expired'])); ?></td>
				<td>
				<a href="proses_master.php?kode=4&id=<?php echo $data['ids'];?>&ido=<?php echo $_GET['id'] ?>" class="btn btn-danger btn-xs" onclick="return confirm('Apakah Anda Yakin.. ?');" title="">Delete</a>
				</td>
			</tr>

		<?php 
		$no++;
			}
		 ?>
		</tbody>
	</table>
	<script type="text/javascript">
		 $(function(){
        $('#tb_master').DataTable();
    })
	</script>