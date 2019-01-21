<?php
        include './Database/Controler.php';
        include 'role.php';  
?>  
<script src="https://code.jquery.com/jquery-1.12.4.js">  </script>
<script language="javascript" type="text/javascript">
function getStu(div)
{
	//var sub=document.getElementById("subject").value;
                    //alert("hii");
                   if(div)
                   {
                         $.ajax({
                                        type:"GET",
                                        url:"dropdown.php",
                                        data:"div_batch="+div,
                                        success:function(result)
                                        {
                                             $("#DataTables_Table_0").html(result);
                                        }
                                   });
                    }
                                                                             
}

</script>
<h2>Divide Batch</h2>   

</div>
</div>
                 <!-- /. ROW  -->
<div class="row">
<div class="col-md-12">

<div class="panel panel-default">
    <div class="panel-body">
          <div class="table-responsive">
          <form method="post">
                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                <thead>
                <tr>
                    <td><b>Select Division :
                                <select class="form-control" id="division" name="division" onchange="return getStu(this.value)">
                            <option value="">Select Division</option>
                            <option value="A">A</option>
                            <option value="B">B</option>
                            <option value="C">C</option>
                        </select></b></td>
                    </tr> 
                   </table>
                    <table class="table table-bordered table-striped table-hover js-basic-example dataTable" id="DataTables_Table_0" role="grid" aria-describedby="DataTables_Table_0_info">
                    
                    </table>
                   </form>
             </div>
           </div>
           </div>
           </div>
          </div>
       </div>
               
    </div>
  </div>
<?php
    include 'footer.php';
?>