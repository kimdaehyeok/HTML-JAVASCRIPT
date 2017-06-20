<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--  20170412 : Date, Random, Array -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<p id = 'demo'>This is demo </p>
<p id = 'demo2'>This is demo2 </p>
<p id = 'demo3'>This is demo3 </p>
<p id = 'demo4'>This is demo4 </p>
<p id = 'demo5'>This is demo5 </p>
<p id = 'demo6'>This is demo6 </p>
<p id = 'demo7'>This is demo7 </p>
<p id = 'demo8'>This is demo8 </p>

</body>

<script>

var random1 = Math.floor(Math.random() * 10); /* 0 and 9 */
var random2 = Math.floor(Math.random() * 10) + 1
var date = new Date();
var someDay = new Date();
var dayArray = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"];
var cars = ["bmw","volvo","saab"];
var cars2 = new Array("aaa","bbb","ccc"); // bad

someDay.setFullYear(2020,0,14);

document.getElementById('demo').innerHTML = random1;
document.getElementById('demo2').innerHTML = random2;
document.getElementById('demo3').innerHTML = date;
document.getElementById('demo4').innerHTML = date.getTime();
/*and getYear(), getDay()=sunday is 0 */
document.getElementById('demo5').innerHTML = dayArray[date.getDay()];

if(date > someDay)
{
	document.getElementById('demo6').innerHTML = "date > someDay";
}
else
{
	
	document.getElementById('demo6').innerHTML = "date < someDay";
}

var carsLen = cars.length;
var text = "<ul>";

for(i = 0; i < carsLen; i++)
{
	text += "<li>" + cars[i] + "</li>";	
}

document.getElementById('demo7').innerHTML = text;


var fruits = ["Banana", "Orange", "Apple", "Mango"];
fruits[fruits.length] = "Lemon";
fruits[9] = "graph";

var fruitsText = "Fruit Array : ";

for(i = 0; i < fruits.length; i ++)
{	
	fruitsText += fruits[i] + " ";
}

	document.getElementById('demo8').innerHTML = fruitsText + fruits.length;
	
</script>
</html>