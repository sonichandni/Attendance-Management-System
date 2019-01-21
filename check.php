<?php
        include './Database/Controler.php';
        include 'role.php'; 
?>  
<script>
 function mf()
 {
	var nm1=prompt("Enter code");
                   if(nm1)
                   {
                            $.ajax({
                                                type:"GET",
                                                url:"./Database/Controler.php",
                                                data:"ch="+nm1,
                                                success:function(result)
                                                {
                                                        $("#nm").html(result);
                                                }
                                      });
                   }			
 }
 </script>
    
</script>
<form method="post">
<button type="submit" id="chandni" name="chandni" value="submit"  class="btn btn-primary" onClick="mf()" style="height: 100%; width: 30%;" >Submit</button>
<input type="hidden" id="nm" name="nm">
</form>
 <?php
    include 'footer.php';
?>