<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<?= BASEURL ?>/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">

    <title>Hello, world!</title>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Pesona Jawa</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item ">
                    <a class="nav-link" href="<?= BASEURL ?>/index">Itenary Greedy <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="<?= BASEURL ?>/itenary/planner">Itenary Kabupaten</a>
                </li>

            </ul>
        </div>
    </nav>
    <h1>Initeary Greedy Algorithm</h1>

    <div class="col-sm-4">
        <form action="<?= BASEURL ?>/itenary/planerProses" method="post">
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text">CHOSE DESTINATION</span>
                </div>
                <select name="kabupaten" class="form-control selectpicker" id="kabupaten" data-live-search="true">
                    <?php foreach ($data["kabupaten"] as $kab) : ?>
                        <option value="<?php echo $kab["kabupatenKODE"]; ?>">
                            <?php echo $kab["kabupatenNAMA"]; ?>

                        </option>
                    <?php endforeach; ?>


                </select>
                <div class="input-group-append">
                    <span class="input-group-text">?</span>
                </div>
            </div>

            <div class="input-group">
                <h5 class="border-bottom border-success col-12">Select Your Schedule</h5>

                <div class="input-group col-sm-6 mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon3">Start</span>
                    </div>
                    <input type="text" class="form-control datepicker" id="start" name="startdate" required>
                </div>
                <div class="input-group col-sm-6  mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon3">End</span>
                    </div>
                    <input type="text" class="form-control datepicker" id="end" name="enddate" required>
                </div>

            </div>

            <!-- <div class="input group">
                <h5 class="border-bottom border-success col-12">Choose A Tourist Attraction</h5>
                <div class="form-group form-check">
                    <input type="checkbox" class="form-check-input" id="popular" name="popular" value="popular">
                    <label class="form-check-label" for="popuplar">Popular</label>
                </div>
                <div class="form-group form-check">
                    <input type="checkbox" class="form-check-input" id="nearfast" name="nearfast" value="nearfast">
                    <label class="form-check-label" for="nearfast">Near-fast</label>
                </div>

            </div> -->

            <button type="submit" class="btn btn-primary">Proses hasil</button>
        </form>
    </div>
    <!-- 
    <div class="col-sm-4">
        <h5 class="text-danger">Note : Pengujian</h5>
        <p>Harap Delete semua data pada tabel hasilobyek terlebih dahulu </p>
        <h5>Untuk Pengujian : Karena Data biar sesuai dengan yang di jarak obyek, yang lengkap ASAL dan Tujuan Berikut</h5>
        <h5 class="text-danger"> Lokasi Asal : Kampoeng Karet</h5>
        <h5 class="text-danger"> Lokasi Tujuan : Bukit Sekipan</h5>
    </div> -->


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->




    <script src="<?= BASEURL ?>/js/jquery-3.2.1.slim.min.js"></script>
    <script src="<?= BASEURL ?>/js/popper.min.js"></script>
    <script src="<?= BASEURL ?>/js/bootstrap.min.js"></script>

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="<?= BASEURL ?>/js/datefunction.js"></script>
</body>

</html>