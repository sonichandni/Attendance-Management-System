<?php
session_start();
include 'Model.php';
$md = new model();

date_default_timezone_set('asia/kolkata');

$a_y = $md->display($con, "academic_year");
$fd = date("Y");
$a_yf = $md->sel_pattern($con, "academic_year", "ac_year", $fd . "%");
$crs = $md->display($con, "course");

//Login
if (isset($_REQUEST["login"])) {
    $where = array(
        "email" => $_REQUEST["unm"],
        "password" => $_REQUEST["pwd"],
    );

    $d = $md->login($con, "faculty", $where);
    $fac_data = $d->fetch_object();
    //Fatch faculty data
    $where = array(
        "fac_id" => $fac_data->fac_id
    );
    $_SESSION["ufac_id"] = $fac_data->ufac_id;
    $_SESSION["fac_name"] = $fac_data->fac_name;
    $_SESSION["role"] = $fac_data->role;

    //Fatch course data
    $where = array(
        "c_id" => $fac_data->c_id
    );
    $main_data = array(
        "fac_data" => $fac_data,
    );

    $_SESSION["d"] = $main_data;

    header("location:dashboard.php");
}
//Logout
if (isset($_REQUEST["logout"])) {
    session_destroy();
    header("location:index.php");
}
//Year dropdown
if (isset($_REQUEST["crs"])) {
    //Fatch semester data
    $_SESSION["sess_crs"] = $_REQUEST["crs"];
    if ($_SESSION["role"] == '1') {
        $year_data = $md->sel($con, "sem_year", "year");
    } else {
        $where = array(
            "ufac_id" => $_SESSION["ufac_id"],
            "c_id" => $_REQUEST["crs"]
        );
        $where1 = array(
            "ufac_id" => $_SESSION["ufac_id"]
        );
        $semc_data = $md->sel_where($con, "subject", $where);
        $seme_data = $md->sel_where($con, "subject1", $where1);
        //Fatch year data
        $where = array($semc_data[0]->sem_no);
        $where1 = array($seme_data[0]->sem_no);
        for ($i = 1; $i < count($semc_data); $i++) {
            array_push($where, $semc_data[$i]->sem_no);
        }
        for ($i = count($semc_data); $i < count($seme_data); $i++) {
            array_push($where1, $seme_data[$i]->sem_no);
        }
        $sem_data = array_merge($where, $where1);
        $year_data = $md->sel_where_or_dist($con, "year", "sem_year", $sem_data, "sem_no");
    }
}
//Fetch faculty data
if (isset($_REQUEST["sub"])) {
    $ex = rtrim($_REQUEST["sub"], " ue");
    if ($ex == $_REQUEST["sub"]) {
        $where = array(
            "usub_id" => $_REQUEST["sub"]
        );

        $fac = $md->dis_join_con($con, "subject", "faculty", "subject.ufac_id=faculty.ufac_id", $where, "faculty.fac_name");
    } else {
        $where = array(
            "uesub_id" => $_REQUEST["sub"]
        );

        $fac = $md->dis_join_con($con, "subject1", "faculty", "subject1.ufac_id=faculty.ufac_id", $where, "faculty.fac_name");
    }
}
//batch dropdown
if(isset($_REQUEST["nbatch"]))
{
    $bt_res=$md->sel_all($con, "batches");
}
//Student Department
//Student Registration
if (isset($_REQUEST["R_submit"])) {
    $fn = $_REQUEST["firstname"];
    $ln = $_REQUEST["lastname"];
    $s_rn = $_REQUEST["s_rn"];
    $sem = $_REQUEST["semr"];
    $gen = $_REQUEST["s_gen"];
    $email = $_REQUEST["email"];
    $cn = $_REQUEST["cn"];
    $c_id = $_REQUEST["c_idr"];
    $div = $_REQUEST["division"];

    $data = array("s_rn" => $s_rn, "fnm" => $fn, "lnm" => $ln, "s_gen" => $gen, "email" => $email, "contact" => $cn,
        "c_id" => $c_id, "sem" => $sem, "division" => $div);
    //print_r($data);exit;
    $md->insert($con, $data, "student");
}
//View Student req
if (isset($_REQUEST["view_stu"])) {
    $year = $_REQUEST["c_id"];
    $sem = $_REQUEST["semester"];
    $div = strtolower($_REQUEST["division"]);
    $where = array(
        "c_id" => $year,
        "sem" => $sem,
        "division" => $div
    );
    $div_res = $md->sel_where($con, "student", $where);
    $_SESSION["sl"] = $div_res;
    header("location:stu_list.php");
}
//View more
if (isset($_REQUEST["s_enrlvm"])) {
    $s_enrl = $_REQUEST["s_enrlvm"];
    $where = array(
        "s_enrl" => $s_enrl
    );
    $data = $md->sel_where($con, "student", $where);
    $data1 = serialize($data);
    header("location:view_more.php?d1=$data1");
}
//Student update req
if (isset($_REQUEST["s_enrlup"])) {
    $s_enrl = $_GET["s_enrlup"];
    $where = array(
        "s_enrl" => $s_enrl
    );
    $data = $md->sel_where($con, "student", $where);
    $d1 = serialize($data);
    header("location:stu_update.php?d1=$d1");
}
//Student update
if (isset($_REQUEST["stu_update"])) {
    $en = $_REQUEST["s_enrl"];
    $fn = $_REQUEST["firstname"];
    //$ln=$_REQUEST["lastname"];
    $s_rn = $_REQUEST["s_rn"];
    $email = $_REQUEST["email"];
    $cn = $_REQUEST["cn"];
    $sem = $_REQUEST["sem"];
    $div = $_REQUEST["division"];

    $data = array("s_rn" => $s_rn, "fnm" => $fn, "email" => $email, "contact" => $cn, "sem" => $sem, "division" => $div);
    //print_r($data);exit;
    $where = array(
        "s_enrl" => $en
    );
    $md->updt($con, $data, "student", $where);
    $where = array(
        "c_id" => $_REQUEST["c_id"],
        "sem" => $_REQUEST["osem"],
        "division" => $_REQUEST["div"]
    );
    $div_res = $md->sel_where($con, "student", $where);
    $_SESSION["sl"] = $div_res;
    header("location:stu_list.php");
}
//Student Delete
if (isset($_REQUEST["s_enrldel"])) {
    $s_enrl = $_REQUEST["s_enrldel"];
    $where = array(
        "s_enrl" => $s_enrl
    );
    $stdata = $md->sel_where($con, "student", $where);
    $md->delete1($con, "student", $where);
    foreach ($stdata as $sd) {
        $where = array(
            "c_id" => $sd->c_id,
            "sem" => $sd->sem,
            "division" => $sd->division
        );
    }
    $div_res = $md->sel_where($con, "student", $where);
    $_SESSION["sl"] = $div_res;
    header("location:stu_list.php");
}
//Subject Department
//Add Subject
//1. If MBA and Special subject then fetch specialization
if (isset($_REQUEST["add_spec_sub"])) {
    $l = explode(" ", $_REQUEST["add_spec_sub"]);
    $where = array(
        "c_id" => 1,
        "special" => 1,
        "sem_no" => $l[2]
    );
    $spec = $md->sel_where($con, "subject", $where);
}
//2. Add Subject in databse
if (isset($_REQUEST["sub_submit"])) {
    $cr = $_REQUEST["cr"];
    $sp = $_REQUEST["sp"];
    if ($cr == 1 && $sp == 1) {
        $as = $_REQUEST["as1"];
        $data = array("usub_id" => $as, "sub_id" => $_REQUEST["sid"], "sub_name" => $_REQUEST["subnm"],
            "sem_no" => $_REQUEST["sem"], "ufac_id" => 0);
        //print_r($data);exit;
        $md->insert($con, $data, "subject1");
        $sub_data = $md->dis_join_con1($con, "subject", "faculty", "subject.ufac_id=faculty.ufac_id", $where);
        $_SESSION["subdata"] = $sub_data;
        header("location:view_sub.php");
    } else {
        $data = array("sub_id" => $_REQUEST["sid"], "sub_name" => $_REQUEST["subnm"], "c_id" => $_REQUEST["cr"],
            "special" => $_REQUEST["sp"], "sub_type" => $_REQUEST["type"], "sem_no" => $_REQUEST["sem"], "ufac_id" => 0);
        $md->insert($con, $data, "subject");
        $sub_data = $md->dis_join_con1($con, "subject", "faculty", "subject.ufac_id=faculty.ufac_id", $where);
        $_SESSION["subdata"] = $sub_data;
        header("location:view_sub.php");
    }
}
//Distribute Subject req
if (isset($_REQUEST["prt_sub"])) {
    $ex = rtrim($_REQUEST["prt_sub"], " ue");
    if ($ex == $_REQUEST["prt_sub"]) {
        $where = array("usub_id" => $_REQUEST["prt_sub"]);
        //$prt_sub=$md->sel_pattern_not($con,"subject", $where,"sub_id","_%");
        $prt_sub = $md->sel_where($con, "subject", $where);
        $_SESSION["ptid"] = $_REQUEST["prt_sub"];
        if ($_SESSION["partd"] == 2) {
            foreach ($prt_sub as $ps) {
                $_SESSION["ptsem"] = $ps->sem_no;
                $_SESSION["ptsid1"] = $ps->sub_id . " x%";
                $_SESSION["ptsid2"] = $ps->sub_id . " y%";
                $_SESSION["ptsp"] = $ps->special;
                $_SESSION["ptst"] = $ps->sub_type;
                $_SESSION["ptc_id"] = $ps->c_id;
                $_SESSION["ptsnm"] = $ps->sub_name;
            }
        } else {
            foreach ($prt_sub as $ps) {
                $_SESSION["ptsem"] = $ps->sem_no;
                $_SESSION["ptsid1"] = $ps->sub_id . " x%";
                $_SESSION["ptsid2"] = $ps->sub_id . " y%";
                $_SESSION["ptsid3"] = $ps->sub_id . " z%";
                $_SESSION["ptsp"] = $ps->special;
                $_SESSION["ptst"] = $ps->sub_type;
                $_SESSION["ptc_id"] = $ps->c_id;
                $_SESSION["ptsnm"] = $ps->sub_name;
            }
        }
    } else {
        $where = array("uesub_id" => $_REQUEST["prt_sub"]);
        $prt_sub = $md->sel_where($con, "subject1", $where);
        $_SESSION["ptid"] = $_REQUEST["prt_sub"];
        if ($_SESSION["partd"] == 2) {
            foreach ($prt_sub as $ps) {
                $_SESSION["ptusub"] = $ps->usub_id;
                $_SESSION["ptsem"] = $ps->sem_no;
                $_SESSION["ptsid1"] = $ps->sub_id . " x%";
                $_SESSION["ptsid2"] = $ps->sub_id . " y%";
                $_SESSION["ptsnm"] = $ps->sub_name;
            }
        } else {
            foreach ($prt_sub as $ps) {
                $_SESSION["ptusub"] = $ps->usub_id;
                $_SESSION["ptsem"] = $ps->sem_no;
                $_SESSION["ptsid1"] = $ps->sub_id . " x%";
                $_SESSION["ptsid2"] = $ps->sub_id . " y%";
                $_SESSION["ptsid3"] = $ps->sub_id . " z%";
                $_SESSION["ptsnm"] = $ps->sub_name;
            }
        }
    }
}
//Distribute Subject
if (isset($_REQUEST["prt_submit"])) {
    $ex = rtrim($_REQUEST["subject"], " ue");
    if ($ex != $_REQUEST["subject"]) {
        $data = array(
            "sub_name" => $_SESSION["ptsnm"] . " x%",
            "sub_id" => $_SESSION["ptsid1"],
            "ufac_id" => $_REQUEST["fac1"]
        );
        $where = array(
            "uesub_id" => $_SESSION["ptid"]
        );
        $md->updt($con, $data, "subject1", $where);
        $data = array(
            "usub_id" => $_SESSION["ptusub"],
            "sub_name" => $_SESSION["ptsnm"] . " y%",
            "sub_id" => $_SESSION["ptsid2"],
            "ufac_id" => $_REQUEST["fac2"],
            "sem_no" => $_SESSION["ptsem"]
        );
        $md->insert($con, $data, "subject1");

        if ($_SESSION["partd"] == 3) {
            $data = array(
                "usub_id" => $_SESSION["ptusub"],
                "sub_name" => $_SESSION["ptsnm"] . " z%",
                "sub_id" => $_SESSION["ptsid3"],
                "ufac_id" => $_REQUEST["fac3"],
                "sem_no" => $_SESSION["ptsem"]
            );
            $md->insert($con, $data, "subject1");
        }
        $where = array("1" => 1);
        $sub_data = $md->dis_join_con1($con, "subject1", "faculty", "subject1.ufac_id=faculty.ufac_id", $where);
        $_SESSION["subdata"] = $sub_data;
        header("location:view_sub.php");
    } else {
        $data = array(
            "sub_name" => $_SESSION["ptsnm"] . " x%",
            "sub_id" => $_SESSION["ptsid1"],
            "ufac_id" => $_REQUEST["fac1"]
        );
        $where = array(
            "usub_id" => $_SESSION["ptid"]
        );
        $md->updt($con, $data, "subject", $where);
        $data = array(
            "sub_name" => $_SESSION["ptsnm"] . " y%",
            "sub_id" => $_SESSION["ptsid2"],
            "ufac_id" => $_REQUEST["fac2"],
            "special" => $_SESSION["ptsp"],
            "sub_type" => $_SESSION["ptst"],
            "sem_no" => $_SESSION["ptsem"],
            "c_id" => $_SESSION["ptc_id"]
        );
        $md->insert($con, $data, "subject");
        if ($_SESSION["partd"] == 3) {
            $data = array(
                "sub_name" => $_SESSION["ptsnm"] . " z%",
                "sub_id" => $_SESSION["ptsid3"],
                "ufac_id" => $_REQUEST["fac3"],
                "special" => $_SESSION["ptsp"],
                "sub_type" => $_SESSION["ptst"],
                "sem_no" => $_SESSION["ptsem"],
                "c_id" => $_SESSION["ptc_id"]
            );
            $md->insert($con, $data, "subject");
        }
        $where = array("1" => 1);
        $sub_data = $md->dis_join_con1($con, "subject", "faculty", "subject.ufac_id=faculty.ufac_id", $where);
        $_SESSION["subdata"] = $sub_data;
        header("location:view_sub.php");
    }
}
//Combine Subject
if (isset($_REQUEST["crs_sub1"])) {
    $where = array(
        "c_id" => $_REQUEST["crs_sub1"]
    );
    $sub_sub1 = $md->sel_pattern_where($con, "subject", $where, "sub_id", "%x_");
    $sube_sub2 = $md->sel_pattern($con, "subject1", "sub_id", "%x_");
    $_SESSION["cmb_sub"] = $sub_sub1;
    $_SESSION["cmb_sube"] = $sube_sub2;
}
//Combine Submit
if (isset($_REQUEST["cmb_submit"])) {
    $ex = rtrim($_REQUEST["subject"], " ue");
    if ($ex == $_REQUEST["subject"]) {
        foreach ($_SESSION["cmb_sub"] as $cs) {
            $where = array("usub_id" => $cs->usub_id);
            $subid = $cs->usub_id;
            $cid = $cs->c_id;
            $sem = $cs->sem_no;
            $data = array(
                "sub_id" => rtrim($cs->sub_id, " x%"),
                "sub_name" => rtrim($cs->sub_name, " x%")
            );
            $_SESSION["c_data"] = $data;
        }
        $md->updt($con, $data, "subject", $where);

        if ($cid == 0) {
            $str = "msc";
        } else {
            $str = "mba";
        }

        $where = array("sub_name" => $_SESSION["c_data"]["sub_name"] . " y%");
        $table = "attendance_" . $str . "_sem" . $sem;
        $chgsub1 = $md->sel_where($con, "subject", $where);

        if (isset($chgsub1)) {
            foreach ($chgsub1 as $cs) {
                $sub = $cs->usub_id;
            }
            $where1 = array(
                "usub_id" => $sub
            );
            $data = array("usub_id" => $subid);
            $md->updt($con, $data, $table, $where1);
            //$where=array("sub_name"=>$data["sub_name"]." y%");
            $md->delete1($con, "subject", $where1);
        }

        $where = array("sub_name" => $_SESSION["c_data"]["sub_name"] . " z%");
        $table = "attendance_" . $str . "_sem" . $sem;
        $chgsub = $md->sel_where($con, "subject", $where);
        if (isset($chgsub)) {
            foreach ($chgsub as $cs) {
                $sub = $cs->usub_id;
            }
            $where1 = array(
                "usub_id" => $sub
            );
            $data = array("usub_id" => $subid);
            $md->updt($con, $data, $table, $where1);
            //$where=array("sub_name"=>$data["sub_name"]." z%");
            $md->delete1($con, "subject", $where1);
        }
        $where = array("1" => 1);
        $sub_data = $md->dis_join_con1($con, "subject", "faculty", "subject.ufac_id=faculty.ufac_id", $where);
        $_SESSION["subdata"] = $sub_data;
        header("location:view_sub.php");
    } else {
        foreach ($_SESSION["cmb_sube"] as $cs) {
            $where = array("uesub_id" => $cs->uesub_id);
            $sem = $cs->sem_no;
            $data = array(
                "sub_id" => rtrim($cs->sub_id, " x%"),
                "sub_name" => rtrim($cs->sub_name, " x%")
            );
            $subid = $cs->uesub_id;
            $_SESSION["c_data"] = $data;
        }
        $md->updt($con, $data, "subject1", $where);

        $where = array("sub_name" => $_SESSION["c_data"]["sub_name"] . " y%");
        $table = "attendance_mba_sem" . $sem . "_ele";
        $chgsub1 = $md->sel_where($con, "subject1", $where);
        if (isset($chgsub1)) {
            foreach ($chgsub1 as $cs) {
                $sub = $cs->uesub_id;
            }
            $where1 = array(
                "uesub_id" => $sub
            );
            $data = array("uesub_id" => $subid);
            $md->updt($con, $data, $table, $where1);
            //$where=array("sub_name"=>$data["sub_name"]." y%");
            $md->delete1($con, "subject1", $where1);
        }

        $where = array("sub_name" => $_SESSION["c_data"]["sub_name"] . " z%");
        $table = "attendance_mba_sem" . $sem . "_ele";
        $chgsub1 = $md->sel_where($con, "subject1", $where);
        if (isset($chgsub1)) {
            foreach ($chgsub1 as $cs) {
                $sub = $cs->uesub_id;
            }
            $where1 = array(
                "uesub_id" => $sub
            );
            $data = array("uesub_id" => $subid);
            $md->updt($con, $data, $table, $where1);
            //$where=array("sub_name"=>$data["sub_name"]." y%");
            $md->delete1($con, "subject1", $where1);
        }
        $where = array("1" => 1);
        $sub_data = $md->dis_join_con1($con, "subject1", "faculty", "subject1.ufac_id=faculty.ufac_id", $where);
        $_SESSION["subdata"] = $sub_data;
        header("location:view_sub.php");
    }
}
//Combine Subject Faculty
if (isset($_REQUEST["csid"])) {
    $ex = rtrim($_REQUEST["csid"], " ue");
    if ($ex == $_REQUEST["csid"]) {
        $where = array(
            "usub_id" => $_REQUEST["csid"]
        );
        $csfac = $md->dis_join_con($con, "subject", "faculty", "subject.ufac_id=faculty.ufac_id", $where, "faculty.fac_name");
    } else {
        $where = array(
            "uesub_id" => $_REQUEST["csid"]
        );
        $csfac = $md->dis_join_con($con, "subject1", "faculty", "subject1.ufac_id=faculty.ufac_id", $where, "faculty.fac_name");
    }
}
//Divide in Batches Request 1
if(isset($_REQUEST["db"]))
{
    $where=array(
        "c_id"=>0,
        "sem"=>5
        );
    $db_data=$md->sel_where($con,"student", $where);
    if(count($db_data)==0)
    {
        echo "<script>alert('No Students are available for semester 5')</script>";
        header("location:dashboard,php");
    }
    else
    {
        header("location:divide_batch.php");
    }
}
//Batch divide Request 2
if(isset($_REQUEST["div_batch"]))
{
     $strm1 = $_REQUEST["div_batch"];
    $strm = explode(" ", $strm1);
    $where=array(
        "c_id"=>0,
        "sem"=>5,
        "division"=>$_REQUEST["div_batch"]
            );
    $batch_stu_data=$md->sel_where($con,"student", $where);
    $batch=$md->sel_all($con,"batches");
}
//Divide Batch
if(isset($_REQUEST["batch"]))
{
    ini_set('max_input_vars', 3000);
    $total = $_REQUEST["total"];
    $batch=$md->sel_all($con,"batches");
    for ($c = 1; $c <= $total; $c++) {
        $si = 0;
        foreach ($batch as $s) {
            $si++;
            if(isset($_REQUEST["ch$si$c"])) {
                $where = array(
                    "s_enrl" => $_REQUEST["sp$c"]
                );
                $data = array(
                    "batch_id" => $s->batch_id
                );
                $asf=$md->updt($con, $data, "student", $where);
            }
        }
    }
}
//Assign Special Subject
if (isset($_REQUEST["crs_spec"])) {
    $strm1 = $_REQUEST["crs_spec"];
    $strm = explode(" ", $strm1);
    if ($strm[0] == 0) {
        $where = array(
            "c_id" => $strm[0],
            "special" => "1"
        );
        $spec_res = $md->sel_where($con, "subject", $where);
        $_SESSION["spec_res"] = $spec_res;
    } else {
        $where = array(
            "subject.sem_no" => "9"
        );
        $clm = "DISTINCT subject1.usub_id,SUBJECT.sub_name,subject.sem_no";
        $str = "subject1.usub_id = SUBJECT.usub_id";
        $spec_res = $md->dis_join_con($con, "subject", "subject1", $str, $where, $clm);
        $_SESSION["spec_res"] = $spec_res;
    }
    if ($strm[0] == 0) {
        $where = array(
            "sem" => '6',
            "c_id" => '0',
            "division" => $strm[1]
        );
        $ass_stu = $md->sel_where($con, "student", $where);
        $_SESSION["ass_stu"] = $ass_stu;
    } else {
        $where = array(
            "sem" => '9',
            "c_id" => '1',
            "division" => $strm[1]
        );
        $ass_stu = $md->sel_where($con, "student", $where);
        $_SESSION["ass_stu"] = $ass_stu;
    }
}
//Assign Special subject to student
if (isset($_REQUEST["ass_sub_submit"])) {
    $total = $_REQUEST["total"];

    for ($c = 1; $c <= $total; $c++) {
        $si = 0;
        foreach ($_SESSION["spec_res"] as $s) {
            $si++;
            if (isset($_REQUEST["ch$si$c"])) {
                $where = array(
                    "s_enrl" => $_REQUEST["sp$c"]
                );
                $data = array(
                    "usub_id" => $s->usub_id
                );
                $asf = $md->updt($con, $data, "student", $where);
            }
        }
    }
}
//Divide in Batches
if(isset($_REQUEST["db"]))
{
    $where=array(
        "c_id"=>0,
        "sem"=>5
    );
    $db_data=$md->sel_where($con,"student", $where);
    if(count($db_data)==0)
    {
        echo "<script>alert('No Students are available for semester 5')</script>";
        header("location:dashboard,php");
    }
    else
    {
        $cnt=1;
        $b=1;
        foreach ($db_data as $dd)
        {
            if($cnt<=46)
                $b=1;
            else if($cnt>46 && $cnt<=92)
                $b=2;
            else if($cnt>92 && $cnt<=138)
                $b=3;
            else if($cnt>138 && $cnt<=184)
                $b=4;
            else
                $b=5;
            
            $data=array(
                "batch_id"=>$b
                );
            
            $where=array(
                "s_rn"=>$dd->s_rn
                );
            $md->updt($con, $data,"student", $where);
            $cnt++;
        }
    }
}
//View Subject
if (isset($_REQUEST["vs"])) 
{
    $where = array(1 => '1');
    $subc_data = $md->dis_join_con1($con, "subject", "faculty", "subject.ufac_id=faculty.ufac_id", $where);
    $sube_data = $md->dis_join_con1($con, "subject1", "faculty", "subject1.ufac_id=faculty.ufac_id", $where);
    $sub_data = array_merge($subc_data, $sube_data);
    $_SESSION["subdata"] = $sub_data;

    header("location:view_sub.php");
}
//Assign Subjects
if (isset($_REQUEST["crs_fac"])) {
    $where = array($_REQUEST["crs_fac"], 2);
    $sub_fac = $md->sel_where_or($con, "faculty", $where, "c_id");
}
if (isset($_REQUEST["crs_sub"])) {
    $where = array(
        "c_id" => $_REQUEST["crs_sub"]
    );
    $sub_sub = $md->sel_where($con, "subject", $where);
    $sube_sub = $md->sel_all($con, "subject1");
}
//Fetch list of subject for disstribution
if (isset($_REQUEST["crs_sub2"])) {
    $where = array(
        "c_id" => $_REQUEST["crs_sub2"]
    );
    $sub_sub = $md->sel_pattern_not($con, "subject", $where, "sub_name", "%0%");
    $sube_sub = $md->sel_all($con, "subject1");
}
//Submit Assign Subject to faculty
if (isset($_REQUEST["subup_submit"])) {
    $ex = rtrim($_REQUEST["subject"], " ue");
    if ($ex == $_REQUEST["subject"]) {
        $data = array("ufac_id" => $_REQUEST["fac"]);
        $where = array(
            "usub_id" => $_REQUEST["subject"]
        );
        $md->updt($con, $data, "subject", $where);
        header("location:assign_sub.php");
    } else {
        $data = array("ufac_id" => $_REQUEST["fac"]);
        $where = array(
            "uesub_id" => $_REQUEST["subject"]
        );
        $md->updt($con, $data, "subject1", $where);
        header("location:assign_sub.php");
    }
}
/* Faculty Management */
//Add Faculty
if (isset($_REQUEST["fac_submit"])) {
    $fid = $_REQUEST["fid"];
    $facnm = $_REQUEST["facnm"];
    $cr = $_REQUEST["cr"];
    $email = $_REQUEST["email"];
    $pwd = $_REQUEST["pwd"];
    $role = $_REQUEST["role"];

    $fac = array("fac_id" => $fid, "fac_name" => $facnm, "c_id" => $cr, "email" => $email, "password" => $pwd, "role" => $role);

    $md->insert($con, $fac, "faculty");
}
//View Faculty
if (isset($_REQUEST["v_fac"])) {
    if ($_REQUEST["v_fac"] == 1 || $_REQUEST["v_fac"] == 0) {
        $where = array($_REQUEST["v_fac"], 2);
        $sub_fac1 = $md->sel_where_or($con, "faculty", $where, "c_id");
    } else {
        $sub_fac1 = $md->sel_all($con, "faculty");
    }
}
//Update faculty req
if (isset($_REQUEST["facup"])) {
    $where = array(
        "ufac_id" => $_REQUEST["facup"]
    );
    $fac_up = $md->sel_where($con, "faculty", $where);
    $up = serialize($fac_up);
    header("location:fac_update.php?up=$up");
}
//Update Faculty
if (isset($_REQUEST["fac_update"])) {
    $fid = $_REQUEST["fid"];
    $facnm = $_REQUEST["facnm"];
    $cr = $_REQUEST["cr"];
    $email = $_REQUEST["email"];
    $role = $_REQUEST["role"];
    $pwd = $_REQUEST["pwd"];

    $where = array(
        "ufac_id" => $_REQUEST["ufcid"]
    );
    $fac = array("fac_id" => $fid, "fac_name" => $facnm, "c_id" => $cr, "email" => $email, "role" => $role, "password" => $pwd);
    $md->updt($con, $fac, "faculty", $where);

    header("location:view_faculty.php");
}
//Faculty view more details
if (isset($_REQUEST["facvm"])) {
    $where = array(
        "faculty.ufac_id" => $_REQUEST["facvm"]
    );

    $vmfac = $md->dis_join_con($con, "subject", "faculty", "faculty.ufac_id=subject.ufac_id", $where, "faculty.ufac_id,faculty.fac_id,faculty.fac_name,faculty.email,faculty.c_id,faculty.contact,faculty.role,subject.sub_name");
    $_SESSION["vf"] = $vmfac;
}
//Faculty Delete
if (isset($_REQUEST["facdel"])) {
    $where = array(
        "ufac_id" => $_REQUEST["facdel"]
    );

    $check = $md->sel_where($con, "subject", $where);
    $check1 = $md->sel_where($con, "subject1", $where);
    if (count($check) != 0 && count($check1) != 0) {
        echo "<script>alert('Sorry..!you can not delete the working faculty..');</script>";
    } else {
        $md->delete1($con, "faculty", $where);
    }
}
//Semester Dropdown
if (isset($_REQUEST["yr"])) {
    $year = $_REQUEST["yr"];
    $where = array(
        "year" => $year
    );
    $sem_res = $md->sel_where($con, "sem_year", $where);
}
//Subject dropdown
if (isset($_REQUEST["sem"])) {
    if ($_SESSION["role"] == 1) {
        if ($_SESSION["sess_crs"] == 0) {
            $sem = $_REQUEST["sem"];
            $where = array(
                "sem_no" => $sem,
                "c_id" => 0
            );
            $sub_res = $md->sel_where($con, "subject", $where);
        } elseif ($_SESSION["sess_crs"] == 1 && $_REQUEST["sem"] == 9 || $_REQUEST["sem"] == 10) {
            $sem = $_REQUEST["sem"];
            $where = array(
                "sem_no" => $sem,
                "c_id" => 1
            );
            $where1 = array(
                "sem_no" => $sem
            );
            $subc_res = $md->sel_where($con, "subject", $where);
            $sube_res = $md->sel_where($con, "subject1", $where1);
        } else {
            $sem = $_REQUEST["sem"];
            $where = array(
                "sem_no" => $sem,
                "c_id" => $_SESSION["sess_crs"]
            );
            $sub_res = $md->sel_where($con, "subject", $where);
        }
    } else {
        if ($_SESSION["sess_crs"] == 1 && $_REQUEST["sem"] == 9 || $_REQUEST["sem"] == 10) {
            $sem = $_REQUEST["sem"];
            $where = array(
                "sem_no" => $sem,
                "c_id" => 1,
                "ufac_id" => $_SESSION["ufac_id"]
            );
            $where1 = array(
                "sem_no" => $sem,
                "ufac_id" => $_SESSION["ufac_id"]
            );
            $subc_res = $md->sel_where($con, "subject", $where);
            $sube_res = $md->sel_where($con, "subject1", $where1);
        } else {
            $sem = $_REQUEST["sem"];
            $where = array(
                "sem_no" => $sem,
                "ufac_id" => $_SESSION["ufac_id"],
            );
            $sub_res = $md->sel_where($con, "subject", $where);
        }
    }
}

//Academic Year Management
if (isset($_REQUEST["Academic_yr"])) {
    $a_yr = $_REQUEST["a_yr"];
    $where = array(
        "ac_year" => $a_yr
    );
    $res = $md->sel_where($con, "academic_year", $where);
    if (!$res) {
        $data = array("ac_year" => $a_yr);
        $md->insert($con, $data, "academic_year");
        $tr = $md->sel_count($con, "academic_year");
        $get_yr = $md->sel_limit($con, "academic_year", $tr - 1);
        foreach ($get_yr as $y) {
            $a = $y->ac_year;
            $aid = $y->ac_year_id;
        }
        $ar = explode("-", $a);
        $mn = array(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12);
        $dt = array(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31);
        $yr = $ar[0];
        for ($i = 0; $i < count($mn); $i++) {
            $dys = cal_days_in_month(CAL_GREGORIAN, $mn[$i], $yr);
            for ($j = 0; $j < $dys; $j++) {
                $hd = 0;
                $date[$j] = date_create();
                date_date_set($date[$j], $yr, $mn[$i], $dt[$j]);
                $d1 = strtotime(date_format($date[$j], "Y-m-d"));
                $d = date("Y-m-d", $d1);
                $dy = date("D", $d1);
                if ($mn[$i] == 1) {
                    if ($dt[$j] == 14 || $dt[$j] == 26) {
                        $hd = 1;
                    } else {
                        $hd = 0;
                    }
                }
                if ($mn[$i] == 8) {
                    if ($dt[$j] == 15) {
                        $hd = 1;
                    } else {
                        $hd = 0;
                    }
                }
                if ($mn[$i] == 10) {
                    if ($dt[$j] == 2) {
                        $hd = 1;
                    } else {
                        $hd = 0;
                    }
                }
                if ($mn[$i] == 12) {
                    if ($dt[$j] == 25) {
                        $hd = 1;
                    } else {
                        $hd = 0;
                    }
                }
                if ($dy == 'Sun') {
                    $hd = 1;
                }

                $data = array("date" => $d, "holiday" => $hd, "day" => $dy, "ac_year_id" => $aid);
                $md->insert($con, $data, "days");
            }
        }

        header("location:extra_holiday.php");
    } else {
        echo "<script>alert('This Year is already existed...')</script>";
    }
}
//Extra Holidays1
if (isset($_REQUEST["mnt"])) {
    $od = array(1, 2, 3, 4, 5, 6, 7, 8, 9);
    $td = array(10, 11, 12);
    if (in_array($_REQUEST["mnt"], $od)) {
        $mnt = "%-0" . $_REQUEST["mnt"] . "-%";
    } else {
        $mnt = "%-" . $_REQUEST["mnt"] . "-%";
    }
    $days = $md->sel_pattern($con, "days", "date", $mnt);
}
//Extra Holidays2
if (isset($_REQUEST["hd_submit"])) {
    $hds = $_REQUEST["days"];
    $ahds = rtrim($hds, " , ");
    $hdlist = explode(" , ", $ahds);
    $data = array(
        "holiday" => 1
    );
    for ($i = 0; $i < count($hdlist); $i++) {
        $where = array(
            "date" => $hdlist[$i]
        );
        $md->updt($con, $data, "days", $where);
    }
    header("location:dashboard.php");
}
//Check holiday on the selected date of attendance
if (isset($_REQUEST["atdt"])) {
    $where = array(
        "date" => $_REQUEST["atdt"]
    );
    $hddtl = $md->sel_where($con, "days", $where);
}
//Attendance admin
if (isset($_REQUEST["at"])) {
    $data = $_SESSION["d"];
}
//Attendance Request
if (isset($_REQUEST["act_submit"])) {
    $stream = $_REQUEST["c_id"];
    $year = $_REQUEST["a_yr"];
    $sem = $_REQUEST["semester"];
    $sub = $_REQUEST["subject"];
    $dt = $_REQUEST["dt"];
    $div = $_REQUEST["division"];
   
    if(isset($_REQUEST["nb"]))
    {
        $_SESSION["new_batch"]=$_REQUEST["nb"];
        $att_data = array(
            "sem" => $sem,
            "sub" => $sub,
            "dt" => $dt,
            "div" => $div,
            "stream" => $stream,
            "batch_id" => $_SESSION["new_batch"]
        );
        $_SESSION["att"] = $att_data;
        $where1 = array(
                "c_id" => $stream,
                "sem" => $sem,
                "batch_id" => $_SESSION["new_batch"]
        );
        $q1 = $md->sel_where1($con, "student", $where1);
        $_SESSION["q1"] = $q1;
        //echo "<pre>";
        //print_r($q1);exit;
        $where3 = array(
           "usub_id" => $sub
        );
        $sn = $md->sel_where($con, "subject", $where3);
        $_SESSION["sn"] = $sn;
        
        if ($stream == 0)
        {
            $str = "msc";
        } 
        else
        {
            $str = "mba";
        }
        
        $tbl = "attendance_" . $str . "_sem" . $sem;
        $where2 = array(
            "$tbl.date" => $dt,
            "$tbl.usub_id" => $sub,
            "student.batch_id" => $_SESSION["new_batch"]
        );
        //$new_at=$md->sel_where($con, $tbl, $where2);
        $new_at=$md->dis_join_con1($con, "student", $tbl, "student.s_enrl=$tbl.s_enrl", $where2);
        $_SESSION["new_att"]=$new_at;
        
        if ($_SESSION["new_att"]) {
            header("location:act_attendance_updt.php");
        } else {
            header("location:act_attendance1.php");
        }
            
    }
    else
    {
            $att_data = array(
                "sem" => $sem,
                "sub" => $sub,
                "dt" => $dt,
                "div" => $div,
                "stream" => $stream
            );

            $_SESSION["att"] = $att_data;
            if ($stream == 0 && $sem == 6) {
                $where1 = array(
                    "c_id" => $stream,
                    "sem" => $sem,
                    "division" => $div,
                    "usub_id" => $sub
                );
                $q1 = $md->sel_where1($con, "student", $where1);
                $_SESSION["q1"] = $q1;
            } elseif ($stream == 1 && $sem == 9 || $sem == 10) {
                $where3 = array(
                    "uesub_id" => $sub
                );
                $sb = $md->sel_where($con, "subject1", $where3);
                //print_r($sb);exit;
                if (!$sb) {
                    $where3 = array(
                        "usub_id" => $sub
                    );
                    $sb = $md->sel_where($con, "subject", $where3);
                    $where1 = array(
                        "c_id" => $stream,
                        "sem" => $sem,
                        "division" => $div,
                    );
                    $q1 = $md->sel_where1($con, "student", $where1);
                    //echo "<pre>";
                    //print_r($q1);exit;
                } else {
                    $where1 = array(
                        "c_id" => $stream,
                        "sem" => $sem,
                        "division" => $div,
                        "usub_id" => $_SESSION["b"]
                    );
                    $q1 = $md->sel_where1($con, "student", $where1);
                }
                //fetch student start
                foreach ($sb as $b) {
                    $_SESSION["b"] = $b->usub_id;
                }



                $_SESSION["q1"] = $q1;
            } else {
                $where1 = array(
                    "c_id" => $stream,
                    "sem" => $sem,
                    "division" => $div
                );
                $q1 = $md->sel_where1($con, "student", $where1);
                $_SESSION["q1"] = $q1;
            }
            //end of fatch student
            //fatch subject name from subject_id
            if ($_SESSION["sess_crs"] == 1 && $sem == 9 || $sem == 10) {
                $where3 = array(
                    "uesub_id" => $sub
                );
                $sn = $md->sel_where($con, "subject1", $where3);
                if (!isset($sn)) {
                    $where3 = array(
                        "usub_id" => $sub
                    );
                    $sn = $md->sel_where($con, "subject", $where3);
                }
                $_SESSION["sn"] = $sn;
            } else {
                $where3 = array(
                    "usub_id" => $sub
                );
                $sn = $md->sel_where($con, "subject", $where3);
                $_SESSION["sn"] = $sn;
            }
            //end 

            if ($stream == 0) {
                $str = "msc";
            } else {
                $str = "mba";
            }
            if ($stream == 1 && $sem == 9 || $sem == 10) {
                $where = array(
                    "uesub_id" => $sub
                );
                $sn = $md->sel_where($con, "subject1", $where);
                if (isset($sn)) {
                    $tbl = "attendance_" . $str . "_sem" . $sem . "_ele";
                    $where2 = array(
                        "$tbl.date" => $dt,
                        "$tbl.uesub_id" => $sub,
                        "student.division" => $div
                    );
                    //$new_at=$md->sel_where($con, $tbl, $where2);
                    $new_at = $md->dis_join_con1($con, "student", $tbl, "student.s_enrl=$tbl.s_enrl", $where2);
                    $_SESSION["new_att"]=$new_at;
                } else {
                    $tbl = "attendance_" . $str . "_sem" . $sem;
                    $where2 = array(
                        "$tbl.date" => $dt,
                        "$tbl.usub_id" => $sub,
                        "student.division" => $div
                    );
                    //$new_at=$md->sel_where($con, $tbl, $where2);
                $new_at = $md->dis_join_con1($con, "student", $tbl, "student.s_enrl=$tbl.s_enrl", $where2);
                $_SESSION["new_att"]=$new_at;
                }

                if ($_SESSION["new_att"]) {
                    header("location:act_attendance_updt.php");
                } else {
                    header("location:act_attendance1.php");
                }
            } else {
                $tbl = "attendance_" . $str . "_sem" . $sem;
                $where2 = array(
                    "$tbl.date" => $dt,
                    "$tbl.usub_id" => $sub,
                    "student.division" => $div
                );
                //$new_at=$md->sel_where($con, $tbl, $where2);
                $new_at=$md->dis_join_con1($con, "student", $tbl, "student.s_enrl=$tbl.s_enrl", $where2);
                $_SESSION["new_att"]=$new_at;

                if ($_SESSION["new_att"]) {
                    header("location:act_attendance_updt.php");
                } else {
                    header("location:act_attendance1.php");
                }
            }
    }
}
//Attendance Submit
if (isset($_REQUEST["att_submit"])) {
    $total = $_SESSION["atotal"];
    $date = $_SESSION["att"]["dt"];
    $sub = $_SESSION["att"]["sub"];
    $cl = array();

    if ($_SESSION["sess_crs"] == 1 && $_SESSION["att"]["sem"] == 9 || $_SESSION["att"]["sem"] == 10) {
        for ($i = 1; $i <= $total; $i++) {
            $cl[$i] = $_REQUEST["r$i"];
            $ex = rtrim($sub, " ue");
            if ($ex == $sub) {
                $where = array(
                    "usub_id" => $sub
                );
            } else {
                $where = array(
                    "uesub_id" => $ex
                );
            }
            $sn = $md->sel_where($con, "subject1", $where);
            if (isset($sn)) {
                $where = array(
                    "date" => $date,
                    "s_enrl" => $_REQUEST["r$i"],
                    "uesub_id" => $ex,
                    "present" => $_REQUEST["ch$cl[$i]"]
                );
                $table = "attendance_mba_sem" . $_SESSION["att"]["sem"] . "_ele";

                $md->insert($con, $where, $table);
            } else {
                $where = array(
                    "date" => $date,
                    "s_enrl" => $_REQUEST["r$i"],
                    "usub_id" => $sub,
                    "present" => $_REQUEST["ch$cl[$i]"]
                );
                $table = "attendance_mba_sem" . $_SESSION["att"]["sem"];

                $md->insert($con, $where, $table);
            }
            header("location:at.php");
        }
    } else {
        for ($i = 1; $i <= $total; $i++) {
            $cl[$i] = $_REQUEST["r$i"];
            $where = array(
                "date" => $date,
                "s_enrl" => $_REQUEST["r$i"],
                "usub_id" => $sub,
                "present" => $_REQUEST["ch$cl[$i]"]
            );
            if ($_SESSION["att"]["stream"] == 0) {
                $strm = "msc";
            } else {
                $strm = "mba";
            }
            $table = "attendance_" . $strm . "_sem" . $_SESSION["att"]["sem"];

            $md->insert($con, $where, $table);
            header("location:at.php");
        }
    }
}
//Attendance faculty
if (isset($_REQUEST["att_submit_f"])) {

    $total = $_SESSION["atotal"];
    $date = $_SESSION["att"]["dt"];
    $sub = $_SESSION["att"]["sub"];
    $cl = array();

    if ($_SESSION["sess_crs"] == 1 && $_SESSION["att"]["sem"] == 9 || $_SESSION["att"]["sem"] == 10) {
        for ($i = 1; $i <= $total; $i++) {
            $cl[$i] = $_REQUEST["r$i"];
            $ex = rtrim($sub, " ue");
            if ($ex == $sub) {
                $where = array(
                    "usub_id" => $sub
                );
            } else {
                $where = array(
                    "uesub_id" => $ex
                );
            }
            $sn = $md->sel_where($con, "subject1", $where);
            if (isset($sn)) {
                $where = array(
                    "date" => $date,
                    "s_enrl" => $_REQUEST["r$i"],
                    "uesub_id" => $ex,
                    "present" => $_REQUEST["ch$cl[$i]"]
                );
                $table = "attendance_mba_sem" . $_SESSION["att"]["sem"] . "_ele";

                $md->insert($con, $where, $table);
            } else {
                $where = array(
                    "date" => $date,
                    "s_enrl" => $_REQUEST["r$i"],
                    "usub_id" => $sub,
                    "present" => $_REQUEST["ch$cl[$i]"]
                );
                $table = "attendance_mba_sem" . $_SESSION["att"]["sem"];

                $md->insert($con, $where, $table);
            }
            header("location:at_f.php");
        }
    } else {
        for ($i = 1; $i <= $total; $i++) {
            $cl[$i] = $_REQUEST["r$i"];
            $where = array(
                "date" => $date,
                "s_enrl" => $_REQUEST["r$i"],
                "usub_id" => $sub,
                "present" => $_REQUEST["ch$cl[$i]"]
            );
            if ($_SESSION["att"]["stream"] == 0) {
                $strm = "msc";
            } else {
                $strm = "mba";
            }
            $table = "attendance_" . $strm . "_sem" . $_SESSION["att"]["sem"];

            $md->insert($con, $where, $table);
            header("location:at_f.php");
        }
    }
}
//Actual attendance faculty
if (isset($_REQUEST["act_submit_f"])) {
    $stream = $_REQUEST["c_id"];
    $year = $_REQUEST["a_yr"];
    $sem = $_REQUEST["semester"];
    $sub = $_REQUEST["subject"];
    if(isset($_REQUEST["nb"]))
    {
        $_SESSION["new_batch"]=$_REQUEST["nb"];
        $dt = date("Y-m-d");
        $div = $_REQUEST["division"];
        $att_data = array(
            "sem" => $sem,
            "sub" => $sub,
            "dt" => $dt,
            "div" => $div,
            "batch_id" => $_REQUEST["nb"],
            "stream" => $stream
        );

        $_SESSION["att"] = $att_data;
        $where1 = array(
            "c_id" => $stream,
            "sem" => $sem,
            "batch_id" => $_REQUEST["nb"]
        );
        $q1 = $md->sel_where1($con, "student", $where1);
        $_SESSION["q1"] = $q1;
        $where3 = array(
           "usub_id" => $sub
        );
        $sn = $md->sel_where($con, "subject", $where3);
        $_SESSION["sn"] = $sn;
        if ($stream == 0) {
        $str = "msc";
        } else {
            $str = "mba";
        }
        $tbl = "attendance_" . $str . "_sem" . $sem;
        $where2 = array(
            "$tbl.date" => $dt,
            "$tbl.usub_id" => $sub,
            "student.batch_id" => $_SESSION["new_batch"]
        );
        //$new_at=$md->sel_where($con, $tbl, $where2);
        $new_at = $md->dis_join_con1($con, "student", $tbl, "student.s_enrl=$tbl.s_enrl", $where2);
        //print_r($new_at);
        $_SESSION["new_att"]=$new_at;
        if ($_SESSION["new_att"]) {
            header("location:act_att_f_updt.php");
        } else {
            header("location:act_attendance1_f.php");
        }
    }
    else
    {
    $dt = date("Y-m-d");
    $div = $_REQUEST["division"];
    $att_data = array(
        "sem" => $sem,
        "sub" => $sub,
        "dt" => $dt,
        "div" => $div,
        "stream" => $stream
    );

    $_SESSION["att"] = $att_data;

    if ($stream == 0 && $sem == 6) {
        $where1 = array(
            "c_id" => $stream,
            "sem" => $sem,
            "division" => $div,
            "usub_id" => $sub
        );
        $q1 = $md->sel_where1($con, "student", $where1);
        $_SESSION["q1"] = $q1;
    } elseif ($stream == 1 && $sem == 9 || $sem == 10) {
        $where3 = array(
            "uesub_id" => $sub
        );
        $sb = $md->sel_where($con, "subject1", $where3);
        //print_r($sb);exit;
        if (!$sb) {
            $where3 = array(
                "usub_id" => $sub
            );
            $sb = $md->sel_where($con, "subject", $where3);
            $where1 = array(
                "c_id" => $stream,
                "sem" => $sem,
                "division" => $div,
            );
            $q1 = $md->sel_where1($con, "student", $where1);
            //echo "<pre>";
            //print_r($q1);exit;
        } else {
            $where1 = array(
                "c_id" => $stream,
                "sem" => $sem,
                "division" => $div,
                "usub_id" => $_SESSION["b"]
            );
            $q1 = $md->sel_where1($con, "student", $where1);
        }
        //fetch student start
        foreach ($sb as $b) {
            $_SESSION["b"] = $b->usub_id;
        }



        $_SESSION["q1"] = $q1;
    } else {
        $where1 = array(
            "c_id" => $stream,
            "sem" => $sem,
            "division" => $div
        );
        $q1 = $md->sel_where1($con, "student", $where1);
        $_SESSION["q1"] = $q1;
    }
    //end of fatch student
    //fatch subject name from subject_id
    if ($_SESSION["sess_crs"] == 1 && $sem == 9 || $sem == 10) {
        $where3 = array(
            "uesub_id" => $sub
        );
        $sn = $md->sel_where($con, "subject1", $where3);
        if (!isset($sn)) {
            $where3 = array(
                "usub_id" => $sub
            );
            $sn = $md->sel_where($con, "subject", $where3);
        }
        $_SESSION["sn"] = $sn;
    } else {
        $where3 = array(
            "usub_id" => $sub
        );
        $sn = $md->sel_where($con, "subject", $where3);
        $_SESSION["sn"] = $sn;
    }
    //end 

    if ($stream == 0) {
        $str = "msc";
    } else {
        $str = "mba";
    }
    if ($stream == 1 && $sem == 9 || $sem == 10) {
        $where = array(
            "uesub_id" => $sub
        );
        $sn = $md->sel_where($con, "subject1", $where);
        if (isset($sn)) {
            $tbl = "attendance_" . $str . "_sem" . $sem . "_ele";
            $where2 = array(
                "$tbl.date" => $dt,
                "$tbl.uesub_id" => $sub,
                "student.division" => $div
            );
            //$new_at=$md->sel_where($con, $tbl, $where2);
            $new_at = $md->dis_join_con1($con, "student", $tbl, "student.s_enrl=$tbl.s_enrl", $where2);
            $_SESSION["new_att"]=$new_at;
        } else {
            $tbl = "attendance_" . $str . "_sem" . $sem;
            $where2 = array(
                "$tbl.date" => $dt,
                "$tbl.usub_id" => $sub,
                "student.division" => $div
            );
            //$new_at=$md->sel_where($con, $tbl, $where2);
            $new_at = $md->dis_join_con1($con, "student", $tbl, "student.s_enrl=$tbl.s_enrl", $where2);
            $_SESSION["new_att"]=$new_at;
        }
        if ($_SESSION["new_att"]) {
            header("location:act_att_f_updt.php");
        } else {
            header("location:act_attendance1_f.php");
        }
    } else {
        $tbl = "attendance_" . $str . "_sem" . $sem;
        $where2 = array(
            "$tbl.date" => $dt,
            "$tbl.usub_id" => $sub,
            "student.division" => $div
        );
        //$new_at=$md->sel_where($con, $tbl, $where2);
        $new_at = $md->dis_join_con1($con, "student", $tbl, "student.s_enrl=$tbl.s_enrl", $where2);
        $_SESSION["new_att"]=$new_at;
        if ($_SESSION["new_att"]) {
            header("location:act_att_f_updt.php");
        } else {
            header("location:act_attendance1_f.php");
        }
    }
    }
}
//attendance update
    if(isset($_REQUEST["att_submit_updt"]))
    {
        $total = $_SESSION["atotal"];
    $date = $_SESSION["att"]["dt"];
    $sub = $_SESSION["att"]["sub"];
    $cl = array();

    if ($_SESSION["sess_crs"] == 1 && $_SESSION["att"]["sem"] == 9 || $_SESSION["att"]["sem"] == 10) {
        for ($i = 1; $i <= $total; $i++) {
            $cl[$i] = $_REQUEST["r$i"];
            $ex = rtrim($sub, " ue");
            if ($ex == $sub) {
                $where = array(
                    "usub_id" => $sub
                );
            } else {
                $where = array(
                    "uesub_id" => $ex
                );
            }
            $sn = $md->sel_where($con, "subject1", $where);
            if (isset($sn)) {
                $where = array(
                    "date" => $date,
                    "s_enrl" => $_REQUEST["r$i"],
                    "uesub_id" => $ex
                );
                $data=array(
                    "present" => $_REQUEST["ch$cl[$i]"]
                );
                $table = "attendance_mba_sem" . $_SESSION["att"]["sem"] . "_ele";

                $md->updt_at($con, $data, $table, $where);
            } else {
                $where = array(
                    "date" => $date,
                    "s_enrl" => $_REQUEST["r$i"],
                    "usub_id" => $sub
                );
                $data=array(
                    "present" => $_REQUEST["ch$cl[$i]"]
                );
                $table = "attendance_mba_sem" . $_SESSION["att"]["sem"];

                $md->updt_at($con, $data, $table, $where);
            }
            header("location:at.php");
        }
    }
       else
       {
        for($i=1;$i<=$total;$i++)
        {
            
                $cl[$i]=$_REQUEST["r$i"];
                $where=array(
                    "date"=>$date,
                    "s_enrl"=>$_REQUEST["r$i"],
                    "usub_id"=>$sub
                );
                $data=array(
                    "present"=>$_REQUEST["ch$cl[$i]"]
                );
                 //print_r($where);
                if($_SESSION["att"]["stream"]==0)
                {
                    $strm="msc";
                }
                else
                {
                    $strm="mba";
                }
            //$d=  strtolower($_SESSION["att"]["div"]);
            $table="attendance_".$strm."_sem".$_SESSION["att"]["sem"];
            
        //$md->insert($con, $where,$table);
        $md->updt_at($con, $data, $table, $where);
        header("location:at.php");
       }
       //exit;
       }
 }
 //Attendance faculty
if (isset($_REQUEST["att_submit_f_updt"])) {

    $total = $_SESSION["atotal"];
    $date = $_SESSION["att"]["dt"];
    $sub = $_SESSION["att"]["sub"];
    $cl = array();

    if ($_SESSION["sess_crs"] == 1 && $_SESSION["att"]["sem"] == 9 || $_SESSION["att"]["sem"] == 10) {
        for ($i = 1; $i <= $total; $i++) {
            $cl[$i] = $_REQUEST["r$i"];
            $ex = rtrim($sub, " ue");
            if ($ex == $sub) {
                $where = array(
                    "usub_id" => $sub
                );
            } else {
                $where = array(
                    "uesub_id" => $ex
                );
            }
            $sn = $md->sel_where($con, "subject1", $where);
            if (isset($sn)) {
                $where = array(
                    "date" => $date,
                    "s_enrl" => $_REQUEST["r$i"],
                    "uesub_id" => $ex
                );
                $data=array(
                    "present" => $_REQUEST["ch$cl[$i]"]
                );
                $table = "attendance_mba_sem" . $_SESSION["att"]["sem"] . "_ele";

                $md->updt_at($con, $data, $table, $where);
            } else {
                $where = array(
                    "date" => $date,
                    "s_enrl" => $_REQUEST["r$i"],
                    "usub_id" => $sub
                );
                $data=array(
                    "present" => $_REQUEST["ch$cl[$i]"]
                );
                $table = "attendance_mba_sem" . $_SESSION["att"]["sem"];

                $md->updt_at($con, $data, $table, $where);
            }
            header("location:at_f.php");
        }
    } else {
        for ($i = 1; $i <= $total; $i++) {
            $cl[$i] = $_REQUEST["r$i"];
            $where = array(
                "date" => $date,
                "s_enrl" => $_REQUEST["r$i"],
                "usub_id" => $sub
            );
            $data=array(
                "present" => $_REQUEST["ch$cl[$i]"]
            );
            if ($_SESSION["att"]["stream"] == 0) {
                $strm = "msc";
            } else {
                $strm = "mba";
            }
            $table = "attendance_" . $strm . "_sem" . $_SESSION["att"]["sem"];

            $md->updt_at($con, $data, $table, $where);
            header("location:at_f.php");
        }
    }
}
  
//Bulk Student Add Request
if ((isset($_REQUEST["bulk_stu_det"]))) {
    $year = $_REQUEST["c_id"];
    $sem = $_REQUEST["semester"];
    $div = strtolower($_REQUEST["division"]);
    $where = array(
        "c_id" => $year,
        "sem" => $sem,
        "division" => $div
    );

    $_SESSION["bulk_stu_det"] = $where;
    $cnt = $md->sel_count_wh($con, "student", $where);
    if ($cnt > 0) {
        echo "<script>alert('Students for this year have already been included...')</script>";
    } else {
        header("location:bulk_stu.php");
    }
}
//Bulk Student Add
if (isset($_POST['bulk'])) {
    $bf = $_POST['f'];
    $handle = fopen($bf, 'r');
    if (!$handle) {
        //echo $bf;
        echo 'File does not exists in this location';
        echo mysqli_error($connection_obj);
        //print_r($_SESSION["bulk_stu_det"]);
        exit;
    }
    while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
        $stu = array(
            "s_rn" => $data[1],
            "fnm" => $data[2],
            "s_gen" => $data[3],
            "contact" => $data[4],
            "email" => $data[5],
            "c_id" => $_SESSION["bulk_stu_det"]["c_id"],
            "sem" => $_SESSION["bulk_stu_det"]["sem"],
            "division" => $data[0]
        );
        $md->insert($con, $stu, "student");
    }
    header("location:bulk_stu_det.php");
}
//Back to Report page
if (isset($_REQUEST["back"])) {
    header("location:report.php");
}
if(isset($_REQUEST["back2"]))
{
    header("location:batch_vise_rp.php");
}
if (isset($_REQUEST["back3"])) {
    header("location:view_faculty.php");
}
if (isset($_REQUEST["back4"])) {
    header("location:date_range_vise.php");
}
if (isset($_REQUEST["back5"])) {
    header("location:sub_vise.php");
}
if (isset($_REQUEST["back6"])) {
    header("location:stu_list.php");
}
if (isset($_REQUEST["back7"])) {
    header("location:view_stu.php");
}
if (isset($_REQUEST["back8"])) {
    header("location:overall.php");
}
if (isset($_REQUEST["back9"])) {
    header("location:view_faculty.php");
}
if (isset($_REQUEST["back10"])) {
    header("location:per_vise_sub_rp.php");
}
//Semster vise report
if (isset($_REQUEST["sem_vise"])) {
    header("location:date_range_vise.php");
}
//Semester vise report request
if (isset($_REQUEST["sem_rep_submit"])) {
    $year = $_REQUEST["c_id"];
    $sem = $_REQUEST["semester"];
    $div = $_REQUEST["division"];
    $where = array(
        "c_id" => $year,
        "sem" => $sem,
        "division" => $div
    );
    $dt_res = $md->sel_where($con, "student", $where);

    if (!isset($dt_res)) {
        $sem1 = $sem + 1;
        $where1 = array(
            "c_id" => $year,
            "sem" => $sem1,
            "division" => $div
        );
        $dt_res = $md->sel_where($con, "student", $where1);
    }
    $_SESSION["sem_stu_data"] = $dt_res;
    $_SESSION["sem_stu_wh"] = $where;
    header("location:rep_dtr.php");
}

//Sem vise report   
if (isset($_REQUEST["semrp"])) {
    $where = array(
        "s_enrl" => $_REQUEST["semrp"],
    );
    $per_stus = $md->sel_where($con, "student", $where);
    $_SESSION["per_st_sv"] = $per_stus;

    if ($_SESSION["sem_stu_wh"]["c_id"] == 1 && $_SESSION["sem_stu_wh"]["sem"] == 9 || $_SESSION["sem_stu_wh"]["sem"] == 10) {
        foreach ($per_stus as $ps) {
            $s = $ps->usub_id;
        }
        $where = array(
            "c_id" => $_SESSION["sem_stu_wh"]["c_id"],
            "sem_no" => $_SESSION["sem_stu_wh"]["sem"],
        );
        $sub_list1 = $md->sel_where($con, "subject", $where);
        $where = array(
            "sem_no" => $_SESSION["sem_stu_wh"]["sem"],
            "usub_id" => $s
        );
        $sub_list2 = $md->sel_where($con, "subject1", $where);
        if ($_SESSION["sem_stu_wh"]["c_id"] == 0) {
            $str = "msc";
        } else {
            $str = "mba";
        }
        $where = array(
            "student.s_enrl" => $_REQUEST["semrp"],
        );

        $table1 = "attendance_" . $str . "_sem" . $_SESSION["sem_stu_wh"]["sem"];
        $table2 = "attendance_" . $str . "_sem" . $_SESSION["sem_stu_wh"]["sem"] . "_ele";
        //$col="student.s_enrl,student.s_rn,student.fnm,student.lnm,".$table1.".date,".$table1.".present,subject.sub_id";
        //$overall_res1=$md->join_three($con, "student", $table1, $table1.".s_enrl=student.s_enrl", "subject", $table1.".usub_id=subject.usub_id",$where,$col);
        if ($_SESSION["sem_stu_wh"]["sem"] % 2 == 0) {
            $subpc[][] = array();
            $mcnt = 0;
            $scnt = 0;
            $subac[][] = array();
            $mn = array("December", "January", "February", "March", "April", "May", "June");
            //present     
            for ($i = 12; $i < 12; $i++) {
                $m = $i;
                $y = date("Y");
                $m1 = date("m");
                if ($m1 < 6)
                    $y = $y - 1;

                $d1 = "$y-$m-1";
                $l = cal_days_in_month(CAL_GREGORIAN, $m, $y);
                $d2 = "$y-$m-$l";
                $where1 = array(
                    "date>" => $d1,
                    "date<" => $d2,
                    "s_enrl" => $_REQUEST["semrp"],
                    "present" => 1
                );
                $where2 = array(
                    "date>" => $d1,
                    "date<" => $d2,
                    "s_enrl" => $_REQUEST["semrp"],
                    "present" => 0
                );
                $scnt = 0;
                foreach ($sub_list1 as $s) {
                    if ($s->sub_id != "HR" || $s->sub_id != "Marketing" || $s->sub_id != "Finance") {
                        $where1["usub_id"] = $s->usub_id;
                        $where2["usub_id"] = $s->usub_id;
                        $subpc[$mcnt][$scnt] = $md->sel_count_wh($con, $table1, $where1);
                        $subac[$mcnt][$scnt] = $md->sel_count_wh($con, $table1, $where2);
                        $scnt++;
                    }
                }
                $where1 = array(
                    "date>" => $d1,
                    "date<" => $d2,
                    "s_enrl" => $_REQUEST["semrp"],
                    "present" => 1
                );
                $where2 = array(
                    "date>" => $d1,
                    "date<" => $d2,
                    "s_enrl" => $_REQUEST["semrp"],
                    "present" => 0
                );
                //$scnt=0;
                foreach ($sub_list2 as $s) {
                    $where1["uesub_id"] = $s->uesub_id;
                    $where2["uesub_id"] = $s->uesub_id;
                    $subpc[$mcnt1][$scnt1] = $md->sel_count_wh($con, $table2, $where1);
                    $subac[$mcnt1][$scnt1] = $md->sel_count_wh($con, $table2, $where2);
                    $scnt++;
                }
                $mcnt++;
            }
            $scnt = 0;
            //present
            for ($i = 1; $i <= 6; $i++) {
                $m = $i;
                $y = date("Y");
                $m1 = date("m");
                if ($m1 >= 6 && $m1 <= 12)
                    $y = $y + 1;

                $d1 = "$y-$m-1";
                $l = cal_days_in_month(CAL_GREGORIAN, $m, $y);
                $d2 = "$y-$m-$l";
                $where1 = array(
                    "date>" => $d1,
                    "date<" => $d2,
                    "s_enrl" => $_REQUEST["semrp"],
                    "present" => 1
                );
                $where2 = array(
                    "date>" => $d1,
                    "date<" => $d2,
                    "s_enrl" => $_REQUEST["semrp"],
                    "present" => 0
                );
                $scnt = 0;
                foreach ($sub_list1 as $s) {
                    if ($s->sub_id != "HR" && $s->sub_id != "Marketing" && $s->sub_id != "Finance") {
                        $where1["usub_id"] = $s->usub_id;
                        $where2["usub_id"] = $s->usub_id;
                        $subpc[$mcnt][$scnt] = $md->sel_count_wh($con, $table1, $where1);
                        $subac[$mcnt][$scnt] = $md->sel_count_wh($con, $table1, $where2);
                        $scnt++;
                    }
                }
                $where1 = array(
                    "date>" => $d1,
                    "date<" => $d2,
                    "s_enrl" => $_REQUEST["semrp"],
                    "present" => 1
                );
                $where2 = array(
                    "date>" => $d1,
                    "date<" => $d2,
                    "s_enrl" => $_REQUEST["semrp"],
                    "present" => 0
                );
                //$scnt=0;
                foreach ($sub_list2 as $s) {
                    $where1["uesub_id"] = $s->uesub_id;
                    $where2["uesub_id"] = $s->uesub_id;
                    $subpc[$mcnt][$scnt] = $md->sel_count_wh($con, $table2, $where1);
                    $subac[$mcnt][$scnt] = $md->sel_count_wh($con, $table2, $where2);
                    $scnt++;
                }
                $mcnt++;
            }
        } else {
            $mn = array("June", "July", "August", "September", "October", "November", "December");
            $subpc[][] = array();
            $subac[][] = array();
            $mcnt = 0;
            $scnt = 0;
            //Present     
            for ($i = 6; $i <= 12; $i++) {
                $m = $i;
                $m = $i;
                $y = date("Y");
                $m1 = date("m");
                if ($m1 < 6)
                    $y = $y - 1;

                $d1 = "$y-$m-1";
                $l = cal_days_in_month(CAL_GREGORIAN, $m, $y);
                $d2 = "$y-$m-$l";

                $where1 = array(
                    "date>" => $d1,
                    "date<" => $d2,
                    "s_enrl" => $_REQUEST["semrp"],
                    "present" => 1
                );
                $where2 = array(
                    "date>" => $d1,
                    "date<" => $d2,
                    "s_enrl" => $_REQUEST["semrp"],
                    "present" => 0
                );
                $scnt = 0;
                foreach ($sub_list1 as $s) {
                    if ($s->sub_id != "HR" && $s->sub_id != "Marketing" && $s->sub_id != "Finance") {
                        $where1["usub_id"] = $s->usub_id;
                        $where2["usub_id"] = $s->usub_id;
                        $subpc[$mcnt][$scnt] = $md->sel_count_wh($con, $table1, $where1);
                        $subac[$mcnt][$scnt] = $md->sel_count_wh($con, $table1, $where2);
                        $scnt++;
                    }
                }
                $where1 = array(
                    "date>" => $d1,
                    "date<" => $d2,
                    "s_enrl" => $_REQUEST["semrp"],
                    "present" => 1
                );
                $where2 = array(
                    "date>" => $d1,
                    "date<" => $d2,
                    "s_enrl" => $_REQUEST["semrp"],
                    "present" => 0
                );
                //$scnt=0;
                foreach ($sub_list2 as $s) {
                    $where1["uesub_id"] = $s->uesub_id;
                    $where2["uesub_id"] = $s->uesub_id;
                    $subpc[$mcnt][$scnt] = $md->sel_count_wh($con, $table2, $where1);
                    $subac[$mcnt][$scnt] = $md->sel_count_wh($con, $table2, $where2);
                    $scnt++;
                }
                $mcnt++;
            }
        }//last
    }//MSC
    else {
        $where = array(
            "c_id" => $_SESSION["sem_stu_wh"]["c_id"],
            "sem_no" => $_SESSION["sem_stu_wh"]["sem"],
        );

        $sub_list = $md->sel_where($con, "subject", $where);
        if ($_SESSION["sem_stu_wh"]["c_id"] == 0) {
            $str = "msc";
        } else {
            $str = "mba";
        }
        $where = array(
            "student.s_enrl" => $_REQUEST["semrp"],
        );

        $table = "attendance_" . $str . "_sem" . $_SESSION["sem_stu_wh"]["sem"];
        $col = "student.s_enrl,student.s_rn,student.fnm,student.lnm," . $table . ".date," . $table . ".present,subject.sub_id";
        $overall_res1 = $md->join_three($con, "student", $table, $table . ".s_enrl=student.s_enrl", "subject", $table . ".usub_id=subject.usub_id", $where, $col);
        //$days= $md->sel($con, $table, $colm);
        if ($_SESSION["sem_stu_wh"]["sem"] % 2 != 0) {
            $mn = array("June", "July", "August", "September", "October", "November", "December");
            $subpc[][] = array();
            $subac[][] = array();
            $mcnt = 0;
            $scnt = 0;
            //Present     
            for ($i = 6; $i <= 12; $i++) {
                $m = $i;
                $y = date("Y");
                $m1 = date("m");
                if ($m1 < 6)
                    $y = $y - 1;

                $d1 = "$y-$m-1";
                $l = cal_days_in_month(CAL_GREGORIAN, $m, $y);
                $d2 = "$y-$m-$l";
                $where1 = array(
                    "date>" => $d1,
                    "date<" => $d2,
                    "s_enrl" => $_REQUEST["semrp"],
                    "present" => 1
                );
                $where2 = array(
                    "date>" => $d1,
                    "date<" => $d2,
                    "s_enrl" => $_REQUEST["semrp"],
                    "present" => 0
                );
                $scnt = 0;
                foreach ($sub_list as $s) {
                    $where1["usub_id"] = $s->usub_id;
                    $where2["usub_id"] = $s->usub_id;
                    $subpc[$mcnt][$scnt] = $md->sel_count_wh($con, $table, $where1);
                    $subac[$mcnt][$scnt] = $md->sel_count_wh($con, $table, $where2);
                    $scnt++;
                }
                $mcnt++;
            }
            //Absent
        } else {
            $subpc[][] = array();
            $mcnt = 0;
            $scnt = 0;
            $subac[][] = array();
            $mn = array("December", "January", "February", "March", "April", "May", "June");
            //present     
            for ($i = 12; $i <= 12; $i++) {
                $m = $i;
                $y = date("Y");
                $m1 = date("m");
                if ($m1 < 6)
                    $y = $y - 1;

                $d1 = "$y-$m-1";
                $l = cal_days_in_month(CAL_GREGORIAN, $m, $y);
                $d2 = "$y-$m-$l";
                $where1 = array(
                    "date>" => $d1,
                    "date<" => $d2,
                    "s_enrl" => $_REQUEST["semrp"],
                    "present" => 1
                );
                $where2 = array(
                    "date>" => $d1,
                    "date<" => $d2,
                    "s_enrl" => $_REQUEST["semrp"],
                    "present" => 0
                );
                $scnt = 0;
                foreach ($sub_list as $s) {
                    $where1["usub_id"] = $s->usub_id;
                    $where2["usub_id"] = $s->usub_id;
                    $subpc[$mcnt][$scnt] = $md->sel_count_wh($con, $table, $where1);
                    $subac[$mcnt][$scnt] = $md->sel_count_wh($con, $table, $where2);
                    $scnt++;
                }
                $mcnt++;
            }
            $scnt = 0;
            //present
            for ($i = 1; $i <= 6; $i++) {
                $m = $i;
                $y = date("Y");
                $m1 = date("m");
                if ($m1 >= 6 && $m1 <= 12)
                    $y = $y + 1;

                $d1 = "$y-$m-1";
                $l = cal_days_in_month(CAL_GREGORIAN, $m, $y);
                $d2 = "$y-$m-$l";
                $where1 = array(
                    "date>" => $d1,
                    "date<" => $d2,
                    "s_enrl" => $_REQUEST["semrp"],
                    "present" => 1
                );
                $where2 = array(
                    "date>" => $d1,
                    "date<" => $d2,
                    "s_enrl" => $_REQUEST["semrp"],
                    "present" => 0
                );
                $scnt = 0;
                foreach ($sub_list as $s) {
                    $where1["usub_id"] = $s->usub_id;
                    $where2["usub_id"] = $s->usub_id;
                    $subpc[$mcnt][$scnt] = $md->sel_count_wh($con, $table, $where1);
                    $subac[$mcnt][$scnt] = $md->sel_count_wh($con, $table, $where2);
                    $scnt++;
                }
                $mcnt++;
            }
        }
    }
}
//Subject vise report
if (isset($_REQUEST["sub_vise"])) {
    header("location:sub_vise.php");
}
//Subject vise report request
if (isset($_REQUEST["sub_rep_submit"])) {
    $cid = $_REQUEST["c_id"];
    $sem = $_REQUEST["semester"];
    if ($_REQUEST["c_id"] == 1 && $_REQUEST["semester"] == 9 || $_REQUEST["semester"] == 10) {
        $where = array(
            "c_id" => $cid,
            "sem_no" => $sem,
        );
        $sub_rp1 = $md->sel_where($con, "subject", $where);
        $_SESSION["sub_rp1"] = $sub_rp1;
        $where = array(
            "sem_no" => $sem
        );
        $sub_rp2 = $md->sel_where($con, "subject1", $where);
        $_SESSION["sub_rp2"] = $sub_rp2;
    } else {
        $where = array(
            "c_id" => $cid,
            "sem_no" => $sem,
        );
        $sub_rp = $md->sel_where($con, "subject", $where);
        $where = array(
            "c_id" => $cid,
            "sem" => $sem,
        );
        $_SESSION["sub_rp"] = $sub_rp;
    }
    $_SESSION["subrp_wh"] = array($cid, $sem, $_REQUEST["division"]);
    header("location:rep_sub.php");
}
//Subject vise report
if (isset($_REQUEST["subrp"])) {
    if ($_SESSION["subrp_wh"][0] == 0) {
        $str = "msc";
    } else {
        $str = "mba";
    }
    $table = "attendance_" . $str . "_sem" . $_SESSION["subrp_wh"][1];
    if ($_SESSION["subrp_wh"][0] == 1 && $_SESSION["subrp_wh"][1] == 9 || $_SESSION["subrp_wh"][0] == 10) {
        $where = array(
            "sem" => $_SESSION["subrp_wh"][1],
            "c_id" => $_SESSION["subrp_wh"][0],
            "division" => $_SESSION["subrp_wh"][2]
        );
        $subrpstr = explode(" ", $_REQUEST["subrp"]);
        if (count($subrpstr) != 3) {
            $sub_idm = $subrpstr[0];
            $sub_id = $subrpstr[1];
            $m = $subrpstr[count($subrpstr) - 1];
            $y = date("Y");
            $dt1 = "$y-$m-01";

            $where["usub_id"] = $sub_id;
            $sub_rp_rn = $md->sel_where($con, "student", $where);

            $l = cal_days_in_month(CAL_GREGORIAN, $m, $y);
            $dt2 = "$y-$m-$l";
            $where = array(
                "sem_no" => $_SESSION["subrp_wh"][1],
            );
            $table = "attendance_" . $str . "_sem" . $_SESSION["subrp_wh"][1] . "_ele";
            $col = "student.s_enrl,student.division," . $table . ".date," . $table . ".present,subject1.sub_name,subject1.ufac_id";
            $dt_res = $md->join_three($con, "student", $table, $table . ".s_enrl=student.s_enrl", "subject1", $table . ".uesub_id=subject1.uesub_id", $where, $col);
            if (!isset($sub_rp_rn)) {
                $where1 = array(
                    "sem" => $_SESSION["subrp_wh"][1] + 1,
                    "c_id" => $_SESSION["subrp_wh"][0],
                    "division" => $_SESSION["subrp_wh"][2]
                );
                $where1["usub_id"] = $sub_id;
                $sub_rp_rn = $md->sel_where($con, "student", $where1);

                $where = array(
                    "sem_no" => $_SESSION["subrp_wh"][1] + 1,
                );
                $dt_res = $md->join_three($con, "student", $table, $table . ".s_enrl=student.s_enrl", "subject1", $table . ".uesub_id=subject1.uesub_id", $where, $col);
            }

            $where = array(
                "$table.date>" => $dt1,
                "$table.date<" => $dt2,
                "$table.uesub_id" => $sub_idm,
            );
            $dtdata1 = $md->dis_join_con1_dist($con, "days", $table, "days.date=$table.date", $where, "days.date");
            $cnt = 0;
            foreach ($dt_res as $d) {
                if ($cnt == 0) {
                    $where = array(
                        "ufac_id" => $d->ufac_id
                    );
                    $fnm = $md->sel_where($con, "faculty", $where);
                } else
                    break;
            }
        }
        else {
            $sub_rp_rn = $md->sel_where($con, "student", $where);
            $sub_id = $subrpstr[0];
            $m = $subrpstr[2];
            $y = date("Y");
            $dt1 = "$y-$m-01";
            $l = cal_days_in_month(CAL_GREGORIAN, $m, $y);
            $dt2 = "$y-$m-$l";
            $table = "attendance_" . $str . "_sem" . $_SESSION["subrp_wh"][1];
            $where = array(
                "$table.usub_id" => $sub_id,
                "student.sem" => $_SESSION["subrp_wh"][1],
                "student.c_id" => $_SESSION["subrp_wh"][0],
                "student.division" => $_SESSION["subrp_wh"][2],
                "$table.date>" => $dt1,
                "$table.date<" => $dt2
            );
            $col = "student.s_enrl,student.division," . $table . ".date," . $table . ".present,subject.sub_name,subject.ufac_id";
            $dt_res = $md->join_three($con, "student", $table, $table . ".s_enrl=student.s_enrl", "subject", $table . ".usub_id=subject.usub_id", $where, $col);
            if (!isset($sub_rp_rn)) {
                $where1 = array(
                    "sem" => $_SESSION["subrp_wh"][1] + 1,
                    "c_id" => $_SESSION["subrp_wh"][0],
                    "division" => $_SESSION["subrp_wh"][2]
                );
                $sub_rp_rn = $md->sel_where($con, "student", $where1);
                $where = array(
                    "$table.usub_id" => $sub_id,
                    "student.sem" => $_SESSION["subrp_wh"][1] + 1,
                    "student.c_id" => $_SESSION["subrp_wh"][0],
                    "student.division" => $_SESSION["subrp_wh"][2],
                    "$table.date>" => $dt1,
                    "$table.date<" => $dt2
                );
                $dt_res = $md->join_three($con, "student", $table, $table . ".s_enrl=student.s_enrl", "subject", $table . ".usub_id=subject.usub_id", $where, $col);
            }

            $where = array(
                "$table.date>" => $dt1,
                "$table.date<" => $dt2,
                "$table.usub_id" => $sub_id,
            );
            $dtdata1 = $md->dis_join_con1_dist($con, "days", $table, "days.date=$table.date", $where, "days.date");
            $cnt = 0;
            if (isset($dt_res)) {
                foreach ($dt_res as $d) {
                    if ($cnt == 0) {
                        $where = array(
                            "ufac_id" => $d->ufac_id
                        );
                        $fnm = $md->sel_where($con, "faculty", $where);
                    } else
                        break;
                }
            }
        }
    }
    else {
        $where = array(
            "sem" => $_SESSION["subrp_wh"][1],
            "c_id" => $_SESSION["subrp_wh"][0],
            "division" => $_SESSION["subrp_wh"][2]
        );
        $sub_rp_rn = $md->sel_where($con, "student", $where);
        $subrpstr = explode(" ", $_REQUEST["subrp"]);
        $sub_id = $subrpstr[0];
        $m = $subrpstr[2];
        $y = date("Y");
        $dt1 = "$y-$m-01";
        $l = cal_days_in_month(CAL_GREGORIAN, $m, $y);
        $dt2 = "$y-$m-$l";

        $where = array(
            "$table.usub_id" => $sub_id,
            "student.sem" => $_SESSION["subrp_wh"][1],
            "student.c_id" => $_SESSION["subrp_wh"][0],
            "student.division" => $_SESSION["subrp_wh"][2],
            "$table.date>" => $dt1,
            "$table.date<" => $dt2
        );

        $col = "student.s_enrl,student.division," . $table . ".date," . $table . ".present,subject.sub_name,subject.ufac_id";
        $dt_res = $md->join_three($con, "student", $table, $table . ".s_enrl=student.s_enrl", "subject", $table . ".usub_id=subject.usub_id", $where, $col);
        if (!isset($sub_rp_rn)) {
            $where1 = array(
                "sem" => $_SESSION["subrp_wh"][1] + 1,
                "c_id" => $_SESSION["subrp_wh"][0],
                "division" => $_SESSION["subrp_wh"][2]
            );

            $sub_rp_rn = $md->sel_where($con, "student", $where1);
            $where = array(
                "$table.usub_id" => $sub_id,
                "student.sem" => $_SESSION["subrp_wh"][1] + 1,
                "student.c_id" => $_SESSION["subrp_wh"][0],
                "student.division" => $_SESSION["subrp_wh"][2],
                "$table.date>" => $dt1,
                "$table.date<" => $dt2
            );
            $dt_res = $md->join_three($con, "student", $table, $table . ".s_enrl=student.s_enrl", "subject", $table . ".usub_id=subject.usub_id", $where, $col);
        }

        $where = array(
            "$table.date>" => $dt1,
            "$table.date<" => $dt2,
            "$table.usub_id" => $sub_id,
        );
        $dtdata1 = $md->dis_join_con1_dist($con, "days", $table, "days.date=$table.date", $where, "days.date");
        $cnt = 0;
        if (isset($dt_res)) {
            foreach ($dt_res as $d) {
                if ($cnt == 0) {
                    $where = array(
                        "ufac_id" => $d->ufac_id
                    );
                    $fnm = $md->sel_where($con, "faculty", $where);
                } else
                    break;
            }
        }
    }
}
//Monthly Overall report
if (isset($_REQUEST["overall"])) {
    header("location:overall.php");
}
//Overall report request
if (isset($_REQUEST["overall_rep_submit"])) {
    $c = $_REQUEST["c_id"];
    $sem = $_REQUEST["semester"];
    $div = $_REQUEST["division"];
    $_SESSION["mnt"] = $_REQUEST["mnt"];
    $where = array(
        "c_id" => $c,
        "sem" => $sem,
        "division" => $div
    );
    $dt_res = $md->sel_where($con, "student", $where);
    if (!isset($dt_res)) {
        $where1 = array(
            "c_id" => $c,
            "sem" => $sem + 1,
            "division" => $div
        );
        $dt_res = $md->sel_where($con, "student", $where1);
    }
    $_SESSION["overall_det"] = $where;
    $_SESSION["overall_stu"] = $dt_res;

    header("location:rep_overall.php");
}
//Overall report of 1 student
if (isset($_REQUEST["ov_rn"])) {
    $where = array(
        "student.s_enrl" => $_REQUEST["ov_rn"]
    );
    $where1 = array(
        "c_id" => $_SESSION["overall_det"]["c_id"],
        "sem_no" => $_SESSION["overall_det"]["sem"]
    );
    $per_stuo = $md->sel_where($con, "student", $where);
    $_SESSION["per_st_ov"] = $per_stuo;
    foreach ($per_stuo as $so) {
        $s = $so->usub_id;
    }

    if ($_SESSION["overall_det"]["c_id"] == 1 && $_SESSION["overall_det"]["sem"] == 9 || $_SESSION["overall_det"]["sem"] == 10) {
        $where1 = array(
            "subject.c_id" => $_SESSION["overall_det"]["c_id"],
            "subject.sem_no" => $_SESSION["overall_det"]["sem"],
        );
        $sub_list1 = $md->sel_where($con, "subject", $where1);
        $where1 = array(
            "subject1.usub_id" => $s,
            "subject1.sem_no" => $_SESSION["overall_det"]["sem"],
        );
        $sub_list2 = $md->sel_where($con, "subject1", $where1);
        $m = $_SESSION["mnt"];
        $m1 = date("m");
        if ($m1 >= 1 && $m1 <= 6) {
            $y = date("Y") - 1;
        } else
            $y = date("Y");
        $d1 = "$y-$m-01";
        $m1 = date("n");
        if ($m == $m1) {
            $l = date("d");
        } else {
            $l = cal_days_in_month(CAL_GREGORIAN, $m, $y);
        }
        $d2 = "$y-$m-$l";
        $where = array(
            "date>" => $d1,
            "date<" => $d2
        );

        $days = $md->sel_where($con, "days", $where);
        $where = array(
            "student.s_enrl" => $_REQUEST["ov_rn"]
        );
        if ($_SESSION["overall_det"]["c_id"] == 0) {
            $str = "msc";
        } else {
            $str = "mba";
        }
        $table1 = "attendance_" . $str . "_sem" . $_SESSION["overall_det"]["sem"];
        $col = "student.s_enrl,student.s_rn,student.fnm,student.lnm," . $table1 . ".date," . $table1 . ".present,subject.sub_id";
        $overall_res1 = $md->join_three($con, "student", $table1, $table1 . ".s_enrl=student.s_enrl", "subject", $table1 . ".usub_id=subject.usub_id", $where, $col);

        $where = array(
            "student.s_enrl" => $_REQUEST["ov_rn"],
        );
        $table2 = "attendance_" . $str . "_sem" . $_SESSION["overall_det"]["sem"] . "_ele";
        $col = "student.s_enrl,student.s_rn,student.fnm,student.lnm," . $table2 . ".date," . $table2 . ".present,subject1.sub_id";
        $overall_res2 = $md->join_three($con, "student", $table2, $table2 . ".s_enrl=student.s_enrl", "subject1", $table2 . ".uesub_id=subject1.uesub_id", $where, $col);
        $ptot = array();
        $otot = array();
        $where = array(
            "student.s_enrl" => $_REQUEST["ov_rn"],
            "$table1.present" => 1,
            "$table2.present" => 1
        );
        $where = array(
            "$table1.s_enrl" => $_REQUEST["ov_rn"]
        );
        $i = 0;
        foreach ($days as $d) {
            $where = array(
                "s_enrl" => $_REQUEST["ov_rn"],
                "present" => 1,
                "date" => $d->date
            );
            $t1 = $md->sel_count_wh($con, $table1, $where);
            $t2 = $md->sel_count_wh($con, $table2, $where);
            $ptot[$i] = $t1 + $t2;
            $where = array(
                "s_enrl" => $_REQUEST["ov_rn"],
                "present" => 0,
                "date" => $d->date
            );
            $a1 = $md->sel_count_wh($con, $table1, $where);
            $a2 = $md->sel_count_wh($con, $table2, $where);
            $otot[$i] = $ptot[$i] + $a1 + $a2;
            $i++;
        }
        $sptot[] = array();
        $i = 0;
        $oltot[] = array();
        foreach ($sub_list1 as $s1) {
            if ($s1->sub_id != "HR" && $s1->sub_id != "Marketing" && $s1->sub_id != "Finance") {
                $where = array(
                    "s_enrl" => $_REQUEST["ov_rn"],
                    "present" => 1,
                    "date>" => $d1,
                    "date<" => $d2,
                    "usub_id" => $s1->usub_id
                );
                $sptot[$i] = $md->sel_count_wh($con, $table1, $where);
                $where = array(
                    "s_enrl" => $_REQUEST["ov_rn"],
                    "present" => 0,
                    "date>" => $d1,
                    "date<" => $d2,
                    "usub_id" => $s1->usub_id
                );
                $a = $md->sel_count_wh($con, $table1, $where);
                $oltot[$i] = $a + $sptot[$i];
                $i++;
            }
        }
        foreach ($sub_list2 as $s2) {
            $where = array(
                "s_enrl" => $_REQUEST["ov_rn"],
                "present" => 1,
                "date>" => $d1,
                "date<" => $d2,
                "uesub_id" => $s2->uesub_id
            );
            $sptot[$i] = $md->sel_count_wh($con, $table2, $where);
            $where = array(
                "s_enrl" => $_REQUEST["ov_rn"],
                "present" => 0,
                "date>" => $d1,
                "date<" => $d2,
                "uesub_id" => $s2->uesub_id
            );
            $a = $md->sel_count_wh($con, $table2, $where);
            $oltot[$i] = $a + $sptot[$i];
            $i++;
        }
    } else {
        $sub_list = $md->sel_where($con, "subject", $where1);
        if ($_SESSION["overall_det"]["c_id"] == 0) {
            $str = "msc";
        } else {
            $str = "mba";
        }
        $table = "attendance_" . $str . "_sem" . $_SESSION["overall_det"]["sem"];
        $col = "student.s_enrl,student.s_rn,student.fnm,student.lnm," . $table . ".date," . $table . ".present,subject.sub_id";
        $overall_res = $md->join_three($con, "student", $table, $table . ".s_enrl=student.s_enrl", "subject", $table . ".usub_id=subject.usub_id", $where, $col);

        $m = $_SESSION["mnt"];
        $m1 = date("m");
        if ($m1 >= 1 && $m1 <= 6) {
            $y = date("Y") - 1;
        } else
            $y = date("Y");
        $d1 = "$y-$m-01";
        $m1 = date("m");
        if ($m == $m1) {
            $l = date("d");
        } else {
            $l = cal_days_in_month(CAL_GREGORIAN, $m, $y);
        }

        $d2 = "$y-$m-$l";
        $where = array(
            "date>" => $d1,
            "date<" => $d2
        );
        $i = 0;
        $check[] = array();
        foreach ($overall_res as $or) {
            $check[$i] = $or->date;
            $i++;
        }
        $i = 0;
        $check1[] = array();
        foreach ($overall_res as $sl) {
            $check1[$i] = $sl->sub_id;
            $i++;
        }

        $days = $md->sel_where($con, "days", $where);
        $where = array(
            "date>" => $d1,
            "date<" => $d2,
            "present" => 1
        );
        for ($i = 0; $i < 1; $i++) {
            foreach ($overall_res as $o) {
                $where["s_enrl"] = $o->s_enrl;
            }
        }
        $tp = $md->sel_count_wh($con, $table, $where);
        $where["present"] = 0;
        $ta = $md->sel_count_wh($con, $table, $where);
        $suba = array();
        $subp = array();
        $i = 0;
        foreach ($sub_list as $s) {
            $where["usub_id"] = $s->usub_id;
            $suba[$i] = $md->sel_count_wh($con, $table, $where);
            $i++;
        }
        $i = 0;
        foreach ($sub_list as $s) {
            $where["usub_id"] = $s->usub_id;
            $where["present"] = 1;
            $subp[$i] = $md->sel_count_wh($con, $table, $where);
            $i++;
        }
    }
}
//Final result
if (isset($_REQUEST["final"])) {
    $m = $_SESSION["mnt"];
    $m1 = date("m");
    if ($m1 >= 1 && $m1 <= 6) {
        $y = date("Y") - 1;
    } else
        $y = date("Y");
    $d1 = "$y-$m-01";
    $m1 = date("n");
    if ($m == $m1) {
        $l = date("d");
    } else {
        $l = cal_days_in_month(CAL_GREGORIAN, $m, $y);
    }
    $d2 = "$y-$m-$l";
    $where = array(
        "date>" => $d1,
        "date<" => $d2
    );
    $days = $md->sel_where($con, "days", $where);
    $where = array(
        "student.s_enrl" => $_REQUEST["final"]
    );

    if ($_SESSION["overall_det"]["c_id"] == 0) {
        $str = "msc";
    } else {
        $str = "mba";
    }
    $where = array(
        "date>" => $d1,
        "date<" => $d2,
        "present" => 1,
        "s_enrl" => $_REQUEST["final"]
    );
    if ($_SESSION["overall_det"]["c_id"] == 1 && $_SESSION["overall_det"]["sem"] == 9 || $_SESSION["overall_det"]["sem"] == 10) {
        $table1 = "attendance_" . $str . "_sem" . $_SESSION["overall_det"]["sem"];
        $tp1 = $md->sel_count_wh($con, $table1, $where);
        $where["present"] = 0;
        $ta1 = $md->sel_count_wh($con, $table1, $where);
        $table1 = "attendance_" . $str . "_sem" . $_SESSION["overall_det"]["sem"] . "_ele";
        $where["present"] = 1;
        $tp2 = $md->sel_count_wh($con, $table1, $where);
        $where["present"] = 0;
        $ta2 = $md->sel_count_wh($con, $table1, $where);
        $tp = $tp1 + $tp2;
        $ta = $ta1 + $ta2;
    } else {
        $table = "attendance_" . $str . "_sem" . $_SESSION["overall_det"]["sem"];
        //$col="student.s_enrl,student.s_rn,student.fnm,student.lnm,".$table.".date,".$table.".present,subject.sub_id";
        //$overall_res=$md->join_three($con, "student", $table, $table.".s_enrl=student.s_enrl", "subject", $table.".usub_id=subject.usub_id",$where,$col);
        $tp = $md->sel_count_wh($con, $table, $where);
        $where["present"] = 0;
        $ta = $md->sel_count_wh($con, $table, $where);
    }
    $where = array(
        "date>" => $d1,
        "date<" => $d2,
        "holiday" => 1,
        "day" => "Sun"
    );
    $suncnt = $md->sel_count_wh($con, "days", $where);
    $where = array(
        "date>" => $d1,
        "date<" => $d2,
        "holiday" => 1,
    );
    $ehdcnt1 = $md->sel_count_wh($con, "days", $where);
    if ($ehdcnt1 > $suncnt) {
        $ehdcnt = $ehdcnt1 - $suncnt;
    } else
        $ehdcnt = 0;
}
//Batch vise Report request
if(isset($_REQUEST["batch_vise"]))
{
    $where=array(
        "c_id"=>0,
        "sem_no"=>5
        );
    $batch_sub=$md->sel_pattern_where($con, "subject", $where,"sub_id","%[prac]");
    //$bdata=serialize($batch_sub);
    $_SESSION["bdata"]=$batch_sub;
    header("location:batch_vise_rp.php");
}
//Batch vise Report
if(isset($_REQUEST["batch_rep_submit"]))
{
    $_SESSION["batch_sub"]=$_REQUEST["sub"];
    $_SESSION["batch_mnt"]=$_REQUEST["dt2"];
    header("location:rep_batch.php");
}
//Batch Vise Report Generation
if(isset($_REQUEST["batch"]))
{
    $y = date("Y");
    $m=$_SESSION["batch_mnt"];
    $dt1 = "$y-$m-01";
    $l = cal_days_in_month(CAL_GREGORIAN, $m, $y);
    $dt2 = "$y-$m-$l";
    $table="attendance_msc_sem5";
    $where=array(
        "student.batch_id"=>$_REQUEST["batch"],
        "$table.usub_id"=>$_SESSION["batch_sub"],
        "$table.date>" => $dt1,
        "$table.date<" => $dt2
        );
    $batch_stu_data=$md->dis_join_con1($con,"student", $table,"student.s_enrl=$table.s_enrl", $where);
     $where = array(
                "$table.date>" => $dt1,
                "$table.date<" => $dt2,
                "$table.usub_id" => $_SESSION["batch_sub"]
            );
     $dtdata1 = $md->dis_join_con1_dist($con, "days", $table, "days.date=$table.date", $where, "days.date");
     $where=array(
         "usub_id"=>$_SESSION["batch_sub"]
        );
     $fnm=$md->dis_join_con1($con,"subject", "faculty","subject.ufac_id=faculty.ufac_id", $where);
}


//Subject vise Percentage vise report
if (isset($_REQUEST["per_vise"])) {
    header("location:per_vise_sub_rp.php");
}
//Percentage vise  & Subject vise report request
if (isset($_REQUEST["per_sub_rep_submit"]))
 {
    $cid = $_REQUEST["c_id"];
    $sem = $_REQUEST["semester"];
    if ($_REQUEST["c_id"] == 1 && $_REQUEST["semester"] == 9 || $_REQUEST["semester"] == 10) {
        $where = array(
            "c_id" => $cid,
            "sem_no" => $sem,
        );
        $sub_rp1 = $md->sel_where($con, "subject", $where);
        $_SESSION["sub_rp1"] = $sub_rp1;
        $where = array(
            "sem_no" => $sem
        );
        $sub_rp2 = $md->sel_where($con, "subject1", $where);
        $_SESSION["sub_rp2"] = $sub_rp2;
    } else {
        $where = array(
            "c_id" => $cid,
            "sem_no" => $sem,
        );
        $sub_rp = $md->sel_where($con, "subject", $where);
        $where = array(
            "c_id" => $cid,
            "sem" => $sem,
        );
        $_SESSION["sub_rp"] = $sub_rp;
    }
    $_SESSION["subrp_wh"] = array($cid, $sem, $_REQUEST["division"]);
    header("location:rep_per_sub.php");
}
//Subject vise & percentage vise report
if (isset($_REQUEST["subrp1"])) {
    if ($_SESSION["subrp_wh"][0] == 0) {
        $str = "msc";
    } else {
        $str = "mba";
    }
    $table = "attendance_" . $str . "_sem" . $_SESSION["subrp_wh"][1];
    if ($_SESSION["subrp_wh"][0] == 1 && $_SESSION["subrp_wh"][1] == 9 || $_SESSION["subrp_wh"][0] == 10) {
        $where = array(
            "sem" => $_SESSION["subrp_wh"][1],
            "c_id" => $_SESSION["subrp_wh"][0]
        );
        $subrpstr = explode(" ", $_REQUEST["subrp1"]);
        if (count($subrpstr) != 7) {
            $sub_idm = $subrpstr[0];
            $sub_id = $subrpstr[1];
            $m = $subrpstr[count($subrpstr) - 1];
            $y = date("Y");
            $dt1 = "$y-$m-01";
            $ul = $subrpstr[3];
            $ll = $subrpstr[5];
            $where["usub_id"] = $sub_id;
            $sub_rp_rn = $md->sel_where($con, "student", $where);
            if (!isset($sub_rp_rn)) {
                $where1 = array(
                    "sem" => $_SESSION["subrp_wh"][1] + 1,
                    "c_id" => $_SESSION["subrp_wh"][0]
                );
                $where1["usub_id"] = $sub_id;
                $sub_rp_rn = $md->sel_where($con, "student", $where1);
            }
            $l = cal_days_in_month(CAL_GREGORIAN, $m, $y);
            $dt2 = "$y-$m-$l";
            $where = array(
                "sem_no" => $_SESSION["subrp_wh"][1],
            );
            $table = "attendance_" . $str . "_sem" . $_SESSION["subrp_wh"][1] . "_ele";
            $col = "student.s_enrl," . $table . ".date," . $table . ".present,subject1.sub_name,subject1.ufac_id";
            $where = array(
                "subject1.uesub_id" => $sub_idm
            );
            $dtdata = $md->dis_join_con1($con, "faculty", "subject1", "subject1.ufac_id=faculty.ufac_id", $where);
            $i = 0;
            $where = array(
                "$table.date>" => $dt1,
                "$table.date<" => $dt2,
                "$table.uesub_id" => $sub_idm
            );
            $totdt = $md->sel1($con, $table, "$table.date", $where);

            foreach ($sub_rp_rn as $srn) {
                $where = array(
                    "$table.date>" => $dt1,
                    "$table.date<" => $dt2,
                    "$table.uesub_id" => $sub_idm,
                    "$table.s_enrl" => $srn->s_enrl,
                    "$table.present" => 1
                );
                $parr[$i] = $md->sel_count_wh($con, $table, $where);
                $i++;
            }
        } else {
            $sub_rp_rn = $md->sel_where($con, "student", $where);
            if (!isset($sub_rp_rn)) {
                $where1 = array(
                    "sem" => $_SESSION["subrp_wh"][1] + 1,
                    "c_id" => $_SESSION["subrp_wh"][0]
                );
                $sub_rp_rn = $md->sel_where($con, "student", $where1);
            }
            $sub_id = $subrpstr[0];
            $m = $subrpstr[count($subrpstr) - 1];
            $ul = $subrpstr[2];
            $ll = $subrpstr[4];
            $y = date("Y");
            $dt1 = "$y-$m-01";
            $l = cal_days_in_month(CAL_GREGORIAN, $m, $y);
            $dt2 = "$y-$m-$l";
            $table = "attendance_" . $str . "_sem" . $_SESSION["subrp_wh"][1];
            $where = array(
                "subject.usub_id" => $sub_id
            );
            $dtdata = $md->dis_join_con1($con, "faculty", "subject", "subject.ufac_id=faculty.ufac_id", $where);
            $i = 0;
            $where = array(
                "$table.date>" => $dt1,
                "$table.date<" => $dt2,
                "$table.usub_id" => $sub_id
            );
            $totdt = $md->sel1($con, $table, "$table.date", $where);

            foreach ($sub_rp_rn as $srn) {
                $where = array(
                    "$table.date>" => $dt1,
                    "$table.date<" => $dt2,
                    "$table.usub_id" => $sub_id,
                    "$table.s_enrl" => $srn->s_enrl,
                    "$table.present" => 1
                );
                $parr[$i] = $md->sel_count_wh($con, $table, $where);
                $i++;
            }
        }
    } else {
        $where = array(
            "sem" => $_SESSION["subrp_wh"][1],
            "c_id" => $_SESSION["subrp_wh"][0],
        );
        $sub_rp_rn = $md->sel_where($con, "student", $where);
        if (!isset($sub_rp_rn)) {
            $where1 = array(
                "sem" => $_SESSION["subrp_wh"][1] + 1,
                "c_id" => $_SESSION["subrp_wh"][0]
            );
            $sub_rp_rn = $md->sel_where($con, "student", $where1);
        }

        $subrpstr = explode(" ", $_REQUEST["subrp1"]);
        $sub_id = $subrpstr[0];
        $m = $subrpstr[count($subrpstr) - 1];
        $ul = $subrpstr[2];
        $ll = $subrpstr[4];
        $y = date("Y");
        $dt1 = "$y-$m-01";
        $l = cal_days_in_month(CAL_GREGORIAN, $m, $y);
        $dt2 = "$y-$m-$l";

        $where = array(
            "subject.usub_id" => $sub_id
        );
        $dtdata = $md->dis_join_con1($con, "faculty", "subject", "subject.ufac_id=faculty.ufac_id", $where);
        $i = 0;
        $where = array(
            "$table.date>" => $dt1,
            "$table.date<" => $dt2,
            "$table.usub_id" => $sub_id
        );
        $totdt = $md->sel1($con, $table, "$table.date", $where);

        foreach ($sub_rp_rn as $srn) {
            $where = array(
                "$table.date>" => $dt1,
                "$table.date<" => $dt2,
                "$table.usub_id" => $sub_id,
                "$table.s_enrl" => $srn->s_enrl,
                "$table.present" => 1
            );
            $parr[$i] = $md->sel_count_wh($con, $table, $where);
            $i++;
        }
    }
}

//Backup
if ((isset($_REQUEST["backup_det"]))) {
    $year = $_REQUEST["c_id"];
    $sem = $_REQUEST["semester"];
    $where = array(
        "c_id" => $year,
        "sem" => $sem
    );

    $_SESSION["backup_det"] = $where;
    header("location:backup_file.php");
}

if (isset($_REQUEST["backup_data"])) {
    //$db_record=array('s_enrl','s_rn','fnm','lnm','s_gen','email','contact','c_id','sem','division');
    $where = $_SESSION["backup_det"];
    $csv_filename = $_REQUEST["filenm"] . '.csv';
    $csv_export = '';
    $bac_res = $md->sel_where($con, "student", $where);
    $nm = $md->sel_count_wh($con, "student", $where);
    //$cnt=mysql_num_fields($bac_res);
    //echo "<script>alert($nm)</script>";
    $fields = array('s_enrl', 's_rn', 'fnm', 'lnm', 's_gen', 'email', 'contact', 'c_id', 'sem', 'division');
    $fields1 = array('Enrollment No.', 'Roll Number', 'First Name', 'Last Name', 'Gender', 'Email', 'Contact', 'c_id', 'sem', 'division');
    //print_r($fields);
    //echo $fields[0];exit;
    for ($m = 0; $m < count($fields1); $m++) {
        $csv_export.=$fields1[$m] . ',';
        //$csv_export.=[$i]=>$fields;
    }
    //echo "<script>alert(count($fields))</script>";
    $csv_export.="\n";
    foreach ($bac_res as $bs) {
        for ($k = 0; $k < count($fields1); $k++) {
            $csv_export.='' . $bs->$fields[$k] . ',';
        }
        $csv_export.="\n";
    }
    header("content-type:text/x-csv");
    header("content-Disposition:attachment; filename=" . $csv_filename . "");
    echo $csv_export;
    //header("location:backup_det.php");
    exit;
}
if ((isset($_REQUEST["backup_at_det"]))) {
    $year = $_REQUEST["c_id"];
    $sem = $_REQUEST["semester"];
    $where = array(
        "c_id" => $year,
        "sem" => $sem
    );

    $_SESSION["backup_at_det"] = $where;
    header("location:backup_at_file.php");
}

if (isset($_REQUEST["backup_at_data"])) {
    //$db_record=array('s_enrl','s_rn','fnm','lnm','s_gen','email','contact','c_id','sem','division');
    //$where=$_SESSION["backup_at_det"];
    $csv_filename = $_REQUEST["filenm"] . '.csv';
    $csv_export1 = '';
    if ($_SESSION["backup_at_det"]["c_id"] == 0) {
        $str = "msc";
    } else {
        $str = "mba";
    }
    $tbl = "attendance_" . $str . "_sem" . $_SESSION["backup_at_det"]["sem"];
    $col = "student.s_rn,student.fnm,student.lnm,subject.sub_name," . $tbl . ".date," . $tbl . ".present";
    $bac_at_res = $md->join_three_all($con, "student", "$tbl", "student.s_enrl=" . $tbl . ".s_enrl", "subject", "subject.usub_id=" . $tbl . ".usub_id", $col);

    $fields = array('Date', 'Roll No', 'Name', 'Subject', 'Attendance');
    for ($w = 0; $w < 5; $w++) {
        $csv_export1.=$fields[$w] . ',';
        //$csv_export.=[$i]=>$fields;
    }
    $csv_export1.="\n";
    foreach ($bac_at_res as $bs1) {
        $csv_export1.='' . $bs1->date . ',' . $bs1->s_rn . ',' . $bs1->fnm . ' ' . $bs1->lnm . ',' . $bs1->sub_name . ',' . $bs1->present . ',';
        $csv_export1.="\n";
    }
    header("content-type:text/csv");
    header("content-Disposition:attachment; filename=" . $csv_filename . "");
    echo $csv_export1;
    exit;
}
//Fifth Year Backup

/* Transfer Student Year Vise */
//First Year to Second Year
if (isset($_REQUEST["f_to_s"])) {
    $where = array(
        "sem" => 2
    );
    $transfer_res = $md->sel_where($con, "student", $where);
    foreach ($transfer_res as $tr) {
        $where2 = array(
            "s_enrl" => $tr->s_enrl
        );
        $data = array(
            "s_rn" => $tr->s_rn + 1000,
            "sem" => 3
        );
        $md->updt($con, $data, "student", $where2);
    }
}
//Second Year to Third Year
if (isset($_REQUEST["s_to_t"])) {
    $where = array(
        "sem" => 4
    );
    $transfer_res = $md->sel_where($con, "student", $where);
    foreach ($transfer_res as $tr) {
        $where2 = array(
            "s_enrl" => $tr->s_enrl
        );
        $data = array(
            "s_rn" => $tr->s_rn + 1000,
            "sem" => 5
        );
        $md->updt($con, $data, "student", $where2);
    }
}
//Third Year to Fourth Year MSC IT
if (isset($_REQUEST["t_to_f_msc"])) {
    $where = array(
        "sem" => 6,
        "c_id" => 0
    );
    $transfer_res = $md->sel_where($con, "student", $where);

    $tcnt = $md->sel_count_wh($con, "student", $where);
    $divide = $tcnt / 2;
    //echo $tcnt." ".$divide;
    $cnt = 0;
    //echo "<pre>";
    $t_array = array_chunk($transfer_res, $divide);
    foreach ($t_array[0] as $tr) {
        $where2 = array(
            "s_enrl" => $tr->s_enrl
        );
        $data = array(
            "s_rn" => $tr->s_rn + 1000,
            "sem" => 7,
            "division" => 'a'
        );
        $md->updt($con, $data, "student", $where2);
    }
    foreach ($t_array[1] as $tr) {
        $where2 = array(
            "s_enrl" => $tr->s_enrl
        );
        $data = array(
            "s_rn" => $tr->s_rn + 1000,
            "sem" => 7,
            "division" => 'b'
        );
        $md->updt($con, $data, "student", $where2);
    }
}
//Third Year to Fourth Year MBA
if (isset($_REQUEST["t_to_f_mba"])) {
    $where = array(
        "sem" => 6,
        "c_id" => 1
    );
    $transfer_res = $md->sel_where($con, "student", $where);

    foreach ($transfer_res as $tr) {
        $where2 = array(
            "s_enrl" => $tr->s_enrl
        );
        $data = array(
            "s_rn" => $tr->s_rn + 1000,
            "sem" => 7
        );
        $md->updt($con, $data, "student", $where2);
    }
}
//Fourth Year to Fifth Year
if (isset($_REQUEST["f_to_f"])) {
    $where = array(
        "sem" => 8
    );
    $transfer_res = $md->sel_where($con, "student", $where);

    foreach ($transfer_res as $tr) {
        $where2 = array(
            "s_enrl" => $tr->s_enrl
        );
        $data = array(
            "s_rn" => $tr->s_rn + 1000,
            "sem" => 9
        );
        $md->updt($con, $data, "student", $where2);
    }
}
//Transfer Student Semester Vise
//First Semster to Second Semster
if (isset($_REQUEST["fs_to_ss"])) {
    $where = array(
        "sem" => 1
    );
    $transfer_res = $md->sel_where($con, "student", $where);
    foreach ($transfer_res as $tr) {
        $where2 = array(
            "s_enrl" => $tr->s_enrl
        );
        $data = array(
            "sem" => 2
        );
        $md->updt($con, $data, "student", $where2);
    }
}
//Third Semster to Fourth Semster
if (isset($_REQUEST["ts_to_fs"])) {
    $where = array(
        "sem" => 3
    );
    $transfer_res = $md->sel_where($con, "student", $where);
    foreach ($transfer_res as $tr) {
        $where2 = array(
            "s_enrl" => $tr->s_enrl
        );
        $data = array(
            "sem" => 4
        );
        $md->updt($con, $data, "student", $where2);
    }
}
//Fifth Semster to Sixth Semster
if (isset($_REQUEST["fis_to_ss"])) {
    $where = array(
        "sem" => 5
    );
    $transfer_res = $md->sel_where($con, "student", $where);
    foreach ($transfer_res as $tr) {
        $where2 = array(
            "s_enrl" => $tr->s_enrl
        );
        $data = array(
            "sem" => 6
        );
        $md->updt($con, $data, "student", $where2);
    }
}
//Seventh Semster to Eighth Semster
if (isset($_REQUEST["ss_to_es"])) {
    $where = array(
        "sem" => 7
    );
    $transfer_res = $md->sel_where($con, "student", $where);
    foreach ($transfer_res as $tr) {
        $where2 = array(
            "s_enrl" => $tr->s_enrl
        );
        $data = array(
            "sem" => 8
        );
        $md->updt($con, $data, "student", $where2);
    }
}
//Ninth Semster to Tenth Semster
if (isset($_REQUEST["ns_to_ts"])) {
    $where = array(
        "sem" => 9
    );
    $transfer_res = $md->sel_where($con, "student", $where);
    foreach ($transfer_res as $tr) {
        $where2 = array(
            "s_enrl" => $tr->s_enrl
        );
        $data = array(
            "sem" => 10
        );
        $md->updt($con, $data, "student", $where2);
    }
}
//Remove fifth year data
//Fifth Year Student Data - M.Sc.(CA& IT)
if (isset($_REQUEST["fs_msc"])) {
    $code = $_POST["code"];

    $where = array(
        "c_id" => 0
    );
    //$str=" sem=9 OR  sem=10 ";
    $str = " sem=10 ";
    $md->delete_pattern_where($con, "student", $where, "s_rn", $code . "%", $str);
}
//Fifth Year Attendance Data  - M.Sc.(CA& IT)
if (isset($_REQUEST["fa_msc"])) {
    $code = $_POST["code"];
    $where = array(
        "1" => 1
    );
    //$str=" sem=9 OR  sem=10 ";
    $str = " sem=10 ";
    $md->delete_pattern_where($con, "attendance_msc_sem9", $where, "date", $code . "%", $str);
    $md->delete_pattern_where($con, "attendance_msc_sem10", $where, "date", $code . "%", $str);
}
//Fifth Year Student Data - MBA
if (isset($_REQUEST["fs_mba"])) {
    $code = $_POST["code"];
    $where = array(
        "c_id" => 1
    );
    //$str=" sem=9 OR  sem=10 ";
    $str = " sem=10 ";
    $md->delete_pattern_where($con, "student", $where, "s_rn", $code . "%", $str);
}
//Fifth Year Attendance Data  - MBA
if (isset($_REQUEST["fa_mba"])) {
    $code = $_POST["code"];
    $where = array(
        "c_id" => 1
    );
    //$str=" sem=9 OR  sem=10 ";
    $str = " sem=10 ";
    $md->delete_pattern_where($con, "attendance_mba_sem10", $where, "date", $code . "%");
}
//Site map
if (isset($_REQUEST["site_map"])) {
    header("location:site_map.php");
}
?>