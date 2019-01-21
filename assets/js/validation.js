var errMsg;
function isEmpty(strVal,field)
{
	if(strVal==null || strVal=="")
	{
		errMsg="Please Select "+field+"...";
		return true;
	}
	return false;
}