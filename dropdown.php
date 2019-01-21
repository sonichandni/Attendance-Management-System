<?php
        include './Database/Controler.php';       
//Year Dropdown      
if(isset($_REQUEST["crs"]))
{
    ?>
    <option value="">Select Year</option>
<?php
    foreach($year_data as $y)
    {
    ?>
        <option value="<?php echo $y->year; ?>"><?php echo $y->year?></option>
    <?php
    }
}
//Semester Dropdown
if(isset($_REQUEST["yr"]))
{
	?>
	
         <option value="">Select Semester</option>
         <?php
	foreach($sem_res as $c)
	{
	?>
                        <option value="<?php echo $c->sem_no;?>"><?php echo "Semester ".$c->sem_no;?></option>
                <?php
	}
}
//Division dropdown
if(isset($_REQUEST["year"]))
 {
        ?>	
         <option value="">Select Division</option>
         <?php
         if($_SESSION["sess_crs"]==0)
         {
                if($_REQUEST["year"]=='First' || $_REQUEST["year"]=='Second' || $_REQUEST["year"]=='Third')
                {
                    $arr=array("A","B","C");
                }
                else
                {
                    $arr=array("A","B");
                }
                for($i=0;$i<count($arr);$i++)
                {
        ?>
                    <option value="<?php echo $arr[$i] ;?>"><?php echo $arr[$i];?></option>
                <?php
                }
         }
         else
         {
              $arr=array("A","B","C");
              for($i=0;$i<count($arr);$i++)
              {
        ?>
                    <option value="<?php echo $arr[$i] ;?>"><?php echo $arr[$i];?></option>
                <?php
              }
         }
}
//Subject dropdown
if(isset($_REQUEST["sem"]))
{
	?>
	
         <option value="">Select Subject</option>
         <?php
            
            if($_SESSION["sess_crs"]==1 && $_REQUEST["sem"]==9 || $_REQUEST["sem"]==10)
            {
                foreach($subc_res as $c)
                {
                        if($c->sub_name!="HR" && $c->sub_name!="Marketing" && $c->sub_name!="Finance")
                        {
                        ?>
                                <option value="<?php echo $c->usub_id;?>"><?php echo $c->sub_name;?></option>
                        <?php
                        }
                }
                foreach($sube_res as $c)
                {
                    ?>
                      <option value="<?php echo $c->uesub_id." ue";?>"><?php echo $c->sub_name; ?></option>
                    <?php
                } 
            }
            else
            {
                foreach($sub_res as $c)
                {
                    ?>
                    <option value="<?php echo $c->usub_id;?>"><?php echo $c->sub_name; ?></option>
                    <?php
                }
            }       
}
//batches
if(isset($_REQUEST["nbatch"]))
{
    ?>
	<b>Select Year :<select id="nb" class="form-control" name="nb">
             </b>
         <option value="">Select Batch</option>
         <?php
	foreach($bt_res as $b)
	{
	?>
                        <option value="<?php echo $b->batch_id;?>"><?php echo $b->batch_name;?></option>
                <?php
	}
        echo "</select>";
}
//Overall Report
if(isset($_REQUEST["ov_rn"]))
{
    $cnt=0;                              
    $f=0;$f1=0; 
    $dpcnt=0;$dacnt=0;$dtcnt=0;
    $spcnt=0;
?>
    <thead><center>
<?php  
    $ps=$_SESSION["per_st_ov"];
    foreach($ps as $p)
    {
       ?>
            <tr>
            <td><?php echo "<b>Roll No.: </b>".$p->s_rn; ?> </td>
            <td colspan="4"><?php echo "<b>Name: </b>".$p->fnm; ?> </td>
            <td colspan="3"><?php echo "<b>Email Id: </b>".$p->email; ?> </td>
            <td colspan="2"><?php echo "<b>Contact No.: </b>".$p->contact; ?> </td></tr>
       <?php
     }
     if($_SESSION["overall_det"]["c_id"]==1 && $_SESSION["overall_det"]["sem"]==9 || $_SESSION["overall_det"]["sem"]==10)
     {
?>
            <th>Date</th>
            <?php foreach($sub_list1 as $d)
                       {
                             if($d->sub_id!="HR" && $d->sub_id!="Marketing" && $d->sub_id!="Finance")
                             {
                  ?>
                                   <th><?php echo $d->sub_id; ?></th>
              <?php       }
                        }
                        foreach($sub_list2 as $d)
                        {
               ?>
               <th><?php echo $d->sub_id; ?></th>
               <?php
                             }?>
               <th>Total</th>
               </thead>
               <tbody id="ov_r" name="ov_r">
                <?php $i=0;
                foreach($days as $d1)
                { ?>
                 <tr>
                    <td><?php 
                    $d=strtotime($d1->date); 
                            echo date("d-m-Y",$d); ?>
                    </td>
                    <?php
                    foreach($sub_list1 as $s1)
                    {
                             if($s1->sub_id!="HR" && $s1->sub_id!="Marketing" && $s1->sub_id!="Finance")
                             {
                                   $spcnt=0;
                     ?><td><b><center>
                     <?php
                                      if($d1->holiday==1)
                                      {
                                           echo "-HD";
                                      }
                                      else
                                      {
                                                foreach($overall_res1 as $o)
                                                {
                                                        if($o->date==$d1->date)
                                                        {
                                                            if($o->sub_id==$s1->sub_id)
                                                            {
                                                                if($o->present==1)
                                                                {
                                                                    $dpcnt++;
                                                                    echo "<font color='green'>P</font>";
                                                                    $spcnt++;
                                                                }
                                                                else
                                                                {
                                                                    $dacnt++;
                                                                    echo "<font color='red'>AB</font>";
                                                                    $spcnt++;
                                                                }
                                                            }
                                                         }
                                                }
                                      }//else of sl1
                                      if($spcnt==0) echo "-";
                                ?>
                             </td>
                     <?php   }
                   }//sl1
                   foreach($sub_list2 as $s2)
                   {
                           $spcnt=0;
                   ?><td><b><center>
                                                <?php
                                                if($d1->holiday==1)
                                                {
                                                    echo "-HD";
                                                }
                                                else
                                                {
                                                    if(isset($overall_res2)){
                                                    foreach($overall_res2 as $o)
                                                    {
                                                        if($o->date==$d1->date)
                                                        {
                                                            if($o->sub_id==$s2->sub_id)
                                                            {
                                                                if($o->present==1)
                                                                {
                                                            
                                                                    $dpcnt++;
                                                                    echo "<font color='green'>P</font>";
                                                                    $spcnt++;
                                                                }
                                                                else
                                                                {
                                                                    $dacnt++;
                                                                    echo "<font color='red'>AB</font>";
                                                                    $spcnt++;
                                                                }
                                                            }
                                                        }
                                                    }
                                                    }
                                                    
                                                }//else of sl1
                                                 if($spcnt==0) echo "-";
                                ?>
                                                   </td>
                                 <?php }?>
                                                   <td><?php echo $ptot[$i]." /".$otot[$i]; ?></td>
                                         </tr>
                                         
                                       <?php $i++;}//days
                                       
?>
                                    <tr><td><b>Total</b></td>
                                         <?php
                                        $c=count($sub_list1)+count($sub_list2)-3;
                                        $t=0;$t1=0;
                                        for($j=0;$j<$c;$j++)
                                         {
                                            ?>
                                             <td>
                                             <?php
                                                $t+=$oltot[$j];
                                                $t1+=$sptot[$j];
                                                echo $sptot[$j]." / ".$oltot[$j]; ?>
                                             </td>
                               <?php }?>
                                             
                                             <td><?php echo $t1." / ".$t; ?></td>
                                         </tr>
                                         <tr>
                                             <td><b>Average Attendance :<br>(Present)</b></td>
                                             <?php
                                                
                                                for($j=0;$j<$c;$j++)
                                                {?>
                                                    <td>
                                                    <?php 
                                                    if($oltot[$j]!=0)
                                                    {
                                                        echo round($sptot[$j]/$oltot[$j]*100,2);
                                                        echo "%";
                                                    }
                                                    else echo "0%";
                                                    ?>
                                                    </td>
                                            <?php }?>
                                                    <td><?php 
                                                    if($t!=0)
                                                    {
                                                        echo round($t1/$t*100,2);
                                                        echo "%";
                                                    }
                                                    else
                                                    {
                                                        echo "0%";
                                                    }
                                            ?></td>
                                         </tr>
                                     </tbody>
                                   </center>
<?php }
        else
        {?>
                    <th>Date</th>
                    <?php
                    foreach($sub_list as $d1)
                    { ?>
                        <th><?php echo $d1->sub_id; ?></th>
          <?php } ?>
                        <th>Total</th>
                        </thead>
                        <tbody id="ov_r" name="ov_r">
                        <?php
                        foreach($days as $d1)
                        { 
                              $dpcnt=0; $dacnt=0?>
                         <tr>
                             <td><?php 
                             $d=strtotime($d1->date); 
                                echo date("d-m-Y",$d); ?></td>
                             <?php 
                             foreach($sub_list as $s)
                             {
                                   $spcnt=0;
                              ?><td><b><center>
                                  <?php
                                  if($d1->holiday==1)
                                  {
                                       echo "-HD";
                                  }
                                   else
                                   {
                                        foreach($overall_res as $o)
                                        {
                                             if($o->date==$d1->date)
                                             {
                                                  if($o->sub_id==$s->sub_id)
                                                  {
                                                      if($o->present==1)
                                                      {
                                                          $dpcnt++;
                                                           echo "<font color='green'>P</font>";//." ".$subpcnt[$spcnt];
                                                           $spcnt++;
                                                        }
                                                        else
                                                        {
                                                            $dacnt++;
                                                            echo "<font color='red'>AB</font>";//." ".$subacnt[$sacnt];
                                                            $spcnt++;
                                                         }
                                                    }
                                                    
                                                }
                                            
                                            }
                                            
                                         }
                                         if($spcnt==0) echo "-";
                                                ?>
                                        </b></td>
                         <?php  }?>
                         <td><?php $dtcnt=$dpcnt+$dacnt; echo $dpcnt."/".$dtcnt; ?></td>
                         </tr>
                         <?php }?>
                         <tr>
                             <td><b>Total</b></td>
                         <?php
                             for($j=0;$j<count($sub_list);$j++)
                             {?>
                             <td>
                                <?php 
                                $t=$subp[$j]+$suba[$j];
                                 echo $subp[$j]." / ".$t; ?>
                             </td>
                          <?php }?>
                             <td><?php $uc=$ta+$tp; echo $tp."/".$uc; ?></td>
                          </tr>
                          <tr>
                             <td><b>Percentage :<br>(Present)</b></td>
                             <?php
                             for($j=0;$j<count($sub_list);$j++)
                             {?>
                             <td>
                                <?php 
                                $t=$subp[$j]+$suba[$j];
                                if($subp[$j]!=0)
                                {
                                       echo round($subp[$j]/$t*100,2);
                                       echo "%";
                                }
                                else
                                       echo "0%"; ?>
                             </td>
                 <?php }?>
                             <td><?php 
                                  if(($tp+$ta)!=0)
                                  {
                                      echo round($tp/($tp+$ta)*100,2); echo "%"; 
                                   }
                                   else
                                      echo "0%"; ?></td>
                      </tr>
                   </tbody>
                   </center>
   <?php     }
}
//Overall final report
 if(isset($_REQUEST["final"]))
 {
     if($ta+$tp!=0){?>
                                     <tr>
                                     <td><b>Total Sunday : <?php echo $suncnt; ?></b></td>
                                     <td><b>Extra Holiday : <?php echo $ehdcnt; ?></b></td>
                                     <td><b>Total Present : <?php echo $tp; ?></b></td>
                                     <td><b>Total Absent : <?php echo $ta; ?></b></td>
                                     <td><b>Total Lectures : <?php echo $ta+$tp; ?></b></td>
                                     </tr>
 <?php
 }
 }
 //Semester vise report
 if(isset($_REQUEST["semrp"]))
 {
     $mtotal=0;$ptotal=0;$gt=0;$gp=0;
     $ps=$_SESSION["per_st_sv"];
     //print_r($ps);
       foreach($ps as $p)
       {
       ?>
        <tbody>
       <tr>
       <td><?php echo "<b>Roll No.: </b>".$p->s_rn; ?> </td>
       <td><?php echo "<b>Name: </b>".$p->fnm; ?> </td>
       <td><?php echo "<b>Email Id: </b>".$p->email; ?> </td>
       <td><?php echo "<b>Contact No.: </b>".$p->contact; ?> </td></tr>
       <?php
       }
     ?>
                                     
       <tr>
           <td><b>Month</b></td>
           <td><b>Subject</b></td>
           <td><b>Total Lectures</b></td>
           <td><b>Present</b></td>
           <td><b>Percentage</b></td>
        </tr>
          <?php
          if($_SESSION["sem_stu_wh"]["c_id"]==1 && $_SESSION["sem_stu_wh"]["sem"]==9 || $_SESSION["sem_stu_wh"]["sem"]==10)
          {
              $mtotal=0;$ptotal=0;
              $c=count($sub_list1)+count($sub_list2)-3;
                   for($i=1;$i<=count($mn);$i++)
                    {
                        $k=$i-1;$j=0;
                        $ptotal=0;
                        $mtotal=0;?>
                        <tr>
                        <td rowspan="<?php echo $c; ?>"><?php echo $mn[$k]; ?></td>
                        <?php 
                            $ec=0;
                        foreach($sub_list1 as $s)
                        {
                            if($s->sub_id!="HR" && $s->sub_id!="Marketing" && $s->sub_id!="Finance")
                            {
                                $ec++;
                             $mtotal+=$subpc[$k][$j]+$subac[$k][$j];
                             $ptotal+=$subpc[$k][$j];
                             ?>
                             <td><?php echo $s->sub_id;?></td>
                             <td><?php echo $subpc[$k][$j]+$subac[$k][$j];?></td>
                             <td><?php echo $subpc[$k][$j];?></td>
                             <td><?php 
                                if($subpc[$k][$j]+$subac[$k][$j]!=0){
                                      echo round($subpc[$k][$j]/($subpc[$k][$j]+$subac[$k][$j])*100,2); echo " %"; }
                                else
                                      echo "0 %";
                                ?></td>
                               </tr>
                        <?php } 
                                    if($ec==1)
                                    {
                                        $j1=count($sub_list1)-3;
                                        foreach($sub_list2 as $s)
                                        {
                                             $mtotal+=$subpc[$k][$j1]+$subac[$k][$j1];
                                             $ptotal+=$subpc[$k][$j1];
                                  ?>
                                            <td><?php echo $s->sub_id;?></td>
                                            <td><?php echo $subpc[$k][$j1]+$subac[$k][$j1];?></td>
                                            <td><?php echo $subpc[$k][$j1];?></td>
                                            <td><?php 
                                               if($subpc[$k][$j1]+$subac[$k][$j1]!=0){
                                                     echo round($subpc[$k][$j1]/($subpc[$k][$j1]+$subac[$k][$j1])*100,2); echo " %"; }
                                               else
                                                     echo "0 %";
                                               ?></td>
                                              </tr>
                               <?php $j1++;}
                                     }  
                              $j++; }?>
                               <tr>
                                    <td colspan="2"><center><b>Monthly Total</b></center></td>
                                    <td><b><?php echo $mtotal." Total Lectures"; ?></b></td>
                                    <td><b><?php echo $ptotal." Total Present"; ?></b></td>
                                    <td><b><?php 
                                            if($mtotal!=0){
                                                    echo round($ptotal/($mtotal)*100,2); echo " %"; }
                                             else
                                                 echo "0 %";
                                             ?></b></td>
                                </tr>
                                         <?php 
                                         $gt+=$mtotal;
                                                $gp+=$ptotal;
                                            }?>
                                            <tr style="font-size: medium;color: red;">
                                                <td colspan="2"><center><b>Final Result</b></center></td>
                                                <td><b><?php echo $gt." Total Lectures";?></b></td>
                                                <td><b><?php echo $gp." Total Present"; ?></b></td>
                                                <td><b><?php
                                                if($gt!=0){
                                                echo round($gp/$gt*100,2); echo " %"; }
                                                else
                                                {
                                                    echo "0%";
                                                }?></b></td>
                                            </tr>
                                            <tr style="font-size: large;color: blue;">
                                                <td colspan="5"><center><b>
                                                    <?php
                                                    if(($gp/$gt*100)>=75)
                                                    {
                                                        echo "Good Result..<i class='fa fa-smile-o'></i>";
                                                    }
                                                    else
                                                    {
                                                        echo "Need more ";
                                                        echo 75-round(($gp/$gt*100),2);
                                                        echo " % attendance &#9785;";
                                                    }
                                                    ?>
                                                </b> </center>
                                                </td>
                                            </tr>
                                     </tbody>
  <?php        }
          else
          {?>                           
                       <?php
                       //MSC
                                         $mtotal=0;$ptotal=0;
                                         for($i=1;$i<=count($mn);$i++)
                                         {
                                             $k=$i-1;$j=0;
                                             $ptotal=0;
                                             $mtotal=0;?>
                                         <tr>
                                             <td rowspan="<?php echo count($sub_list); ?>"><?php echo $mn[$k];?></td>
                                            <?php  foreach($sub_list as $s)
                                             {
                                                $mtotal+=$subpc[$k][$j]+$subac[$k][$j];
                                                $ptotal+=$subpc[$k][$j];
                                               
                                             ?>
                                            
                                             <td><?php echo $s->sub_id;?></td>
                                             <td><?php echo $subpc[$k][$j]+$subac[$k][$j];?></td>
                                             <td><?php echo $subpc[$k][$j];?></td>
                                             <td><?php 
                                             if($subpc[$k][$j]+$subac[$k][$j]!=0){
                                             echo round($subpc[$k][$j]/($subpc[$k][$j]+$subac[$k][$j])*100,2); echo " %"; }
                                             else
                                                 echo "0 %";
                                             ?></td>
                                             </tr>
                                             <?php $j++;} ?>
                                             <tr>
                                                 <td colspan="2"><center><b>Monthly Total</b></center></td>
                                                <td><b><?php echo $mtotal." Total Lectures"; ?></b></td>
                                                <td><b><?php echo $ptotal." Total Present"; ?></b></td>
                                                <td><b><?php 
                                            if($mtotal!=0){
                                                    echo round($ptotal/($mtotal)*100,2); echo " %"; }
                                             else
                                                 echo "0 %";
                                             ?></b></td>
                                            </tr>
                                         <?php 
                                         $gt+=$mtotal;
                                                $gp+=$ptotal;
                                            }?>
                                            <tr style="font-size: medium;color: red;">
                                                <td colspan="2"><center><b>Final Result</b></center></td>
                                                <td><b><?php echo $gt." Total Lectures";?></b></td>
                                                <td><b><?php echo $gp." Total Present"; ?></b></td>
                                                <td><b><?php 
                                                if($gt!=0){
                                                echo round($gp/$gt*100,2); echo " %"; }
                                                else
                                                {
                                                    echo "0%";
                                                }
                                                ?></b></td>
                                            </tr>
                                            <tr style="font-size: large;color: blue;">
                                                <td colspan="5"><center><b>
                                                    <?php
                                                    if(($gp/$gt*100)>=75)
                                                    {
                                                        echo "Good Result..<i class='fa fa-smile-o'></i>";
                                                    }
                                                    else
                                                    {
                                                        echo "Need more ";
                                                        echo 75-round(($gp/$gt*100),2);
                                                        echo " % attendance &#9785;";
                                                    }
                                                    ?>
                                                </b> </center>
                                                </td>
                                            </tr>
                                     </tbody>
          <?php } ?>
 <?php

 }
 //Subject vise report
if(isset($_REQUEST["subrp"]))
{
    if(isset($dtdata1))
    {
            foreach($fnm as $f)
            {
                $f_nm=$f->fac_name;
                $c=$f->contact;
            }
            foreach ($dt_res as $d)
            {
                $snm=$d->sub_name;
                break;
            }
            foreach($dtdata1 as $d)
            {
                $d1= strtotime($d->date);
                $y=date("F Y",$d1);break;
            }
    ?>
         <tbody>
             <tr>
                 <td colspan="<?php echo count($dtdata1)+7; ?>"><center><b><?php echo $snm." <b>( $y )</b>"; ?></b></center></td>
             </tr>
             <tr>
                 <td colspan="<?php echo count($dtdata1)+7; ?>"><b>Fcaulty : </b><?php echo $f_nm."&emsp;&emsp;<b>Contact No. </b>".$c; ?></td>
                 
             </tr>
          <tr>
              <td><b>Roll No</b></td>
                <td><b>Name</b></td>
                <td><b>Division</b></td>
                <td><b>Gender</b></td>
                <?php foreach ($dtdata1 as $d)
                  {?>
                  <td><b><?php 
                        $d1=strtotime($d->date);
                        echo date("d",$d1); 
                  ?></b></td>
                      <?php }?>
                  <td><b>Total Present</b></td>
                  <td><b>Total</b></td>
                  <td><b>Percentage</b></td>
          </tr>
         
              <?php
              $tot=0;
              foreach($sub_rp_rn as $srn)
              {
                  $tot=0;
                  ?>
              <tr>
                  <td><?php echo $srn->s_rn;?></td>
                  <td><?php echo $srn->fnm." ".$srn->lnm;?></td>
                  <td><?php echo strtoupper($srn->division);?></td>
                  <td><?php if($srn->s_gen==1) echo "F"; else echo "M";?></td>
                   
                  <?php 
                  foreach($dtdata1 as $dt)
                  {?>
                  <td>
                  <?php
                        foreach($dt_res as $dr) 
                         {
                                      if($dr->s_enrl==$srn->s_enrl)
                                      {
                                          if($dr->date==$dt->date)
                                          {
                                              if($dr->present==1)
                                              {
                                                  echo "<font color='green'>P</font>";
                                                  $tot++;
                                              }
                                              else echo "<font color='red'>AB</font>";
                                          }
                                      } 
                         }?>
                      </td>
            <?php      }?>
                      <td><b><?php echo $tot; ?></b></td>
                      <td><b><?php echo count($dtdata1); ?></b></td>
                      <td><b><?php if($tot!=0) {echo round($tot/count($dtdata1)*100,2); echo "%"; } else echo "0%"; ?></b></td>
                  </tr>
                  <?php }?>
          </tbody>
 <?php
}
else
{
    echo "<center><h3>There are no lectures held in this Month.....</h3></center>";
}
}
//Distribute subject faculty list
if(isset($_REQUEST["crs_fac"]))
{?>
    <option value="">Select Faculty</option>
         <?php
	foreach($sub_fac as $sf)
	{
	?>
 <option value="<?php echo $sf->ufac_id;?>"><?php echo $sf->fac_name;?></option>
                <?php
                    }
}
//Subject list according to course
if(isset($_REQUEST["crs_sub"]))
{?>
    <option value="">Select Subject</option>
         <?php
	foreach($sub_sub as $ss)
	{
                        if($ss->sub_name!="HR" && $ss->sub_name!="Marketing" && $ss->sub_name!="Finance")
                       {
	?>
                            <option value="<?php echo $ss->usub_id;?>"><?php echo $ss->sub_name;?></option>
                <?php
                        }
                   }
                    if($_REQUEST["crs_sub"]==1)
                    {
                        foreach($sube_sub as $ss)
                        {
	?>
                            <option value="<?php echo $ss->uesub_id." ue";?>"><?php echo $ss->sub_name;?></option>
                <?php
                        }
                    }
}

if(isset($_REQUEST["crs_sub2"]))
{?>
    <option value="">Select Subject</option>
         <?php
	foreach($sub_sub as $ss)
	{
                        if($ss->sub_name!="HR" && $ss->sub_name!="Marketing" && $ss->sub_name!="Finance")
                       {
	?>
                            <option value="<?php echo $ss->usub_id;?>"><?php echo $ss->sub_name;?></option>
                <?php
                       }
                   }
                    if($_REQUEST["crs_sub2"]==1)
                    {
                        foreach($sube_sub as $ss)
                        {
	?>
                            <option value="<?php echo $ss->uesub_id." ue";?>"><?php echo $ss->sub_name;?></option>
                <?php
                        }
                    }
}
//Holiday date validation
if(isset($_REQUEST["dt"]))
{
    $tdt=date("Y-m-d");
    if($_REQUEST["dt"]>$tdt)
            echo $_REQUEST["dt"];
}
//Checking attendance date
if(isset($_REQUEST["atdt"]))
{
    $f=0;
        foreach($hddtl as $h)
        {
            if($h->holiday=='1')
            {
               echo "It's Holiday......";
               $f=1;
               break;
            }
        }
        if($f==0)
        {
            $td=date("Y-m-d");
            if($_REQUEST["atdt"]>$td)
            {
               echo "Future attendance is not possible";
            }
        }
 }
 
 //According to subject fetching facultyname
if(isset($_REQUEST["sub"]))
{
    foreach ($fac as $f)
    {
        echo $f->fac_name;
        $_SESSION["my_fac"]=$f->fac_name;
    }
}
if(isset($_REQUEST["crs_sub1"]))
{?>
    <option value="">Select Subject</option>
         <?php
	foreach($sub_sub1 as $ss)
	{
	?>
            <option value="<?php echo $ss->usub_id;?>"><?php echo $ss->sub_name;?></option>
                <?php
	}
        if($_REQUEST["crs_sub1"]==1)
        {
            foreach($sube_sub2 as $ss)
            {
            ?>
                <option value="<?php echo $ss->uesub_id." ue";?>"><?php echo $ss->sub_name;?></option>
                    <?php
            }
        }
}
//View faculty
if(isset($_REQUEST["v_fac"]))
{ 
    $cnt=0;
    ?>
      <thead>
                  
                       <th>S. No. :</th>
                       <th>Name :</th>
                       <th>Email :</th>
                       <th>Role :</th>
                       <th>Edit :</th>
                       <th>View :</th>
                       <th>Delete :</th>
                         
         </thead>
    <?php
     foreach($sub_fac1 as $sf1)
     {
          if($sf1->fac_name!="None")
          {
                $cnt++;
                ?>
                <tr>
                   <td><?php echo $cnt; ?></td>
                   <td><?php echo $sf1->fac_name; ?></td>
                   <td><?php echo $sf1->email; ?></td>
                   <td><?php  if($sf1->role==2){
                                            echo "Faculty";
                                       }
                                       else {
                                                echo "Admin";
                                       }; ?></td>
                   <td><center><a href="fac_update.php?facup=<?php echo $sf1->ufac_id; ?>"><button class="btn btn-primary btn-circle" type="button"><i class="fa fa-refresh fa-2x" style="color: white;"></i></button></a></td>
                   <td><center><a href="view_fac.php?facvm=<?php echo $sf1->ufac_id; ?>"><button class="btn btn-success btn-circle" type="button"><i class="fa fa-info-circle fa-2x" style="color: white;"></i></a></button></td>
                   <td><center><a href="view_faculty.php?facdel=<?php echo $sf1->ufac_id; ?>"><button class="btn btn-danger btn-circle" type="button"><i class="fa fa-trash-o fa-2x" style="color: white;"></i></a></button></td>
                 </tr> 
                 <?php
                            }
                   }
                   ?>
                   <?php
}
//Distribute Subject
if(isset($_REQUEST["prt_sub"]))
{
    foreach($prt_sub as $ps)
    {
        echo $ps->sub_name;
    }
}
//Combine Subject
if(isset($_REQUEST["csid"]))
{
    foreach($csfac as $cs)
    {
        echo $cs->fac_name;
    }
}
if(isset($_REQUEST["csub"]))
{
    ?><td colspan='2'><?php 
        echo "<b>Do you want to distribute the subject or Combine the subject?<br><br>";
?>
  
 <input type="radio" id="ans" name="ans" value="1" onclick="return page(this.value);">Distribute&nbsp;&nbsp;
 <input type="radio" id="ans" name="ans" value="2" onclick="return page(this.value);">Combine</td></b>
<?php
}

if(isset($_REQUEST["crs_spec"]))
{?>
    
       <thead>
              <th>Roll No.</th>
              <th>Name</th>
              <th>Gender</th>
              <?php
              foreach($spec_res as $k)
              {
                   ?>
                    <th><?php echo $k->sub_name; ?></th>
                    <?php 
               } 
               ?>
          </thead>
          <tbody>
                <?php
                        $assl=$_SESSION["ass_stu"];
                        $cnt1=0;
                        foreach($assl as $a)
                        {
                            $cnt1++;
                                        ?>
                            <tr>
                                  <td><?php echo $a->s_rn; ?></td>
                                  <td><?php echo $a->fnm." ".$a->lnm; ?></td>
                                  <td><?php if($a->s_gen=='0') echo "M"; else echo "F";?></td>
                                  <?php
                                             $size=0;
                                             foreach($spec_res as $s)
                                             {
                                                $size++;
                                             ?>
                                                    <td><center><input type="checkbox" id="<?php echo "ch".$size.$cnt1; ?>" name="<?php echo "ch".$size.$cnt1; ?>"
                                            <?php
                                            if(isset($_SESSION["ass_stu"]))
                                            {
                                                foreach($_SESSION["ass_stu"] as $sn)
                                                {
                                                    if($sn->s_enrl==$a->s_enrl)
                                                    {
                                                        if($sn->usub_id==$s->usub_id)
                                                        {
                                                            echo "checked";
                                                         }
                                                     }
                                                }
                                            }
                                            ?>
                                             >
                                      <input type="hidden" value="<?php echo $a->s_enrl; ?>" id="<?php echo "sp".$cnt1; ?>" name="<?php echo "sp".$cnt1; ?>">
                                      <input type="hidden" value="<?php echo $a->usub_id; ?>" id="<?php echo "sp1".$cnt1; ?>" name="<?php echo "sp1".$cnt1; ?>">
                                      <input type="hidden" value="<?php echo $cnt1; ?>" id="total" name="total">
                                      </td>
                                            <?php
                                   }
                                             ?>
                                  </tr>
                             <?php
                              }
                              ?>
                                 
                            <tr><td colspan="6">
                            <center>
                                    <button type="submit" id="ass_sub_submit" name="ass_sub_submit" value="submit"  class="btn btn-primary"style="height: 100%; width: 30%;" >Submit</button>
                             </center> </td></tr>
                         
<?php        
}
//Distribute subject : Partition according to selected number
if(isset($_REQUEST["part"]))
{
    $_SESSION["partd"]=$_REQUEST["part"];
        if($_REQUEST["part"]==2){
 ?>
          
          <td><b>Distributed Subject :<input type="text" id="s1" name="s1" class="form-control" disabled><br>
                   <input type="text" id="s2" name="s2" class="form-control" disabled></b></td>
          <td colspan="2">
                   <b>Select Faculty :
                   <select class="form-control" id="fac1" name="fac1" >
                   </select><br>
                   <select class="form-control" id="fac2" name="fac2" >
                   </select></b>
         </td>
 <?php
    }
 else {?>
          <td><b>Distributed Subject :<input type="text" id="s1" name="s1" class="form-control" disabled><br>
                   <input type="text" id="s2" name="s2" class="form-control" disabled><br>
                   <input type="text" id="s3" name="s3" class="form-control" disabled></b></td>
          <td colspan="2">
                   <b>Select Faculty :
                   <select class="form-control" id="fac1" name="fac1" >
                   </select><br>
                   <select class="form-control" id="fac2" name="fac2" >
                   </select><br>
                   <select class="form-control" id="fac3" name="fac3" >
                   </select></b>
         </td>
    <?php
    }
}
//Subject vise & percentage vise report
if(isset($_REQUEST["subrp1"]))
{
    foreach ($dtdata as $d)
    {
        $snm=$d->sub_name;
        $f_nm=$d->fac_name;
        $c=$d->contact;
        break;
    }
   $y=date("F Y",strtotime($dt1));
   if($totdt!=0)
   {
    ?>
         <tbody>
             <tr>
                 <td colspan="7"><center><b><?php echo $snm." <b>( $y )</b>"; ?></b></center></td>
             </tr>
             <tr>
                 <td colspan="7"><b>Fcaulty : </b><?php echo $f_nm."&emsp;&emsp;<b>Contact No. </b>".$c; ?></td> 
             </tr>
          <tr>
              <td><b>Roll No</b></td>
              <td><b>Name</b></td>
              <td><b>Division</b></td>
              <td><b>Gender</b></td>
              <td><b>Total Present</b></td>
              <td><b>Total</b></td>
              <td><b>Percentage</b></td>
          </tr>
         
              <?php
              $tot=0;$i=0;
              foreach($sub_rp_rn as $srn)
              {
                  if(count($totdt!=0))
                  {
                        $avg=$parr[$i]/count($totdt)*100;
                        if($avg>=$ll && $avg<=$ul)
                        {
                        ?>
                    <tr>
                        <td><?php echo $srn->s_rn;?></td>
                        <td><?php echo $srn->fnm." ".$srn->lnm;?></td>
                        <td><?php echo strtoupper($srn->division);?></td>
                        <td><?php if($srn->s_gen==1) echo "F"; else echo "M";?></td>
                        <td><?php echo $parr[$i];?></td>
                        <td><?php echo count($totdt);?></td>
                        <td><?php echo round($avg,2)." %";?></td>
                    </tr>
                    <?php 
                        }
                        $i++;
                   }
                }
   }
   else {
       echo "<center><h3>There are no lectures held in this Month.....</h3></center>";
   }?>
          </tbody>
 <?php
}
//Add special subject
if(isset($_REQUEST["add_spec_sub"]))
{
    ?>
                                            <label>Specialization Categories of MBA</label>
                                            <select class="form-control" id="as1" name="as1">
                                                <option value="">Select Specialization Categories</option>
                                                <?php
                                                foreach($spec as $s)
                                                {?>
                                                <option value="<?php echo $s->usub_id;?>"><?php echo $s->sub_name;?></option>  
                                                <?php
                                                }
                                                ?>
                                            </select>
 <?php   
}

//Batch vise Subject Report
if(isset($_REQUEST["batch"]))
{
    if(isset($dtdata1))
    {
            foreach($fnm as $f)
            {
                $f_nm=$f->fac_name;
                $c=$f->contact;
                $snm=$f->sub_name;
                break;
            }
            foreach($dtdata1 as $d)
            {
                $d1= strtotime($d->date);
                $y=date("F Y",$d1);break;
            }
    ?>
         <tbody>
             <tr>
                 <td colspan="<?php echo count($dtdata1)+7; ?>"><center><b><?php echo $snm." <b>( $y )</b>"; ?></b></center></td>
             </tr>
             <tr>
                 <td colspan="<?php echo count($dtdata1)+7; ?>"><b>Faculty : </b><?php echo $f_nm."&emsp;&emsp;<b>Contact No. </b>".$c; ?></td>
                 
             </tr>
           <tr>
              <td><b>Roll No</b></td>
              <td><b>Name</b></td>
              <td><b>Division</b></td>
              <?php foreach($dtdata1 as $dd)
                          {?>
              <td><?php echo $dd->date; ?></td>
              <?php } ?>
          </tr>
          <?php 
          if(isset($batch_stu_data))
          {
          foreach ($batch_stu_data as $bd)
          {?>
          <tr>
              <td><?php echo $bd->s_rn;?></td>
              <td><?php echo $bd->fnm;?></td>
              <td><?php echo $bd->division;?></td>
              <?php 
                  foreach($dtdata1 as $dt)
                  {?>
                  <td>
                  <?php
                        foreach($batch_stu_data as $dr) 
                         {
                                      if($dr->s_enrl==$bd->s_enrl)
                                      {
                                          if($dr->date==$dt->date)
                                          {
                                              if($dr->present==1)
                                              {
                                                  echo "<font color='green'>P</font>";
                                              }
                                              else echo "<font color='red'>AB</font>";
                                          }
                                      } 
                         }?>
                      </td>
            <?php      }?>
          </tr>
          <?php }
          }
          else {
            echo "No Data Available";
          }?>
       </tbody>
   <?php
}
}
//Divide Batches
if(isset($_REQUEST["div_batch"]))
{?>
<thead>
              <th>Roll No.</th>
              <th>Name</th>
              <th>Gender</th>
              <?php
              foreach($batch as $k)
              {
                   ?>
                    <th><?php echo $k->batch_name; ?></th>
                    <?php 
               } 
               ?>
          </thead>
          <tbody>
                <?php
                        //$assl=$_SESSION["ass_stu"];
                        $cnt1=0;
                        foreach($batch_stu_data as $a)
                        {
                            $cnt1++;
                                        ?>
                            <tr>
                                  <td><?php echo $a->s_rn; ?></td>
                                  <td><?php echo $a->fnm." ".$a->lnm; ?></td>
                                  <td><?php if($a->s_gen=='0') echo "M"; else echo "F";?></td>
                                  <?php
                                             $size=0;
                                             foreach($batch as $s)
                                             {
                                                $size++;
                                             ?>
                                                    <td><center><input type="checkbox" id="<?php echo "ch".$size.$cnt1; ?>" name="<?php echo "ch".$size.$cnt1; ?>"
                                            <?php
                                            if(isset($batch_stu_data))
                                            {
                                                foreach($batch_stu_data as $sn)
                                                {
                                                    if($sn->s_enrl==$a->s_enrl)
                                                    {
                                                        if($sn->batch_id==$s->batch_id)
                                                        {
                                                            echo "checked";
                                                         }
                                                     }
                                                }
                                            }
                                            ?>
                                             >
                                      <input type="hidden" value="<?php echo $a->s_enrl; ?>" id="<?php echo "sp".$cnt1; ?>" name="<?php echo "sp".$cnt1; ?>">
                                      <input type="hidden" value="<?php echo $a->batch_id; ?>" id="<?php echo "sp1".$cnt1; ?>" name="<?php echo "sp1".$cnt1; ?>">
                                      <input type="hidden" value="<?php echo $cnt1; ?>" id="total" name="total">
                                      </td>
                                            <?php
                                   }
                                             ?>
                                  </tr>
                             <?php
                              }
                              ?>
                                 
                            <tr><td colspan="6">
                            <center>
                                    <button type="submit" id="batch_submit" name="batch_submit" value="submit"  class="btn btn-primary"style="height: 100%; width: 30%;" >Submit</button>
                             </center> </td></tr>
<?php
}
?>