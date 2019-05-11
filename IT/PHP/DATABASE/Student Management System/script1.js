function validateform()
{  
	var name=document.myform.name.value; 
	var email=document.myform.email.value;  
	var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	if (name==null || name=="")
	{  
		alert("Name can't be blank");  
		return false;  
	}
	else if (name.length<3)
	{  
		alert("Name should contain atleast 3 characters");  
		return false;  
	}
	else
	{
		if(!filter.test(email))
		{
			alert("Please provide a valid email address");
			return false;  
		}
	}
}

function redirect(num)
{
	if(parseInt(num)==1)
		window.location.assign('registration.php');
	if(parseInt(num)==2)
		window.location.assign('search.php');
	if(parseInt(num)==3)
		window.location.assign('display.php');
	if(parseInt(num)==4)
		window.location.assign('delete.php');
}
