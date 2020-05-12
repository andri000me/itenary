<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<?= BASEURL ?>/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Hello, world!</title>
</head>

<body>
    <h1>Initeary Greedy Algorithm</h1>

    <div class="col-sm-4">
        <form action="<?= BASEURL ?>/itenary/hasil" method="post">
            <div class="form-group">
                <label for="supplier">Lokasi Awal</label>
                <select name="lokawal" class="form-control selectpicker" id="lokawal" data-live-search="true">
                    <?php foreach ($data["obyekwisata"] as $obj) : ?>
                        <option value="<?php echo $obj["obyekKODE"]; ?>">
                            <?php echo $obj["obyekNAMA"]; ?>

                        </option>
                    <?php endforeach; ?>


                </select>
            </div>
            <div class="form-group">
                <label for="loktuj">Lokasi Tujuan</label>
                <select name="loktuj" class="form-control selectpicker" id="loktuj" data-live-search="true">
                    <?php foreach ($data["obyekwisata"] as $obj) : ?>
                        <option value="<?php echo $obj["obyekKODE"]; ?>">
                            <?php echo $obj["obyekNAMA"]; ?>

                        </option>
                    <?php endforeach; ?>

                </select>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="sort" id="jarak" value="Jarak" checked>
                <label class="form-check-label" for="jarak">Jarak</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="sort" id="waktu" value="Waktu">
                <label class="form-check-label" for="waktu">Waktu</label>
            </div>

            <button type="submit" class="btn btn-primary">Proses hasil</button>
        </form>
    </div>

    <div class="col-sm-4">
        <h5 class="text-danger">Note : Pengujian</h5>
        <p>Harap Delete semua data pada tabel hasilobyek terlebih dahulu </p>
        <h5>Untuk Pengujian : Karena Data biar sesuai dengan yang di jarak obyek, yang lengkap ASAL dan Tujuan Berikut</h5>
        <h5 class="text-danger"> Lokasi Asal : Kampoeng Karet</h5>
        <h5 class="text-danger"> Lokasi Tujuan : Bukit Sekipan</h5>
    </div>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="<?= BASEURL ?>/js/jquery-3.2.1.slim.min.js"></script>
    <script src="<?= BASEURL ?>/js/popper.min.js"></script>
    <script src="<?= BASEURL ?>/js/bootstrap.min.js"></script>
</body>

</html>