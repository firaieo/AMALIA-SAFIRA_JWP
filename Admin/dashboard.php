<?php 

$title = 'Dashboard';

require 'adminControl.php';
require 'template/headerAdmin.php';
require 'template/sidebarAdmin.php';

$totalTransaksiSelesai = count(query("SELECT * FROM transaksi WHERE statusPengiriman = 'Terkirim'"));
$totalTransaksiBelumSelesai = count(query("SELECT * FROM transaksi WHERE statusPengiriman = 'Dalam Perjalanan' AND statusPengiriman = 'Pending'"));
$totalTransaksiReject = count(query("SELECT * FROM transaksi WHERE statusTransaksi = 'Rejected'"));
$totalCancelTransaksi = count(query("SELECT * FROM transaksi WHERE statusTransaksi = 'Cancelled'"));
$totalProduk = count(query("SELECT * FROM produk"));
$totalGuestBook = count(query("SELECT * FROM guestbook"));
$totalCustomer = count(query("SELECT * FROM customer"));
$totalKeuangan = query("SELECT SUM(totalHarga) FROM transaksi WHERE statusPengiriman = 'Terkirim'")[0]['SUM(totalHarga)'];

?>


<main id="main" class="main">

    <div class="pagetitle ">
      <h1 class="text-center">Dashboard</h1>
    </div><!-- End Page Title -->

    <section class="section dashboard container">
      <div class="container">

        <!-- Left side columns -->
        <div class="">
          <div class="row">

          <div class="col-lg-4">
            <div class="card info-card succes-card">
                <div class="card-body">
                    <h5 class="card-title">Total Transaksi Selesai</h5>
                    <div class="d-flex align-items-center">
                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                            <i class="bi bi-bag-check"></i>
                        </div>
                        <div class="ps-3">
                            <h6><?= $totalTransaksiSelesai; ?></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Sales Card -->

        <div class="col-lg-4">
            <div class="card info-card pending-card">
                <div class="card-body">
                    <h5 class="card-title">Total Transaksi Belum Selesai</h5>
                    <div class="d-flex align-items-center">
                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                            <i class="bi bi-clock"></i>
                        </div>
                        <div class="ps-3">
                            <h6><?= $totalTransaksiBelumSelesai; ?></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Pending Card -->

        <div class="col-lg-4">
            <div class="card info-card rejected-card">
                <div class="card-body">
                    <h5 class="card-title">Total Transaksi Ditolak</h5>
                    <div class="d-flex align-items-center">
                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                            <i class="bi bi-x-circle"></i>
                        </div>
                        <div class="ps-3">
                            <h6><?= $totalTransaksiReject; ?></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Rejected Card -->

        <div class="col-lg-4">
            <div class="card info-card cancelled-card">
                <div class="card-body">
                    <h5 class="card-title">Total Transaksi Dibatalkan</h5>
                    <div class="d-flex align-items-center">
                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                            <i class="bi bi-calendar-x"></i>
                        </div>
                        <div class="ps-3">
                            <h6><?= $totalCancelTransaksi; ?></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Cancelled Card -->

        <div class="col-lg-4">
            <div class="card info-card product-card">
                <div class="card-body">
                    <h5 class="card-title">Total Produk</h5>
                    <div class="d-flex align-items-center">
                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                            <i class="bi bi-box"></i>
                        </div>
                        <div class="ps-3">
                            <h6><?= $totalProduk; ?></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Product Card -->

        <div class="col-lg-4">
            <div class="card info-card guestbook-card">
                <div class="card-body">
                    <h5 class="card-title">Total Guestbook</h5>
                    <div class="d-flex align-items-center">
                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                            <i class="bi bi-book"></i>
                        </div>
                        <div class="ps-3">
                            <h6><?= $totalGuestBook; ?></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Guestbook Card -->

        <div class="col-lg-4">
            <div class="card info-card customer-card">
                <div class="card-body">
                    <h5 class="card-title">Total Customer</h5>
                    <div class="d-flex align-items-center">
                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                            <i class="bi bi-person"></i>
                        </div>
                        <div class="ps-3">
                            <h6><?= $totalCustomer; ?></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Customer Card -->  

        <div class="col-lg-4">
            <div class="card info-card customer-card">
                <div class="card-body">
                    <h5 class="card-title">Total Pemasukan</h5>
                    <div class="d-flex align-items-center">
                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                            <i class="bi bi-person"></i>
                        </div>
                        <div class="ps-3">
                            <h6>Rp<?= number_format($totalKeuangan, 0, ',', '.'); ?></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Customer Card --> 
      </div>
  </section>