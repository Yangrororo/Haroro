##JS闭包##
###我是第一个例子

    function f1(){
	       var n=999
	function f2(){
	       alert(n); // 999
	 }
	}


### 我是第二个例子 ###
	function f1(){
	　var n=999;
	　nAdd=function(){n+=1}
	　function f2(){
	　alert(n);
	 }
	return f2;
	}
	var result=f1();
	result(); // 999
	nAdd();
	result(); // 1000
