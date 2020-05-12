<?php
class itenary extends Controller
{

    public function Index()
    {
        $data["obyekwisata"] = $this->model("itenary_model")->listobyekwisata();
        $this->view("itenary", $data);
    }

    public function hasil()
    {
        $lokawal = $_POST["lokawal"];
        $loktuj = $_POST["loktuj"];
        $sort = $_POST["sort"];
        if ($this->model('itenary_model')->greedy($_POST) == true) {
            echo "<script>
            alert('Berhasil Di proses');
            document.location.href='" . BASEURL . "/itenary/result/" . $lokawal . "/" . $loktuj . "/" . $sort . "';  
            </script> "; //javascript aler notificatio
        }
    }

    public function result($lokawal, $loktuj, $sort)
    {

        $data["hasil"] = $this->model("itenary_model")->displayhasil($lokawal, $loktuj, $sort);
        $this->view("result", $data);
    }

    public function delete()
    {
        if ($this->model('itenary_model')->deletehasilobyek() >= 1) {
            echo "<script>
            alert('data berhasil dihapus');
            document.location.href='" . BASEURL . "/index';  
            </script> "; //javascript aler notificatio
        } else {
            echo "<script>
            alert('data gagal dihapus');
            document.location.href='" . BASEURL . "/index'; 
            </script> "; //javascript aler notificatio
        }
    }

    public function planner()
    {
        $data["kabupaten"] = $this->model("itenary_model")->kabupaten();
        $this->view("itenaryPlanner", $data);
    }

    public function planerProses()
    {

        $kabkode = $_POST["kabupaten"];
        $start = $_POST["startdate"];
        $end = $_POST["enddate"];
        $popular = $_POST["popular"];
        $nearfast = $_POST["nearfast"];

        if ($this->model('itenary_model')->itenary_kab($_POST) == true) {
            echo "<script>
            alert('Berhasil Di proses');
            document.location.href='" . BASEURL . "/itenary/itenaryresult/" . $kabkode . "/" . $start . "/" . $end . "';  
            </script> "; //javascript aler notificatio
        }
    }

    public function itenaryresult($kabkode, $start, $end)
    {
        $data["hasil"] = $this->model("itenary_model")->itenarydisplay($kabkode, $start, $end);
        $this->view("ItenaryPlannerResult");
    }
}
