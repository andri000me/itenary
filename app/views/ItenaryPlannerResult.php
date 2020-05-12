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
    <h1>Initeary Planner Algorithm Result</h1>


    <div class="col-sm-4">
        <h5 class="text-danger">Note : Mohon Di perhatikan Penting!!, Jika tidak dilakukan maka data yang ditampilkan berikutnya duplikat/tidak sesuai</h5>
        <p>Setelah Hasil ini ditampilkan,mohon untuk klik delete Data pada table hasilobyek melalui button di bawah ini
            karena untuk logika menampilkan datanya tanpa duplicate data masih belum dibuat/masih proses selanjutnya.
        </p>
        <form action="<?= BASEURL ?>/itenary/delete">
            <button type="submit" class="btn btn-danger">Hapus Data Table Hasilobyek</button>
        </form>

        <br>
        <br>
    </div>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="<?= BASEURL ?>/js/jquery-3.2.1.slim.min.js"></script>
    <script src="<?= BASEURL ?>/js/popper.min.js"></script>
    <script src="<?= BASEURL ?>/js/bootstrap.min.js"></script>
</body>

</html>