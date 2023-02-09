<?php 
    include './template/header.php';
    include './template/nav.php';
?>

<div class="container carousel-home">
    <div class="row mt-5">
        <div class="col p-0">
            <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="./assets/img/Untitled-1.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="./assets/img/Untitled-2.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="./assets/img/Untitled-3.jpg" class="d-block w-100" alt="...">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>

    <div class="row mt-5 justify-content-center">
        <div class="col-sm-9">
            <h3 class="mb-4 text-center">Layanan</h3>
            <p>Kami meyediakan penyewaan berbagai perlatan outdoor sebagai perlengkapan saat anda ingin mendaki, kami
                memberikan harga sewa yang terjangkau untuk setiap perlatan. Untuk lebih lengkapnya anda dapat mengclick
                tombol di bawah.</p>
            <a href="alat.php"><button class="btn btn-primary btn-sm">Disini</button></a>
        </div>
    </div>

    <div class="row text-center mt-5 alur">
        <div class="col-sm-12">
            <h3 class="mb-4 text-left">Alur Penyewaan</h3>
        </div>
        <div class="col-sm-3">
            <img src="./assets/img/hand-presses-select.jpg" alt=".." class="rounded-circle shadow">
            <h5 class="mt-2">Piilih Alat</h5>
            <p>Anda dapat memilih alat yang akan disewa, dan menentukan tanggal penyewaannya.</p>
        </div>
        <div class="col-sm-3">
            <img src="./assets/img/ambil-1.jpg" alt=".." class="rounded-circle shadow">
            <h5 class="mt-2">Ambil Alat</h5>
            <p>Alat diambil di tempat kami pada tanggal penyewaan yang sudah anda tentukan.</p>
        </div>
        <div class="col-sm-3">
            <img src="./assets/img/kembali-4.jpg" alt=".." class="rounded-circle shadow">
            <h5 class="mt-2">Kembalikan Alat</h5>
            <p>Kembalikan alat ke tempat kami, jika sudah mencapai lama pemyewaan.</p>
        </div>
        <div class="col-sm-3">
            <img src="./assets/img/pexels-photo-2025175.jpg" alt=".." class="rounded-circle shadow">
            <h5 class="mt-2">Pembayaran</h5>
            <p>Pada saat mengembalikan alat, anda dapat membayar biaya penyewaan.</p>
        </div>
    </div>

    <div class="row mt-5">
        <div class="col-sm-12">
            <h3 class="mb-4">Alamat Kami</h3>
        </div>
        <div class="col-sm-4">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z" />
            </svg>
            <p>Jl. Raya ciwaringin no 15 </p>
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                class="bi bi-telephone-fill" viewBox="0 0 16 16">
                <path fill-rule="evenodd"
                    d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z" />
            </svg>
            <p>085173300655</p>
        </div>
        <div class="col-sm-8">
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1979.8886183391526!2d113.80774956215684!3d-7.03544778029532!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd9e7ea384a260b%3A0x6212f572d4943587!2sRumah%20Mountain!5e0!3m2!1sen!2sid!4v1609208718158!5m2!1sen!2sid"
                width="100%" height="300" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false"
                tabindex="0"></iframe>
        </div>
    </div>


</div>


<?php include './template/footer.php'; ?>