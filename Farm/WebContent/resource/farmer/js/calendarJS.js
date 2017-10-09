$(function(){
  		 $('#calendar').fullCalendar({
  			 height: 750
  			 ,weekends: true  //주말 표시 여부
  			 ,dayClick:function(date){ //날짜를 클릭시 날짜에 해당하는 날의 일기를 쓰는 페이지로 넘어감 				
  				 var today = date.toISOString();
  				 location.href = "writeDiary.jsp?today="+today;
  				 
 			}//end dayClick
 			,eventClick:function(calEvent){ //이벤트를 클릭시 해당 이벤트에 해당하는 일기 보는 페이지로 넘어감
 				alert("이벤트 이름"+calEvent.title +"id"+calEvent.id);
 				 location.href = "viewDiary.jsp?id="+calEvent.id;

 			}
 			//이벤트 예시작성. 
 			,events: [
 		        {
 		        	id : 1,
 		            title  : 'event1',
 		            start  : '2017-10-01'
 		        },
 		        {
 		        	id : 2,
 		            title  : 'event2',
 		            start  :'2017-10-13',
 		         
 		        },
 		        {
 		        	id : 3,
 		            title  : 'event3',
 		            start  : '2017-10-16',
 		          
 		        }
 		    ]
  			 })//end fullcalendar
			
  	});//end function
  		
  	