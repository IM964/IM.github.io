<?php
ob_start();
session_start();
	include"program/koneksi.php";
?>
<!DOCTYPE html>
<html>
<head>
	<title>.:: PT. PLN PERSERO CABANG PANDEGLANG</title>
	<link rel="stylesheet" href="style.css" type="text/css">
	<script type="text/javascript" src="jquery-2.2.3.min.js"></script>
</head>
<body>
	<div id="navbar">
		<ul>
			<li><a href="?isi=">HOME</a></li>
			<li><a href="?isi=keluhan">KELUHAN PELANGGAN</a></li>
			<?php
				if(isset($_SESSION['idusermember'])){
					?>
						<li><a href="?isi=profile">PROFILE MEMBER</a></li>
						<?php
							$pelangganaktif=mysqli_query($koneksi,"select * from tb_pelanggan inner join tb_user on tb_pelanggan.iduser=tb_user.iduser where tb_pelanggan.status='Y' and tb_user.iduser='$_SESSION[idusermember]'");
							$jumlahaktif=mysqli_num_rows($pelangganaktif);
						?>
						<?php
							if($jumlahaktif>0){
								?>
								<li><a href="?isi=pemasangan">PEMASANGAN</a></li>
								<li><a href="?isi=perubahannama">UBAH NAMA</a></li>
								<?php
							}
						?>	
						<li><a href="?isi=keluar" onclick="return confirm('Anda yakin ingin keluar ?')">KELUAR SISTEM</a></li>
					<?php
				}
				else{
					?>
						

						<li><a href="?isi=berita">BERITA</a></li>
						<li><a href="?isi=daftar">DAFTAR MEMBER</a></li>
						<li><a href="?isi=login">LOGIN SISTEM</a></li>
					<?php
				}
			?>
		</ul>
	</div>

	<div id="banner">
		<img src="gambar/header.jpg">
	</div>

	<div id="container">
		<div id="content">
			<div id="judulcontent"> Konten Website</div>
			<div id="isicontent"> <?php include"program/isi.php"; ?></div>
		</div>

		<div id="news">
			<div id="judulnews">.:: Berita Terkini</div>
			<div id="isinews">
				<ol>
					<?php
						$beritaterkini=mysqli_query($koneksi,"select * from tb_berita order by tglposting desc");
						while($rowterkini=mysqli_fetch_array($beritaterkini)){
					?>
					<li><a href="?isi=bacaberita&idberita=<?php echo $rowterkini[0]; ?>"><?php echo $rowterkini['tglposting']; ?> | <?php echo $rowterkini['judul']; ?></a></li>
					<?php
						}
					?>
				</ol>
			</div>
		</div>

		<div id="news">
			<div id="judulnews" style="background-color: #24BACC;margin-top: 10px;">Cek Tagihan</div>
			<div id="isinews">
				<label>Id Pelanggan</label><br>
				<input type="number" class="input1" placeholder="ID Pelanggan.." name="idpelanggan" id="idpelanggan">
				<div id="tampiltagihan">
					<?php
						include"halaman/tagihan.php";
					?>
				</div>

				<script type="text/javascript">
					$("#idpelanggan").keyup(function(){
						var idpelanggan=$("#idpelanggan").val();
						$.ajax({
							url:'halaman/tagihan.php',
							type:'post',
							data:'idpelanggan='+idpelanggan,
							success:function(msg){
								$("#tampiltagihan").html(msg);
							}
						});	
					});
				</script>
			</div>
		</div>

		<div id="news">
			<div id="judulnews" style="background-color: #24BACC;margin-top: 10px;">Informasi Ferivikasi</div>
			<div id="isinews">
				<blink>Permohonan Pemasangan Baru, Pendaftaran Member dan pelayanan lainya, akan kami layani dalam waktu 1x24 Jam.</blink>
			</div>
		</div>
	</div>

	<div id="footer">
			<div class="layanan">
				<H2><center>LAYANAN KAMI</center></H2>
				<hr>
				<ul>
					<li>PENDAFTARAN MEMBER</li>
					<li>KELUHAN PELANGGAN</li>
					<li>PEMASANGAN DAYA</li>
					<li>TAGIHAN PEMBAYARAN</li>
					<li>NEWS</li>			
				</ul>
			</div>	

			<div class="contact">
				<H2><center>KONTAK KAMI</center></H2>
				<hr>
				<img src="gambar/fb.png"> ptplnpandeglang@go.od<br>
				<img src="gambar/twitter.png"> @ptplnpandeglang<br>
				<img src="gambar/web.png"> ptplnpandeglang.go.id<br>
			</div>

			<div class="address">
				<h2><center>ALamat</center></h2>
				<hr>
				Alamat : Jl. Jenderal Ahmad Yani No. 11 Curug Sawer Kadu Pandang Kab. Pandeglang Telp. (0253) - 201411 Kode Pos
				<img src="gambar/map.png">
			</div>

	</div>


</body>
</html>