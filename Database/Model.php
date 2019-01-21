<?php
    include 'Connection.php';
    $con1=new Connection();
    $con=$con1->mkConnection();
    
    class model
    {
        function insert($con,$stu,$table)
        {
            $k=array_keys($stu);
            $col=implode(",",$k);
            
            $v=array_values($stu);
            $val=implode("','",$v);
            
            $q="insert into $table($col) values('$val')";
           //echo $q;exit;
            return $con->query($q);
        }
                        
        function insert_con($con,$stu,$table,$where)
        {
            $k=array_keys($stu);
            $col=implode(",",$k);
            
            $v=array_values($stu);
            $val=implode("','",$v);
            
            $q="insert into $table($col) values('$val') where 1=1";
            
            foreach($where as $k=>$v)
            {
                $q.=" and $k='$v'";
            }
            
            //echo $q;exit;
            $con->query($q);
        }
        
        function display($con,$table)
        {
            $q="select * from $table";
            $all=$con->query($q);
            while($row=$all->fetch_object())
            {
                $r[]=$row;
            }
            if(isset($r))
                return $r;
        }
        
        function sel_count($con,$table)
        {
            $q="select * from $table";
            //echo $q;exit;
            
            $cnt=$con->query($q);
            $nm=$cnt->num_rows;
            
            return $nm;
        }
        function sel_count_wh($con,$table,$where)
        {
            $q="select * from $table where 1=1";
            //echo $q;exit;
            foreach($where as $k=>$v)
            {
                $q.=" and $k='$v'";
            }
            //echo $q;exit;
            $cnt=$con->query($q);
            $nm=$cnt->num_rows;
            
            return $nm;
        }
       
        function dis_join($con,$tbl1,$tbl2,$str,$clm,$dt)
        {
            $q="SELECT student.s_rn,student.fnm,student.lnm,attendance_msc_sem1_diva.date,attendance_msc_sem1_diva.present FROM `student` INNER JOIN `attendance_msc_sem1_diva` ON student.s_enrl=attendance_msc_sem1_diva.s_enrl WHERE date='2018-06-1'";
            //echo $q;exit;
            $al=$con->query($q);
            //print_r($al);exit;
            while($row=$al->fetch_object())
            {
                
                $r[]=$row;
            }
            //print_r($r);exit;
            if(isset($r))
                return $r;
        }
         function join_three($con,$table1,$table2,$join,$table3,$join2,$where,$col)
	{
	    $q="select $col from $table1 join $table2 on $join join $table3 on $join2 where 1=1";  
            
            foreach($where as $k=>$v)
            {
                $q.=" and $k='$v'";
            }
             // echo $q; exit;
            $al=$con->query($q);
            while($row=$al->fetch_object())
            {
                $r[]=$row;
            }
            
            if(isset($r))
                return $r;
	}
        function join_three_all($con,$table1,$table2,$join,$table3,$join2,$col)
	{
	    $q="select $col from $table1 join $table2 on $join join $table3 on $join2";  
            
            
              //echo $q; exit;
            $al=$con->query($q);
            while($row=$al->fetch_object())
            {
                $r[]=$row;
            }
            
            if(isset($r))
                return $r;
	}
        function join_four_where($con,$table1,$table2,$join,$table3,$join2,$table4,$join3,$where,$col)
        {
            $q="select $col from $table1 join $table2 on $join join $table3 on $join2 join $table4 on $join3 where 1=1"; 
	     
            foreach($where as $k=>$v)
            {
                $q.= " and $k = '$v'";
            }
           //echo $q;exit; 
           $al =  $con->query($q);
           while($row=$al->fetch_object())
            {
                $r[]=$row;
            }
            
            if(isset($r))
                return $r;
           
           return $ff;
        }
        function dis_join_con($con,$tbl1,$tbl2,$str,$where,$col)
        {
            $q="select $col from `$tbl2` JOIN `$tbl1` ON $str where 1=1";
            
            foreach($where as $k=>$v)
            {
                $q.=" and $k='$v'";
            }
            $al=$con->query($q);
            //echo $q;exit;
            while($row=$al->fetch_object())
            {
                $r[]=$row;
            }
            
            if(isset($r))
                return $r;
        }
        
        function dis_join_con1($con,$tbl1,$tbl2,$str,$where)
        {
            $q="select * from `$tbl2` INNER JOIN `$tbl1` ON $str where 1=1";
            
            foreach($where as $k=>$v)
            {
                $q.=" and $k='$v'";
            }
            $al=$con->query($q);
            //echo $q;exit;
            if($al->num_rows!=0)
            {
                while($row=$al->fetch_object())
                {
                    $r[]=$row;
                }
                if(isset($r))
                {
                    return $r;
                }
            }
            
        }
        function sel_count_wh_join($con,$table1,$table2,$join,$table3,$join2,$where,$col,$where1)
         {
             $q="select $col from $table1 join $table2 on $join join $table3 on $join2 where 1=1";  
            
            foreach($where as $k=>$v)
            {
                $q.=" and $k='$v'";
            }
             //echo $q; exit;
            foreach($where1 as $k=>$v)
            {
                $q.=" or $k='$v'";
            }
            echo $q;exit;
            
            $cnt=$con->query($q);
            $nm=$cnt->num_rows;
            
            return $nm;
        }
        function dis_join_con2($con,$tbl1,$tbl2,$str,$where,$col)
        {
            $q="select $col from `$tbl2` RIGHT JOIN `$tbl1` ON $str where 1=1";
            
            foreach($where as $k=>$v)
            {
                $q.=" and $k='$v'";
            }
            //echo $q;exit;
            $al=$con->query($q);
            //echo $q;
            //exit;
            if($al->num_rows!=0)
            {
                while($row=$al->fetch_object())
                {
                    $r[]=$row;
                }
                if(isset($r))
                {
                    return $r;
                }
            }
            
        }
        
        function dis_join_con1_dist($con,$tbl1,$tbl2,$str,$where,$colm)
        {
            $q="select distinct $colm from `$tbl2` INNER JOIN `$tbl1` ON $str where 1=1";
            
            foreach($where as $k=>$v)
            {
                $q.=" and $k='$v'";
            }
            $q.=" order by $colm";
            $al=$con->query($q);
            //echo $q;exit;
            if($al->num_rows!=0)
            {
                while($row=$al->fetch_object())
                {
                    $r[]=$row;
                }
                if(isset($r))
                {
                    return $r;
                }
            }
            
        }
        function dis_idea($con,$tbl1,$tbl2,$str,$where)
        {
            $q="select * from `$tbl2` INNER JOIN `$tbl1` ON $str";
            
            foreach($where as $k=>$v)
            {
                $q.=" and $k='$v'";
            }
            $al=$con->query($q);
            //echo $q;exit;
            if($al->num_rows!=0)
            {
                while($row=$al->fetch_object())
                {
                    $r[]=$row;
                }
                if(isset($r))
                {
                    return $r;
                }
            }
            
        }
        function sel($con,$table,$colm)
        {
            $q="select distinct $colm from $table";
            
            //echo $q;exit;
            $all1=$con->query($q);
            
            while($row=$all1->fetch_object())
            {
                $r[]=$row;
            }
            if(isset($r))
                return $r;
        }
        function sel1($con,$table,$colm,$where)
        {
            $q="select distinct $colm from $table where 1=1";
            foreach($where as $k=>$v)
            {
                $q.=" and $k='$v'";
            }
            //echo $q;exit;
            $all1=$con->query($q);
            
            while($row=$all1->fetch_object())
            {
                $r[]=$row;
            }
            if(isset($r))
                return $r;
        }
        function sel_all($con,$table)
        {
            $q="select * from $table";
            $all1=$con->query($q);
            //echo $q;exit;
            while($row=$all1->fetch_object())
            {
                $r[]=$row;
            }
            if(isset($r))
                return $r;
        }
        function sel_where($con,$table,$where)
        {
            $q="select * from $table where 1=1";
            foreach($where as $k=>$v)
            {
                $q.=" and $k='$v'";
            }
           //echo $q;exit;
            //alert($q);
            $all1=$con->query($q);
            
            while($row=$all1->fetch_object())
            {
                $r[]=$row;
            }
            if(isset($r))
                return $r;
        }
	function sel_where1($con,$table,$where)
        {
            $q="select * from $table where 1=1";
            foreach($where as $k=>$v)
            {
                $q.=" and $k='$v'";
            }
	//		$q.="order by s_rn ASCE";
           //echo $q;exit;
            //alert($q);
            $all1=$con->query($q);
            
            while($row=$all1->fetch_object())
            {
                $r[]=$row;
            }
            //echo "<pre>";
            //print_r($r);exit;
            if(isset($r))
                return $r;
        }
        
        function sel_where_or_dist($con,$clmn,$table,$where,$c)
        {
            $q="select distinct $clmn from $table as s where 1<>1";
            foreach($where as $k=>$v)
            {
                $q.=" or s.$c='$v'";
            }
           // $q=$q." fac_id like ('%,$c') or fac_id like ('$c,%') or fac_id like ('$c')";
            //echo $q;exit;
            $all1=$con->query($q);
            
            while($row=$all1->fetch_object())
            {
                $r[]=$row;
            }
            if(isset($r))
                return $r;
        }
        function sel_where_or($con,$table,$where,$c)
        {
            $q="select * from $table where 1<>1";
            foreach($where as $k=>$v)
            {
                $q.=" or $table.$c='$v'";
            }
           // $q=$q." fac_id like ('%,$c') or fac_id like ('$c,%') or fac_id like ('$c')";
            //echo $q;exit;
            $all1=$con->query($q);
            
            while($row=$all1->fetch_object())
            {
                $r[]=$row;
            }
            if(isset($r))
                return $r;
        }
        function dis_mul($con,$table,$where)
        {
            $q="select * from $table where ";
            foreach($where as $k=>$v)
            {
                $q.=" $k='$v'";
            }
            
            $all1=$con->query($q);
            
            while($row=$all1->fetch_object())
            {
                $r[]=$row;
            }
            if(isset($r))
                return $r;
        }
        function delete1($con,$table,$where)
        {
            $q="delete from $table where 1=1";
            foreach($where as $k=>$v)
            {
                $q.=" and $k='$v'";
            }
            //echo $q; exit;
            return $con->query($q);
        }
        function edit($con,$table,$where)
        {
            $q="select * from $table where ";
            foreach($where as $k=>$v)
            {
                $q.=" $k='$v'";
            }
            $all=$con->query($q);
            
            if(isset($all))
                $row=$all->fetch_object();
            
            if(isset($row))
                return $row;
        }
        function updt($con,$data,$table,$where)
        {
            $q="update $table set ";
            foreach($data as $k=>$v)
            {
                $q.="$k='$v',";
            }
            $q=rtrim($q,",");
            $q.=" where ";
            foreach($where as $m=>$n)
            {
                $q.="$m='$n'";
            }
            
           //echo $q;exit;
            $con->query($q);
            
        }
        function updt_at($con,$data,$table,$where)
        {
            $q="update $table set ";
            foreach($data as $k=>$v)
            {
                $q.="$k='$v',";
            }
            $q=rtrim($q,",");
            $q.=" where 1=1 ";
            foreach($where as $m=>$n)
            {
                $q.=" and $m='$n'";
            }
            
           //echo $q;exit;
            $con->query($q);
            
        }
        function login($con,$table,$where)
        {
            $q="select * from $table where 1=1";
            foreach($where as $k=>$v)
            {
                $q.=" and $k='$v'";
            }
            //$q=$q." and c_id IN ('$c')";
            //echo $q;exit;
            $all=$con->query($q);
            
            return $all;
        }
        
        function sel_limit($con,$table,$tr)
        {
            $q="select * from $table limit $tr,1";
            //echo $q;exit;
            $all=$con->query($q);
            while($row=$all->fetch_object())
            {
                $r[]=$row;
            }
            return $r;
        }
        function sel_pattern($con,$table,$col,$pattern)
        {
            //SELECT * FROM `days` WHERE date LIKE '%-02-%'
            $q="select * from $table where $col LIKE '$pattern'";
            //echo $q;exit;
            $all1=$con->query($q);
            //echo $q;exit;
            while($row=$all1->fetch_object())
            {
                $r[]=$row;
            }
            if(isset($r))
                return $r;
        }
       
        function sel_pattern_not($con,$table,$where,$col,$pattern)
        {
            //SELECT * FROM `days` WHERE date LIKE '%-02-%'
            $q="select * from $table where 1=1";
            foreach($where as $k=>$v)
            {
                $q.=" and $k='$v'";
            }
            $q.=" AND $col NOT LIKE '$pattern'";
            //echo $q;exit;
            $all1=$con->query($q);
            //echo $q;exit;
            while($row=$all1->fetch_object())
            {
                $r[]=$row;
            }
            if(isset($r))
                return $r;
        }
        function sel_pattern_where($con,$table,$where,$col,$pattern)
        {
            //SELECT * FROM `days` WHERE date LIKE '%-02-%'
            $q="select * from $table where 1=1";
            foreach($where as $k=>$v)
            {
                $q.=" and $k='$v'";
            }
            $q.=" AND $col LIKE '$pattern'";
            //echo $q;exit;
            $all1=$con->query($q);
            //echo $q;exit;
            while($row=$all1->fetch_object())
            {
                $r[]=$row;
            }
            if(isset($r))
                return $r;
        }
        function delete_pattern_where($con,$table,$where,$col,$pattern,$str)
        {
            //SELECT * FROM `days` WHERE date LIKE '%-02-%'
            $q="delete from $table where 1=1";
            foreach($where as $k=>$v)
            {
                $q.=" and $k='$v'";
            }
            $q.=" and ".$str;
            $q.=" AND $col LIKE '$pattern'";
          //  echo $q;exit;
            return $con->query($q);
                
        }
        
        
    }
?>