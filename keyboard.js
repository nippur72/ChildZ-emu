let key_pressed_port_cd = 0;

function keyDown(e) { 

   // from Chrome 71 audio is suspended by default and must resume within an user-generated event
   audioContextResume();

   let key = e.key;

   /*
   // disable auto repeat
   if(e.repeat) {
      e.preventDefault(); 
      return;
   } 
   */  

   // *** special (non characters) keys ***

   /*
   // RESET key is mapped as ALT+R
   if(e.code == "KeyR" && e.altKey) {
      cpu.reset();      
      e.preventDefault(); 
      return;
   }
   */

   // ALT+P is power OFF/ON
   if(e.code == "KeyP" && e.altKey) {
      power();
      e.preventDefault();
      return;
   }   

   if(e.code == "ShiftLeft" || 
      e.code == "ShiftRight" || 
      e.code == "AltLeft" || 
      e.code == "AltRight" || 
      e.code == "ControlLeft" ||
      e.code == "ControlRight") {
      e.preventDefault();
      return;
   }   

   // do not disable function keys   
   if(e.code == "F1" || 
      e.code == "F2" || 
      e.code == "F3" || 
      e.code == "F4" || 
      e.code == "F5" || 
      e.code == "F6" || 
      e.code == "F7" || 
      e.code == "F8" || 
      e.code == "F9" || 
      e.code == "F10" || 
      e.code == "F11" || 
      e.code == "F12") {   
      return;
   }   

   //console.log(e.code);

   /*
   // ALT+Left is rewind tape
   if(e.code == "ArrowLeft" && e.altKey) {
      rewind_tape();
      e.preventDefault(); 
      return;
   }   

   // ALT+Up or ALT+Down is stop tape
   if((e.code == "ArrowUp" && e.altKey) || (e.code == "ArrowDown" && e.altKey)) {
      stop_tape();
      e.preventDefault(); 
      return;
   } 
   */  
   
   // console.log("down",e);
   
   key_pressed_port_cd = e.keyCode;
   cpu.interrupt(false, 0x70); // trigger interrupt mode 2 (im 2), jumps at $0070

   e.preventDefault();         
}

function keyUp(e) { 
   e.preventDefault();
}

const element = document; //.getElementById("canvas");

element.onkeydown = keyDown;
element.onkeyup = keyUp;
