<?php
        include './Database/Controler.php';
        include 'role.php';  
?>  
<script src="https://code.jquery.com/jquery-1.12.4.js">  </script>
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>-->
    <script language="javascript" type="text/javascript">
        
        function getYear(crs)
        {
	var crs=crs;
                   if(crs)
                   {
                            $.ajax({
                                            type:"GET",
                                            url:"dropdown.php",
                                            data:"crs="+crs,
                                            success:function(result)
                                            {
                                                      $("#year").html(result);
                                            }
                                      });
                  }
        }
        function getSemester(yr)
        {
	var yr=yr;
                   if(yr)
                   {
                             $.ajax({
                                             type: "GET",
                                             url:"dropdown.php",
                                             data:"yr="+yr,
                                             success:function(result)
                                             {
                                                    $("#semester").html(result);
                                             }
		});
                             $.ajax({
                                             type: "GET",
                                             url:"dropdown.php",
                                             data:"year="+yr,
                                             success:function(result)
                                             {
                                                    $("#division").html(result);
                                             }
		});
                   }
         }
        function getSubject(sem)
        {
                    var sem=sem;
                    if(sem)
                    {
                                    $.ajax({
                                                    type: "GET",
                                                    url:"dropdown.php",
                                                    data:"sem="+sem,
                                                    success:function(result)
                                                    {
                                                        $("#subject").html(result);
                                                    }
                                    });
                    }
                    
        }
        function getFac(sub)
        {
                   var sub=sub;
                   var cid=document.getElementById("c_id").value;
                   var sem=document.getElementById("semester").value;
                   if(sub)
                   {
                                    $.ajax({
                                                    type: "GET",
                                                    url:"dropdown.php",
                                                    data:"sub="+sub,
                                                    success:function(result)
                                                    {
                                                        $("#fac").val(result);
                                                    }
                                              });
                   }
                   if(sem==5 && cid==0 && sub==40 || sub==41)
                   {
                                    $.ajax({
                                                    type: "GET",
                                                    url:"dropdown.php",
                                                    data:"nbatch="+sem,
                                                    success:function(result)
                                                    {
                                                        $("#new_batch").html(result);
                                                    }
                                    });
                   }
         }
         function checkhd(dt)
         {
                    var atdt=dt;
                    $.ajax({
		type: "GET",
		url:"dropdown.php",
		data:"atdt="+atdt,
		success:function(result)
		{
                                                if(result!="")
                                                          alert(result);
                                      }
                              });
                   
         }
                        
     </script>
     <script language="javascript" src="./assets/js/validation.js"></script>
<script language="javascript">



function str_check(event)
{
    code=event.keyCode;
    if(!((code>=65 && code<=90) || (code>=97 && code<=122) || (code==32)))
    {
        alert("Please Enter Only Characters");
        event.keyCode=0;
    }
}
function num_check(event)
{
    code=event.keyCode
    if(!((code>=48 && code<=57)))
    {
         alert("Please Enter Only Numbers"); 
         event.keyCode=0; 
    } 
 }

  function validate_form(f1)
  {
       if(isEmpty(f1.academic_yr.value,"Academicr year"))
      {
        alert(errMsg);
        f1.academic_yr.focus();
        return (false);
      }
      if(isEmpty(f1.c_id.value,"the Stream"))
      {
        alert(errMsg);
        f1.c_id.focus();
        return (false);
      }
       if(isEmpty(f1.year.value,"the Year"))
      {
        alert(errMsg);
        f1.year.focus();
        return (false);
      }
      
       if(isEmpty(f1.semester.value,"the Semester"))
      {
        alert(errMsg);
        f1.semester.focus();
        return (false);
      }
       if(isEmpty(f1.subject.value,"the Subject"))
      {
        alert(errMsg);
        f1.subject.focus();
        return (false);
      }
       if(isEmpty(f1.dt.value,"the Date"))
      {
        alert(errMsg);
        f1.dt.focus();
        return (false);
      }
       if(isEmpty(f1.division.value,"the Division"))
      {
        alert(errMsg);
        f1.division.focus();
        return (false);
      }
      
 }
  </script>
  

<h2>Attendance Details</h2>   

</div>
</div>

<div class="row">
<div class="col-md-12">
<div class="panel panel-default">
                        
    <div class="panel-body">
    <div class="table-responsive">
    <form method="post" onSubmit="return validate_form(this)">
         <table class="table table-striped table-bordered table-hover" id="dataTables-example">
         <thead>
         <td>
              <b>Select Academic Year:<select class="form-control" id="academic_yr" name="a_yr" >
              <?php
                       if (isset($a_y))
                       {
                             foreach ($a_y as $y)
                             {
                        ?>
                                    <option value="<?php echo $y->ac_year_id;?>"><?php echo $y->ac_year; ?></option>
                                             <?php
                             }
                        }
               ?>
               </select></b>
         </td>
                               
         <td>
            <b>Select Stream:<select class="form-control" id="c_id" name="c_id" onChange="return getYear(this.value)">
            <option value="">Select Stream</option>
            <?php if(isset($crs)){$cnt=0;foreach($crs as $c){$cnt++; ?>
            <option value="<?php echo $c->c_id; ?>"><?php echo $c->cname; ?></option>
            <?php if($cnt=='2'){break;}}}?>
            </select></b>
         </td>
         </tr>
         
         <tr>
             <td><b>Select Year :<select id="year" class="form-control" name="year" onChange="return getSemester(this.value)">
             </select></b></td>
             <td>
                <b>Select Semester:<select class="form-control" id="semester" name="semester" onChange="return getSubject(this.value)">
                </select></b> 
             </td>
         </tr>
         
         <tr>
             <td><b>Select Subject :<select class="form-control" id="subject" name="subject" onchange="return getFac(this.value)">
             </select></b></td>
             
             <td><b>Faculty Name:<input type="text" name="fac" id="fac" class="form-control" disabled=""></b></td>
         </tr>
         <tr>
             <td id="new_batch" colspan="2"></td>
         </tr>
         <tr>
             <td><b>Select Date:<input class="form-control" type="Date" name="dt" id="dt" onchange="return checkhd(this.value)">
             </b></td>
             
             <td colspan="3">
                   <div class="form-group">
                   <b>Select Division:
                   <select class="form-control" id="division" name="division">
                   <option value="">Select Division</option> 
                   </select>
                   </div>
              </td>
         </tr>                       
         </thead>
         <tr>
             <td colspan="5"><center>
               <button type="submit" id="act_submit" name="act_submit" value="submit"  class="btn btn-primary"style="height: 100%; width: 30%;" >Submit</button>
               </center></td>
         </tr> 
         </table>
        </form>
        </div>
     </div>
     </div>
                    <!--End Advanced Tables -->
     </div>
        </div>
        </div>
        </div>
<?php
    include 'footer.php';
?>