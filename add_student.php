<?php
        include './Database/Controler.php';
        include 'role.php';
?>
          
                 <!-- /. ROW  -->
<script language="javascript" src="./assets/js/validation.js"></script>
<script language="javascript">
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
      if(isEmpty(f1.firstname.value,"the First Name.."))
      {
        alert(errMsg);
        f1.firstname.focus();
        return (false);
      }
      if(isEmpty(f1.lastname.value,"the Last Name.."))
      {
        alert(errMsg);
        f1.lastname.focus();
        return (false);
      }
      
      if(isEmpty(f1.s_rn.value,"the Roll Number.."))
      {
        alert(errMsg);
        f1.s_rn.focus();
        return (false);
      }
      if(isEmpty(f1.semr.value,"the Semester.."))
      {
        alert(errMsg);
        f1.semr.focus();
        return (false);
      }
         if(isEmpty(f1.email.value,"the Email Id.."))
      {
        alert(errMsg);
        f1.email.focus();
        return (false);
      }
       if(isEmpty(f1.contact.value,"the Contact Number.."))
      {
        alert(errMsg);
        f1.contact.focus();
        return (false);
      }
      if(isEmpty(f1.c_idr.value,"the Stream.."))
      {
        alert(errMsg);
        f1.c_idr.focus();
        return (false);
      }
      if(isEmpty(f1.division.value,"the Division.."))
      {
        alert(errMsg);
        f1.division.focus();
        return (false);
      }
  }
</script>                 
  <?php
  if($_SESSION["role"]==1)
  {
  ?>              
  <h2>Student Registration</h2>   
                        
                       
                    </div>
                </div>
                 <!-- /. ROW  -->
                 
                  <div class="row">
                <div class="col-md-12">
<div class="panel panel-default">
                        
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <form method="post" role="form" enctype="multipart/form-data" onSubmit="return validate_form(this)">
                                    
                                        <div class="form-group">
                                            <label>First Name:</label>
                                            <input class="form-control" id="firstname" name="firstname" placeholder="Enter First Name"/>
                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Last Name:</label>
                                            <input class="form-control" id="lastname" name="lastname" placeholder="Enter Last Name" />
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Roll No. :</label>
                                            <input class="form-control" id="s_rn" name="s_rn" placeholder="Enter Roll Number" onKeyPress="num_check(event)"/>
                                            
                                        </div>
                                       <div class="form-group">
                                            <label>Gender:</label>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" id="s_gen" name="s_gen" value="0"/>Male
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" id="s_gen" name="s_gen" value="1"/>Female
                                                </label>
                                            </div>
                                            
                                        </div>
                                       <div class="form-group">
                                            <label>Email Id :</label>
                                            <input class="form-control" id="email" name="email" placeholder="Enter Email Id" pattern="^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$"/>
                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Contact Number. :</label>
                                            <input class="form-control" id="cn" name="cn" maxlength="10" placeholder="Enter Contact Number" onKeyPress="num_check(event)"/>
                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Select Stream:</label>
                                            <select class="form-control" id="c_idr" name="c_idr">
                                                <option value="">Select Stream</option>
                                   <?php if(isset($crs)){$cnt=0;foreach($crs as $c){$cnt++; ?>
                                          
                                          <option value="<?php echo $c->c_id; ?>"><?php echo $c->cname; ?></option>
                                          
                                    <?php if($cnt=='2'){break;}}}?>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Select Semester:</label>
                                            <select class="form-control" id="semr" name="semr" style="">
                                     <option value="">Select Semester</option>
                                    <option value="1">Sem 1</option>
                                    <option value="2">Sem 2</option>
                                    <option value="3">Sem 3</option>
                                    <option value="4">Sem 4</option>
                                    <option value="5">Sem 5</option>
                                    <option value="6">Sem 6</option>
                                    <option value="7">Sem 7</option>
                                    <option value="8">Sem 8</option>
                                    <option value="9">Sem 9</option>
                                    <option value="10">Sem 10</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Select Division:</label>
                                            <select class="form-control" id="division" name="division" style="">
                                     <option value="">Select Division</option>
                                    <option value="a">Div A</option>
                                   <option value="b">Div B</option>
                                   <option value="c">Div C</option>
                                            </select>
                                        </div>
                
                                        <center>
                          <button type="submit" id="submit" name="R_submit" value="Register" class="btn btn-primary" >Register</button>
                         
                                        </center>
                      </form>
                            
                            
      
      
</center>
<?php
  }
 else {
     ?>
<div class="row">
    <div class="col-md-12"></div>
    <img src="img/ad.jpg">
    <?php
    
 }
    include 'footer.php';
?>

