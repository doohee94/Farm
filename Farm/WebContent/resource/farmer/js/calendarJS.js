$(function(){
  		 $('#calendar').fullCalendar({
  			 defaultDate: moment().format('YYYY-MM-DD') 
  			 ,navLinks: true
  			 ,height: 750
  			 ,weekends: true  //주말 표시 여부
  			 ,navLinkDayClick:function(date){ //날짜를 클릭시 날짜에 해당하는 날의 일기를 쓰는 페이지로 넘어감 				
  				 var today = date.toISOString();
  				 location.href = "gowriteDiary.farm?today="+today;
  				 
 			}//end dayClick
 			,eventClick:function(calEvent){ //이벤트를 클릭시 해당 이벤트에 해당하는 일기 보는 페이지로 넘어감
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
 	           backgroundColor : '#2d7a03',
 	          textColor : '#ffffff'
 	        },
 			
  			 })//end fullcalendar
			
  	});//end function
  		
  	