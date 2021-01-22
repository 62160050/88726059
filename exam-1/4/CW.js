var country = new Array(10);
 
   country[0] = "กรุงเทพมหานคร";
   country[1] = "นนทบุรี";
   country[2] = "สระบุรี";
   country[3] = "เชียงใหม่";
   country[4] = "ชลบุรี";
   country[5] = "สงขลา";
   country[6] = "ยะลา";
   country[7] = "แม่ฮ่องสอน";
   country[8] = "ขอนแก่น";
   country[9] = "ระนอง";


 var sr = Math.floor(Math.random() * 10);


 var temp = country[sr];

 var tries = 0;

 function guessit()
 {

   var guess = document.form1.guess1.value;

   tries++;

   switch(tries)
   {

     case 1:
     document.form1.hint.value = "คำใบ้ที่ 1 : ชื่อจังหวัดขึ้นต้นด้วย " + temp.charAt(0);
     break;

     case 2:
     document.form1.hint.value = "คำใบ้ที่ 2 : ชื่อจังหวัดนั้นลงท้ายด้วย " + temp.charAt(temp.length - 1);
     break;

     case 3:
     document.form1.hint.value = "คำใบ้สุดท้าย : ชื่อจังหวัดนั้นมีอยู่ " + temp.length + " ตัว";
     break;

     default:
     document.form1.hint.value = "เก่งยังไม่พอนะ ไปฝึกมาใหม่!!";

   }

   if(guess.toUpperCase() == temp)	
   {

     if(window.confirm("ถูกต้อง เก่งมากก!!!!  คำตอบคือ " + temp + "\nคุณต้องการเล่นใหม่อีกรอบไหม ?"))
      window.location.reload();		

   }

   else
   {

     if(tries == 5) 
     {

	if(window.confirm("เสียใจด้วยน้าา !! คำตอบที่ถูกต้องคือ  " + temp + "\nคุณต้องการเล่นใหม่อีกรอบไหม"))
	{
	  window.location.reload();	

	  document.form1.hint.value = "Enter your guess below and click on Guess!";

	}

     }

   }

 }
 function catchKeyCode() 
 {

   if(event.keyCode == 13)
    guessit();

 }

 function newGame()
 {

   if(window.confirm("Do you want to start a new game?"))
   {

     window.location.reload();	

     document.form1.hint.value = "Enter your guess below and click on Guess!";

   }

 }
