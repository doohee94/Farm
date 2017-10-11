$(function(){
  		 $('#calendar').fullCalendar({
  			 defaultDate: moment().format('YYYY-MM-DD')    
  			 ,height: 750
  			 ,weekends: true  //주말 표시 여부
  			 ,dayClick:function(date){ //날짜를 클릭시 날짜에 해당하는 날의 일기를 쓰는 페이지로 넘어감 				
  				 var today = date.toISOString();
  				 location.href = "gowriteDiary.farm?today="+today;
  				 
 			}//end dayClick
 			,eventClick:function(calEvent){ //이벤트를 클릭시 해당 이벤트에 해당하는 일기 보는 페이지로 넘어감
 				alert("이벤트 이름"+calEvent.title +"id"+calEvent.id);
 				 location.href = "viewDiary.farm?id="+calEvent.id;

 			}
 			//달력 리스트 출력
 			,events: {
 				url : 'viewDiaryList.farm',
 	            dataType : 'json',
 	            type : 'post',
 	            error:function(){
 	            	alert("에러!");
 	            },
 	           
 	        },
 			
  			 })//end fullcalendar
			
  	});//end function
  		
  	