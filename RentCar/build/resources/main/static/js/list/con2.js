

$(function(){
	$("#addreviewBtn").click(function(){


	 var content = document.querySelector("#content").value;

  	var data = {
		"content" : content,
		"listno" : listno
	}
	console.log(data);

 	$.ajax({

	    type : "post",
	    url : "/review/create",
	     data : JSON.stringify(data),
	    //data: data,
	    // dataType:"json",
	    contentType: "application/json",
	    success:function(data){
		   console.log('성공입니다.');
		   console.log(data);
            location.reload()

	    },
	    error:function(){
	        alert("에러입니다");
	    }
	});
		});


$("#delete").click(function(){

var rnum = document.querySelector("#rnum").value;


       	console.log(rnum);



fetch(`/review/${rnum}`,{method: 'delete'})
               .then(response => response.text())
               .then(location.reload())
               .catch(console.log);
        		});




//$("#deleteV").click(function(){
//
//
//
//
// 	$.ajax({
//
// 	    type : "post",
// 	    url : "/contents/list/delete",
// 	     //data : JSON.stringify(data),
// 	    data: listno,
// 	    // dataType:"json",
// 	    //contentType: "application/json",
// 	    success:function(data){
// 		   console.log('성공입니다.');
//
//
// 	    }
//
//});
//
//});









});