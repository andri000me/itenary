<?php
class itenary_model
{
    private $db;

    public function __construct()
    {
        $this->db = new Database;
    }

    public function listobyekwisata()
    {
        $this->db->query("Select * from obyekwisata order by obyekNAMA");
        return $this->db->resultSet();
    }

    public function kabupaten()
    {
        $this->db->query("select * from kabupaten order by kabupatenNAMA");
        return $this->db->resultSet();
    }

    public function getkecamatanByKabupaten($kabkode)
    {
        $this->db->query("select * from kecamatan where kabupatenKODE=:kabupaten");
        $this->db->bind("kabupaten", $kabkode);
        return $this->db->resultSet();
    }

    public function getdatakecamatan($objkode)
    {
        $this->db->query("select kecamatanKODE from obyekwisata where obyekKODE=:obj");
        $this->db->bind('obj', $objkode);
        return $this->db->resultSingle();
    }


    public function getkabupaten($keckode)
    {
        $this->db->query("select kabupatenKODE from kecamatan where kecamatanKODE=:keckode");
        $this->db->bind('keckode', $keckode);
        return $this->db->resultSingle();
    }

    public function listjaraktujuan($kodetujuan)
    {
        $this->db->query("select * from jarakobyek where obyekKODEtujuan=:kodtujuan ");
        $this->db->bind("kodtujuan", $kodetujuan);
        return $this->db->resultSet();
    }

    public function listjarakawal($kodeawal)
    {
        $this->db->query("select * from jarakobyek where obyekKODEasal=:kodawal ");
        $this->db->bind("kodawal", $kodeawal);
        return $this->db->resultSet();
    }



    public function inserthasil($l, $loktuj, $jmlhjarak, $jmlhtempuh)
    {
        $listawal = $this->listjarakawal($l);
        $i = 1;
        $listbaru = [];
        $a = -1;

        foreach ($listawal as $list) {

            $listtujuan = $list["obyekKODEtujuan"];
            $listasal = $list["obyekKODEasal"];

            $nextdata = $this->listjarakawal($listtujuan);

            $kecawal = $this->getdatakecamatan($listasal);
            $kectuj = $this->getdatakecamatan($listtujuan);


            $kabawal = $this->getkabupaten($kecawal["kecamatanKODE"]);
            $kabtujuan = $this->getkabupaten($kectuj["kecamatanKODE"]);

            $jmlhjarak =  $list["obyekjarak"];
            $jmlhtempuh = $list["obyektempuh"];
            $this->db->query("insert into hasilobyek values(:kodeasal,:kodetujuan,:obyekjarak,:obyekwaktu,:jmljarak,:jlmwaktu,:kabawal,:kabtujuan,:custid,:rute)");
            $this->db->bind("kodeasal", $listasal);
            $this->db->bind("kodetujuan", $listtujuan);
            $this->db->bind("obyekjarak", $list["obyekjarak"]);
            $this->db->bind("obyekwaktu", $list["obyektempuh"]);
            $this->db->bind("jmljarak", $jmlhjarak);
            $this->db->bind("jlmwaktu", $jmlhtempuh);
            $this->db->bind("kabawal", $kabawal["kabupatenKODE"]);
            $this->db->bind("kabtujuan", $kabtujuan["kabupatenKODE"]);
            $this->db->bind("custid", 'CUST930');
            $this->db->bind("rute", $i);
            $this->db->execute();
            $i++;

            // $i++;
            $a++;
            $listbaru[$a]["asal"] = $listtujuan;
            $listbaru[$a]["jarak"] = $jmlhjarak;
            $listbaru[$a]["tempuh"] = $jmlhtempuh;
        }
        return $listbaru;
    }

    public function inserthasillanjutan($l, $loktuj, $jmlhjarak, $jmlhtempuh)
    {
        $listawal = $this->listjarakawal($l);
        $i = 1;
        $listbaru = [];
        $a = 1;


        if (count($listawal) > 0) {
            foreach ($listawal as $list) {

                $listtujuan = $list["obyekKODEtujuan"];
                $listasal = $list["obyekKODEasal"];

                $nextdata = $this->listjarakawal($listtujuan);

                $kecawal = $this->getdatakecamatan($listasal);
                $kectuj = $this->getdatakecamatan($listtujuan);


                $kabawal = $this->getkabupaten($kecawal["kecamatanKODE"]);
                $kabtujuan = $this->getkabupaten($kectuj["kecamatanKODE"]);

                $jmlhjarak1 = $jmlhjarak + $list["obyekjarak"];
                $jmlhtempuh1 = $jmlhtempuh + $list["obyektempuh"];
                $this->db->query("insert into hasilobyek values(:kodeasal,:kodetujuan,:obyekjarak,:obyekwaktu,:jmljarak,:jlmwaktu,:kabawal,:kabtujuan,:custid,:rute)");
                $this->db->bind("kodeasal", $listasal);
                $this->db->bind("kodetujuan", $listtujuan);
                $this->db->bind("obyekjarak", $list["obyekjarak"]);
                $this->db->bind("obyekwaktu", $list["obyektempuh"]);
                $this->db->bind("jmljarak", $jmlhjarak1);
                $this->db->bind("jlmwaktu", $jmlhtempuh1);
                $this->db->bind("kabawal", $kabawal["kabupatenKODE"]);
                $this->db->bind("kabtujuan", $kabtujuan["kabupatenKODE"]);
                $this->db->bind("custid", 'CUST930');
                $this->db->bind("rute", $i);
                $this->db->execute();
                $i++;
                if ($listtujuan == $loktuj) {
                    unset($lak);
                    break;
                }
                // $i++;
                $a++;
                $listbaru[$a]["asal"] = $listtujuan;
                $listbaru[$a]["jarak"] = $jmlhjarak1;
                $listbaru[$a]["tempuh"] = $jmlhtempuh1;
            }
        }

        return $listbaru;
    }

    public function greedy($data)
    {
        $lokawal = $data["lokawal"];
        $loktuj = $data["loktuj"];

        $kecamatanawal = $this->getdatakecamatan($lokawal);
        $kabupatenawal = $this->getkabupaten($kecamatanawal["kecamatanKODE"]);

        $kecatamantujuan = $this->getdatakecamatan($loktuj);
        $kabupatentujuan = $this->getkabupaten($kecatamantujuan["kecamatanKODE"]);


        $listawal = $this->listjarakawal($lokawal);

        $lok = $this->inserthasil($lokawal, $loktuj, 0, 0);


        $lak = [];

        foreach ($lok as $list) {
            array_push($lak, $this->inserthasillanjutan($list["asal"], $loktuj, $list["jarak"], $list["tempuh"]));
        }
        $new = [];
        // var_dump($lak);
        // echo "<br>";
        while (!empty($lak)) {

            foreach ($lak as $list) {

                foreach ($list as $daftar) {
                    array_push($new, $this->inserthasillanjutan($daftar["asal"], $loktuj, $daftar["jarak"], $daftar["tempuh"]));
                }
            }
            // var_dump($new);
            // die;


            if (count($new) > 0) {

                $lak = $new;

                unset($new);

                $new = array();
            } else {
                unset($lak);
            }
        }

        return true;
    }

    public function deletehasilobyek() //temporary function
    {
        $this->db->query("delete from hasilobyek");
        $this->db->execute();
        return $this->db->rowCount();
    }

    public function listrute($tujuan)
    {
        $this->db->query("SELECT obyekKODEasal,obyekKODEtujuan,owa.obyekNAMA AS obyekAwal, owt.obyekNAMA AS obyekTujuan, ho.obyekjarak, ho.obyekwaktutempuh,
        ho.jmljarak, ho.jmlwaktutempuh,ka.kabupatenNAMA AS kabawal,kb.kabupatenNAMA AS KabupatenAkhir ,ho.rute
        FROM hasilobyek ho JOIN obyekwisata owa JOIN obyekwisata owt JOIN kabupaten ka JOIN kabupaten kb
        WHERE ho.obyekKODEasal = owa.obyekKODE AND ho.obyekKODEtujuan = owt.obyekKODE AND ka.kabupatenKODE = ho.kabupatenKODE_awal AND kb.kabupatenKODE = ho.kabupatenKODE_berikut and obyekKODEtujuan=:tujuan ORDER BY jmljarak");
        $this->db->bind("tujuan", $tujuan);
        return $this->db->resultSet();
    }
    public function greedydisplayjarak($tujuan)
    {
        $listrute = $this->listrute($tujuan);
        $jarak = 0;
        $id = null;

        $obyekAwal = null;
        $obyekKodeTujuan = null;
        $obyekTujuan = null;
        $obyekJarak = null;
        $obyekWaktu = null;
        $jmlJarak = null;
        $jmlWaktu = null;
        $kabupatenAwal = null;
        $kabTujuan = null;
        $rute = 0;
        $listsementara = [];
        if (count($listrute) == 0) {
            return $listsementara;
        } else {
            foreach ($listrute as $list) {
                if ($jarak == 0) {
                    $id = $list["obyekKODEasal"];
                    $jarak = $list["jmljarak"];

                    $obyekAwal = $list["obyekAwal"];
                    $obyekKodeTujuan = $list["obyekKODEtujuan"];
                    $obyekTujuan = $list["obyekTujuan"];
                    $obyekJarak = $list["obyekjarak"];
                    $obyekWaktu = $list["obyekwaktutempuh"];
                    $jmlJarak = $list["jmljarak"];
                    $jmlWaktu = $list["jmlwaktutempuh"];
                    $kabupatenAwal = $list["kabawal"];
                    $kabTujuan = $list["KabupatenAkhir"];
                    $rute = $list["rute"];
                } else if ($list["jmljarak"] < $jarak) {
                    $id = $list["obyekKODEasal"];
                    $jarak = $list["jmljarak"];


                    $obyekAwal = $list["obyekAwal"];
                    $obyekKodeTujuan = $list["obyekKODEtujuan"];
                    $obyekTujuan = $list["obyekTujuan"];
                    $obyekJarak = $list["obyekjarak"];
                    $obyekWaktu = $list["obyekwaktutempuh"];
                    $jmlJarak = $list["jmljarak"];
                    $jmlWaktu = $list["jmlwaktutempuh"];
                    $kabupatenAwal = $list["kabawal"];
                    $kabTujuan = $list["KabupatenAkhir"];
                    $rute = $list["rute"];
                }
            }
            $listsementara = [
                "obyekasal" => $id,
                "obyekawal" => $obyekAwal,
                "obyekKODETUJUAN" => $obyekKodeTujuan,
                "obyektujuan" => $obyekTujuan,
                "obyekjarak" => $obyekJarak,
                "obyekwaktu" => $obyekWaktu,
                "jmljarak" => $jmlJarak,
                "jmlwaktu" => $jmlWaktu,
                "kabawal" => $kabupatenAwal,
                "kabtujuan" => $kabTujuan,
                "rute" => $rute
            ];


            return $listsementara;
        }
    }

    public function greedydisplaywaktu($tujuan)
    {
        $listrute = $this->listrute($tujuan);
        $waktu = 0;
        $id = null;

        $obyekAwal = null;
        $obyekTujuan = null;
        $obyekJarak = null;
        $obyekWaktu = null;
        $jmlJarak = null;
        $jmlWaktu = null;
        $kabupatenAwal = null;
        $kabTujuan = null;
        $rute = 0;
        $listsementara = [];
        if (count($listrute) == 0) {
            return $listsementara;
        } else {
            foreach ($listrute as $list) {
                if ($waktu == 0) {
                    $id = $list["obyekKODEasal"];
                    $waktu = $list["jmlwaktutempuh"];

                    $obyekAwal = $list["obyekAwal"];
                    $obyekTujuan = $list["obyekTujuan"];
                    $obyekJarak = $list["obyekjarak"];
                    $obyekWaktu = $list["obyekwaktutempuh"];
                    $jmlJarak = $list["jmljarak"];
                    $jmlWaktu = $list["jmlwaktutempuh"];
                    $kabupatenAwal = $list["kabawal"];
                    $kabTujuan = $list["KabupatenAkhir"];
                    $rute = $list["rute"];
                } else if ($list["jmlwaktutempuh"] < $waktu) {
                    $id = $list["obyekKODEasal"];
                    $waktu = $list["jmlwaktutempuh"];


                    $obyekAwal = $list["obyekAwal"];
                    $obyekTujuan = $list["obyekTujuan"];
                    $obyekJarak = $list["obyekjarak"];
                    $obyekWaktu = $list["obyekwaktutempuh"];
                    $jmlJarak = $list["jmljarak"];
                    $jmlWaktu = $list["jmlwaktutempuh"];
                    $kabupatenAwal = $list["kabawal"];
                    $kabTujuan = $list["KabupatenAkhir"];
                    $rute = $list["rute"];
                }
            }
            $listsementara = [
                "obyekasal" => $id,
                "obyekawal" => $obyekAwal,
                "obyektujuan" => $obyekTujuan,
                "obyekjarak" => $obyekJarak,
                "obyekwaktu" => $obyekWaktu,
                "jmljarak" => $jmlJarak,
                "jmlwaktu" => $jmlWaktu,
                "kabawal" => $kabupatenAwal,
                "kabtujuan" => $kabTujuan,
                "rute" => $rute
            ];


            return $listsementara;
        }
    }

    public function displayhasil($asal, $tujuan, $sort)
    {

        if ($sort == "Jarak") {
            $listrute = $this->greedydisplayjarak($tujuan);

            $daftarhasil = [];

            while (count($listrute) > 0) {

                array_push($daftarhasil, $listrute);
                $listrutes = $this->greedydisplayjarak($listrute["obyekasal"]);
                $listrute = $listrutes;
            }



            return array_reverse($daftarhasil);
        } else if ($sort == "Waktu") {
            $listrute = $this->greedydisplaywaktu($tujuan);

            $daftarhasil = [];

            while (count($listrute) > 0) {

                array_push($daftarhasil, $listrute);
                $listrutes = $this->greedydisplaywaktu($listrute["obyekasal"]);
                $listrute = $listrutes;
            }
            return array_reverse($daftarhasil);
        }
    }


    /*ITENARY PLANNER KABUPATEN */
    public function getobyekwisataByWaktuKunjung($keckode, $highwaktu)
    {
        $this->db->query("SELECT * FROM obyekwisata where kecamatanKODE=:keckode and obyekWAKTUKUNJUNG=:waktu");
        $this->db->bind("keckode", $keckode);
        $this->db->bind("waktu", $highwaktu);
        return $this->db->resultSet();
    }

    public function getwisataBykecamatan($keckode)
    {
        // $this->db->query("select * from obyekwisata ow,
        // (select max(obyekWAKTUKUNJUNG) as maks from hasilkueri) wk WHERE ow.obyekwaktukunjung=wk.maks and kecamatanKODE=:keckode");
        $this->db->query("select * from obyekwisata where kecamatanKODE=:keckode");
        $this->db->bind("keckode", $keckode);
        return $this->db->resultSet();
    }


    public function getdataobyekfilter()
    {
        $this->db->query("select DISTINCT `obyekKODEasal` from hasilobyek");
        return $this->db->resultSet();
    }

    public function getdataobyekfiltertujuan()
    {
        $this->db->query("select DISTINCT `obyekKODEtujuan` from hasilobyek");
        return $this->db->resultSet();
    }

    public function getdataobyek($kode)
    {
        $this->db->query("select * from obyekwisata where obyekKODE=:kode");
        $this->db->bind(":kode", $kode);
        return $this->db->resultSingle();
    }

    public function getdataexisthasilkueri($kode)
    {
        $this->db->query("select * from hasilobyek where obyekKODEasal=:kode");
        $this->db->bind("kode", $kode);
        return $this->db->resultSingle();
    }
    public function insertobyek($l, $jmlhjarak, $jmlhtempuh)
    {
        $listawal = $this->listjarakawal($l);
        $i = 1;
        $listbaru = [];
        $a = -1;

        foreach ($listawal as $list) {

            $listtujuan = $list["obyekKODEtujuan"];
            $listasal = $list["obyekKODEasal"];

            $nextdata = $this->listjarakawal($listtujuan);

            $kecawal = $this->getdatakecamatan($listasal);
            $kectuj = $this->getdatakecamatan($listtujuan);


            $kabawal = $this->getkabupaten($kecawal["kecamatanKODE"]);
            $kabtujuan = $this->getkabupaten($kectuj["kecamatanKODE"]);

            $jmlhjarak =  $list["obyekjarak"];
            $jmlhtempuh = $list["obyektempuh"];
            $this->db->query("insert into hasilobyek values(:kodeasal,:kodetujuan,:obyekjarak,:obyekwaktu,:jmljarak,:jlmwaktu,:kabawal,:kabtujuan,:custid,:rute)");
            $this->db->bind("kodeasal", $listasal);
            $this->db->bind("kodetujuan", $listtujuan);
            $this->db->bind("obyekjarak", $list["obyekjarak"]);
            $this->db->bind("obyekwaktu", $list["obyektempuh"]);
            $this->db->bind("jmljarak", $jmlhjarak);
            $this->db->bind("jlmwaktu", $jmlhtempuh);
            $this->db->bind("kabawal", $kabawal["kabupatenKODE"]);
            $this->db->bind("kabtujuan", $kabtujuan["kabupatenKODE"]);
            $this->db->bind("custid", 'CUST930');
            $this->db->bind("rute", $i);
            $this->db->execute();
            $i++;

            // $i++;
            $a++;
            $listbaru[$a]["asal"] = $listtujuan;
            $listbaru[$a]["jarak"] = $jmlhjarak;
            $listbaru[$a]["tempuh"] = $jmlhtempuh;
        }
        return $listbaru;
    }

    public function insertobyeklanjutan($l, $jmlhjarak, $jmlhtempuh)
    {
        $listawal = $this->listjarakawal($l);
        $i = 1;
        $listbaru = [];
        $a = 1;


        if (count($listawal) > 0) {
            foreach ($listawal as $list) {

                $listtujuan = $list["obyekKODEtujuan"];
                $listasal = $list["obyekKODEasal"];

                $nextdata = $this->listjarakawal($listtujuan);

                $kecawal = $this->getdatakecamatan($listasal);
                $kectuj = $this->getdatakecamatan($listtujuan);


                $kabawal = $this->getkabupaten($kecawal["kecamatanKODE"]);
                $kabtujuan = $this->getkabupaten($kectuj["kecamatanKODE"]);

                $jmlhjarak1 = $jmlhjarak + $list["obyekjarak"];
                $jmlhtempuh1 = $jmlhtempuh + $list["obyektempuh"];
                $this->db->query("insert into hasilobyek values(:kodeasal,:kodetujuan,:obyekjarak,:obyekwaktu,:jmljarak,:jlmwaktu,:kabawal,:kabtujuan,:custid,:rute)");
                $this->db->bind("kodeasal", $listasal);
                $this->db->bind("kodetujuan", $listtujuan);
                $this->db->bind("obyekjarak", $list["obyekjarak"]);
                $this->db->bind("obyekwaktu", $list["obyektempuh"]);
                $this->db->bind("jmljarak", $jmlhjarak1);
                $this->db->bind("jlmwaktu", $jmlhtempuh1);
                $this->db->bind("kabawal", $kabawal["kabupatenKODE"]);
                $this->db->bind("kabtujuan", $kabtujuan["kabupatenKODE"]);
                $this->db->bind("custid", 'CUST930');
                $this->db->bind("rute", $i);
                $this->db->execute();
                $i++;

                // $i++;
                $a++;
                $listbaru[$a]["asal"] = $listtujuan;
                $listbaru[$a]["jarak"] = $jmlhjarak1;
                $listbaru[$a]["tempuh"] = $jmlhtempuh1;
            }
        }

        return $listbaru;
    }

    public function itenary_kab($data)
    {
        $kabupaten = $data["kabupaten"];

        $listkecamatan = $this->getkecamatanByKabupaten($kabupaten);
        $obyekwisata = [];

        foreach ($listkecamatan as $kec) { //proses untuk mendapatkan list objekwisata berdasarkan kabupaten
            $list = $this->getwisataBykecamatan($kec["kecamatanKODE"]);

            array_push($obyekwisata, $list);
        }

        $obyekwisatafilter = array_filter($obyekwisata);
        foreach ($obyekwisatafilter as $objeks) {
            foreach ($objeks as $obj) {
                $lok = $this->insertobyek($obj["obyekKODE"], 0, 0);


                $lak = [];

                foreach ($lok as $list) {
                    array_push($lak, $this->insertobyeklanjutan($list["asal"], $list["jarak"], $list["tempuh"]));
                }
                $new = [];

                while (!empty($lak)) {

                    foreach ($lak as $list) {

                        foreach ($list as $daftar) {
                            array_push($new, $this->insertobyeklanjutan($daftar["asal"], $daftar["jarak"], $daftar["tempuh"]));
                        }
                    }


                    if (count($new) > 0) {

                        $lak = $new;

                        unset($new);

                        $new = array();
                    } else {
                        unset($lak);
                    }
                }
            }
        }

        $objekwisatafilter1 = $this->getdataobyekfilter();

        foreach ($objekwisatafilter1 as $obj) {

            $objekwisatainsert = $this->getdataobyek($obj["obyekKODEasal"]);
            $kabupatenkode = $this->getkabupaten($objekwisatainsert["kecamatanKODE"]);
            $this->db->query("INSERT INTO hasilkueri VALUES(:obyekkode,:kecamatankode,:kabupatenkode,:kategorikode,:obyekpopularitas,:obyekkemudahan,:obyekwaktukunjung,:jambuka,:jamtutup,:cust)");
            $this->db->bind("obyekkode", $objekwisatainsert["obyekKODE"]);
            $this->db->bind("kecamatankode", $objekwisatainsert["kecamatanKODE"]);
            $this->db->bind("kabupatenkode", $kabupatenkode["kabupatenKODE"]);
            $this->db->bind("kategorikode", $objekwisatainsert["kategoriKODE"]);
            $this->db->bind("obyekpopularitas", $objekwisatainsert["obyekPOPULARITAS"]);
            $this->db->bind("obyekkemudahan", $objekwisatainsert["obyekKEMUDAHAN"]);
            $this->db->bind("obyekwaktukunjung", $objekwisatainsert["obyekWAKTUKUNJUNG"]);
            $this->db->bind("jambuka", $objekwisatainsert["obyekJAMBUKA"]);
            $this->db->bind("jamtutup", $objekwisatainsert["obyekJAMTUTUP"]);
            $this->db->bind("cust", "cust01");
            $this->db->execute();
        }

        $objekwisatafilter2 = $this->getdataobyekfiltertujuan();
        foreach ($objekwisatafilter2 as $obj) {
            $data = $this->getdataexisthasilkueri($obj["obyekKODEtujuan"]);

            if ($data == false) {
                $objekwisatainsert2 = $this->getdataobyek($obj["obyekKODEtujuan"]);
                $kabupatenkode = $this->getkabupaten($objekwisatainsert2["kecamatanKODE"]);
                $this->db->query("INSERT INTO hasilkueri VALUES(:obyekkode,:kecamatankode,:kabupatenkode,:kategorikode,:obyekpopularitas,:obyekkemudahan,:obyekwaktukunjung,:jambuka,:jamtutup,:cust)");
                $this->db->bind("obyekkode", $objekwisatainsert2["obyekKODE"]);
                $this->db->bind("kecamatankode", $objekwisatainsert2["kecamatanKODE"]);
                $this->db->bind("kabupatenkode", $kabupatenkode["kabupatenKODE"]);
                $this->db->bind("kategorikode", $objekwisatainsert2["kategoriKODE"]);
                $this->db->bind("obyekpopularitas", $objekwisatainsert2["obyekPOPULARITAS"]);
                $this->db->bind("obyekkemudahan", $objekwisatainsert2["obyekKEMUDAHAN"]);
                $this->db->bind("obyekwaktukunjung", $objekwisatainsert2["obyekWAKTUKUNJUNG"]);
                $this->db->bind("jambuka", $objekwisatainsert2["obyekJAMBUKA"]);
                $this->db->bind("jamtutup", $objekwisatainsert2["obyekJAMTUTUP"]);
                $this->db->bind("cust", "cust01");
                $this->db->execute();
            }
        }
        return true;
    }
    public function itenary($data)
    {
        $kabupaten = $data["kabupaten"];

        $listkecamatan = $this->getkecamatanByKabupaten($kabupaten);
        $obyekwisata = [];

        foreach ($listkecamatan as $kec) { //proses untuk mendapatkan list objekwisata berdasarkan kabupaten
            $list = $this->getwisataBykecamatan($kec["kecamatanKODE"]);

            array_push($obyekwisata, $list);
        }

        var_dump($obyekwisata);
        die;

        $HighKunjung = 0;
        foreach ($obyekwisata as $obj) { //proses untuk pengecekan waktukunjung paling lama
            foreach ($obj as $ob) {

                if ($ob["obyekWAKTUKUNJUNG"] >= $HighKunjung) {
                    $HighKunjung = $ob["obyekWAKTUKUNJUNG"];
                }
            }
        }

        $listasal = array();

        foreach ($listkecamatan as $kec) { //proses untuk mendapatkan data onjekwisata yang waktukunjungpaling lama
            $kec = $this->getobyekwisataByWaktuKunjung($kec["kecamatanKODE"], $HighKunjung);

            array_push($listasal, $kec);
        }

        $obyekfilter = array_filter($listasal);

        $i = 0;
        $finalObyek = [];

        foreach ($obyekfilter as $dt) { //process peng extrasi daftar objekwisata agar bisa di random nantinya

            foreach ($dt as $list) {

                $finalObyek[$i] = $list["obyekKODE"];
                $i++;
            }
        }

        shuffle($finalObyek);

        var_dump($finalObyek);
        die;
        // var_dump($finalObyek);

        $lok = $this->insertobyek($finalObyek[0], 0, 0);


        $lak = [];

        foreach ($lok as $list) {
            array_push($lak, $this->insertobyeklanjutan($list["asal"], $list["jarak"], $list["tempuh"]));
        }
        $new = [];

        while (!empty($lak)) {

            foreach ($lak as $list) {

                foreach ($list as $daftar) {
                    array_push($new, $this->insertobyeklanjutan($daftar["asal"], $daftar["jarak"], $daftar["tempuh"]));
                }
            }


            if (count($new) > 0) {

                $lak = $new;

                unset($new);

                $new = array();
            } else {
                unset($lak);
            }
        }

        $objekwisatafilter1 = $this->getdataobyekfilter();

        foreach ($objekwisatafilter1 as $obj) {

            $objekwisatainsert = $this->getdataobyek($obj["obyekKODEasal"]);
            $kabupatenkode = $this->getkabupaten($objekwisatainsert["kecamatanKODE"]);
            $this->db->query("INSERT INTO hasilkueri VALUES(:obyekkode,:kecamatankode,:kabupatenkode,:kategorikode,:obyekpopularitas,:obyekkemudahan,:obyekwaktukunjung,:jambuka,:jamtutup,:cust)");
            $this->db->bind("obyekkode", $objekwisatainsert["obyekKODE"]);
            $this->db->bind("kecamatankode", $objekwisatainsert["kecamatanKODE"]);
            $this->db->bind("kabupatenkode", $kabupatenkode["kabupatenKODE"]);
            $this->db->bind("kategorikode", $objekwisatainsert["kategoriKODE"]);
            $this->db->bind("obyekpopularitas", $objekwisatainsert["obyekPOPULARITAS"]);
            $this->db->bind("obyekkemudahan", $objekwisatainsert["obyekKEMUDAHAN"]);
            $this->db->bind("obyekwaktukunjung", $objekwisatainsert["obyekWAKTUKUNJUNG"]);
            $this->db->bind("jambuka", $objekwisatainsert["obyekJAMBUKA"]);
            $this->db->bind("jamtutup", $objekwisatainsert["obyekJAMTUTUP"]);
            $this->db->bind("cust", "cust01");
            $this->db->execute();
        }

        $objekwisatafilter2 = $this->getdataobyekfiltertujuan();
        foreach ($objekwisatafilter2 as $obj) {
            $data = $this->getdataexisthasilkueri($obj["obyekKODEtujuan"]);

            if ($data == false) {
                $objekwisatainsert2 = $this->getdataobyek($obj["obyekKODEtujuan"]);
                $kabupatenkode = $this->getkabupaten($objekwisatainsert2["kecamatanKODE"]);
                $this->db->query("INSERT INTO hasilkueri VALUES(:obyekkode,:kecamatankode,:kabupatenkode,:kategorikode,:obyekpopularitas,:obyekkemudahan,:obyekwaktukunjung,:jambuka,:jamtutup,:cust)");
                $this->db->bind("obyekkode", $objekwisatainsert2["obyekKODE"]);
                $this->db->bind("kecamatankode", $objekwisatainsert2["kecamatanKODE"]);
                $this->db->bind("kabupatenkode", $kabupatenkode["kabupatenKODE"]);
                $this->db->bind("kategorikode", $objekwisatainsert2["kategoriKODE"]);
                $this->db->bind("obyekpopularitas", $objekwisatainsert2["obyekPOPULARITAS"]);
                $this->db->bind("obyekkemudahan", $objekwisatainsert2["obyekKEMUDAHAN"]);
                $this->db->bind("obyekwaktukunjung", $objekwisatainsert2["obyekWAKTUKUNJUNG"]);
                $this->db->bind("jambuka", $objekwisatainsert2["obyekJAMBUKA"]);
                $this->db->bind("jamtutup", $objekwisatainsert2["obyekJAMTUTUP"]);
                $this->db->bind("cust", "cust01");
                $this->db->execute();
            }
        }

        return true;
    }

    public function gethasilkueri($kabkode)
    {
        $this->db->query("select MAX(obyekWAKTUKUNJUNG) as high from hasilkueri where kabupatenKODE=:kabkode");
        $this->db->bind("kabkode", $kabkode);
        return $this->db->resultSingle();
    }

    public function getdatahasilkueri($kabkode, $TimeHigh)
    {
        $this->db->query("select * from hasilkueri where kabupatenKODE=:kabkode and obyekWAKTUKUNJUNG=:high");
        $this->db->bind("kabkode", $kabkode);
        $this->db->bind("high", $TimeHigh);
        return $this->db->resultSet();
    }

    public function getdatahasilkueriall($kabkode, $kalimat)
    {
        $this->db->query("select * from hasilkueri where $kalimat and kabupatenKODE=:kabkode");
        $this->db->bind("kabkode", $kabkode);

        return $this->db->resultSet();
    }


    public function getDatesFromRange($start, $end, $format = 'Y-m-d')
    {

        // Declare an empty array 
        $array = array();

        // Variable that store the date interval 
        // of period 1 day 
        $interval = new DateInterval('P1D');

        $realEnd = new DateTime($end);
        $realEnd->add($interval);

        $period = new DatePeriod(new DateTime($start), $interval, $realEnd);

        // Use loop to store date into array 
        foreach ($period as $date) {
            $array[] = $date->format($format);
        }

        // Return the array elements 
        return $array;
    }

    public function gethasilkueribyid($id)
    {
        $this->db->query("SELECT * from hasilkueri hk,obyekwisata ow,kabupaten kb where hk.obyekkode=ow.obyekkode 
        and hk.kabupatenkode=kb.kabupatenkode and hk.obyekkode=:id");
        $this->db->bind("id", $id);
        return $this->db->resultSingle();
    }

    public function itenarydisplay($kabkode, $start, $end)
    {
        $TimeHigh = $this->gethasilkueri($kabkode);
        $obyekfilter = $this->getdatahasilkueri($kabkode, $TimeHigh["high"]);

        $i = 0;
        $finalObyek = [];

        foreach ($obyekfilter as $list) { //process peng extrasi daftar objekwisata agar bisa di random nantinya
            $finalObyek[$i] = $list["obyekKODE"];
            $i++;
        }

        shuffle($finalObyek);
        $finalObyek[0];
        $listrute = $this->greedydisplayjarak($finalObyek[0]);




        $daftarhasil = [];

        while (count($listrute) > 0) {

            array_push($daftarhasil, $listrute);
            $listrutes = $this->greedydisplayjarak($listrute["obyekasal"]);

            $listrute = $listrutes;
        }




        $len = count($daftarhasil);
        $i = 0;
        $test = null;
        foreach ($daftarhasil as $daft) {
            $test .= " obyekkode != '" . $daft["obyekasal"] . "' and";
            if ($i == $len - 1) {
                $test .= " obyekkode != '" . $daft["obyekasal"] . "'";
            }

            $i++;
        } // untuk mencari data wisata yang belum masuk ke dalam list kabupaten

        $alldata = $this->getdatahasilkueriall($kabkode, $test);



        // echo "===";
        // echo "<br>";
        // $daftarhasilbaru = [];

        // foreach ($alldata as $data) {


        //     $listrute = $this->greedydisplayjarak($data["obyekKODE"]);

        //     while (count($listrute) > 0) {

        //         array_push($daftarhasilbaru, $listrute);
        //         $listrutes = $this->greedydisplayjarak($listrute["obyekasal"]);
        //         $listrute = $listrutes;
        //     }
        // }





        $i = 0;
        $len = count($daftarhasil);

        $period = $this->getDatesFromRange($start, $end);

        $dateawal = new DateTime();
        $dateakhir = new DateTime();
        $jamawal = $dateawal->setTime(9, 0);
        $jam = $dateawal->setTime(9, 0);
        $jamakhir = $dateakhir->setTime(17, 0);
        // $jamawal = time(10:00:00);
        // echo $date->format('H:i:s');

        $angka = 0;
        // echo $jam->format('H:i:s');


        // echo $jamawal->format('H:i:s');
        // var_dump($timestampawal);
        // echo "<br>";
        // echo $jamakhir->format('H:i:s');
        // var_dump($timestampakhir);
        // foreach (array_reverse($daftarhasil) as $daft) {

        //     echo $daft["obyekasal"];
        //     echo "<br>";
        //     if ($i == $len - 1) {
        //         echo $daft["obyekKODETUJUAN"];
        //         echo "<br>";
        //     }

        //     $i++;
        // }
        $j = 1;
        $semuadata = [];
        foreach (array_reverse($daftarhasil) as $daft) {
            array_push($semuadata, $daft["obyekasal"]);
        }
        foreach ($alldata as $dt) {
            array_push($semuadata, $dt["obyekKODE"]);
        }
        echo '    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Pesona Jawa</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item ">
                    <a class="nav-link" href="http://localhost/itenary/public/index">Itenary Greedy</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="http://localhost/itenary/itenary/planner">Itenary Kabupaten</a>
                </li>

            </ul>
        </div>
    </nav>';

        foreach ($period as $per) {
            echo "<h2>$per</h2>";

            foreach ($semuadata as $sem) {
                $datadetail = $this->gethasilkueribyid($sem);

                $jamawal->setTime(9, $angka);



                $timestampawal = strtotime($jamawal->format('H:i:s'));
                $timestampakhir = strtotime($jamakhir->format('H:i:s'));
                $jam = $jam->setTime(9, $angka);

                if ($timestampawal < $timestampakhir) {
                    echo '<div class="card" style="width: 50rem;">
               
                    <div class="card-body">
                        <h5 class="card-title">' . $datadetail["obyekNAMA"] . '</h5>
                        <p class="card-text">Berkunjung :' . $jamawal->format('H:i:s') . '</p>
                        <p class="card-text">Jam Operasional : ' . $datadetail["jamBUKA"] . ' - ' . $datadetail['jamTUTUP'] . '</p>
                     
                        <p class="card-text">Waktu Kunjungan : ' . $datadetail["obyekWAKTUKUNJUNG"] . '</p>
                       
                    </div>
                    </div>';


                    $angka += $datadetail["obyekWAKTUKUNJUNG"] + 30;

                    if (($key = array_search($sem, $semuadata)) !== false) {
                        unset($semuadata[$key]);
                        continue;
                    }
                } else {

                    $angka = 0;

                    break;
                }
            }


            // echo $per->format('Y-m-d');
            // echo "<br>";
        }
    }

    public function deletekabupaten(){
        $this->db->query("delete from hasilkueri");
        $this->db->execute();

        $this->db->query("delete from hasilobyek");
        $this->db->execute();
        return true;
    }
}
