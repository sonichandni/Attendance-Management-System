<?php
    include './Database/Controler.php';
    include 'role.php';
    $d1=$_REQUEST["msc_s1"];
    $tdata=  unserialize($d1);
    foreach ($tdata as $k=>$v)
    {
         if($k=="time")
         {
                   $ttdata=$v;
          }
          else if($k=="div")
          {
                   $divdata=$v;
          }
          else
          {
                    $subdata=$v;
          }
     }
?>


    <h2>Generate Schedule</h2>
    <table class="table table-striped table-bordered table-hover" id="dataTables-example1">
      <thead>
                                        <form method="post" role="form"   enctype="multipart/form-data">
                                   
                                        <tr>
                                            <th>Time</th>
                                            <th>Div</th>
                                            <th>Monday</th>
                                            <th>Tuesday</th>
                                            <th>Wednesday</th>
                                            <th>Thursday</th>
                                            <th>Friday</th>
                                            <th>Saturday</th>
                                        </tr>
                                    </thead>
                                    
                                    <tbody>
                                        <tr>
                                            <!--<td style="width:7%;"><input type="text" disabled value="" style="border-color: transparent;background-color: transparent;"></td>   -->                                         
                                            <?php 
                                            $cnt=0;
                                                for($i=0;$i<count($ttdata);$i++)
                                                {
                                                    
                                            ?>
                                            <td rowspan="<?php echo count($divdata); ?>" style="width:7%;"><input type="text" disabled value="<?php echo $ttdata[$i]; ?>" style="border-color: transparent;background-color: transparent; width: 100%;"></td>
                                            <?php for($j=0;$j<count($divdata);$j++)
                                                    {?>
                                            <td style="width:2%;"><input type="text" disabled value="<?php echo $divdata[$j]; ?>" style="border-color: transparent;background-color: transparent;width: 100%"></td>
                                                    <?php  for($t=0;$t<6;$t++){ $cnt++;?>
                                                    <td><select id="<?php echo "sub".$cnt?>" name="<?php echo "sub".$cnt?>">
                                                        <?php foreach($subdata as $s){?>
                                                    <option value="<?php echo $s->s_id;?>"><?php echo $s->sub_id;?></option>
                                            <?php }?>
                                                    </select><?php echo $cnt;?></td><?php }?>
                                        </tr>  
                                                    <?php }}?>
                                    
                                      <tr><td colspan="8" style="width:2%;"><center>
                                          <button type="submit" id="submit" name="FT_submit" value="submit"  class="btn btn-primary"style="height: 100%; width: 30%;" >Submit</button>
                                      </center> </td></tr>  
                                    </tbody>
                                        </form>
 </table>


<?php
include 'footer.php';
?>