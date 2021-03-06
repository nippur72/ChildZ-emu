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

   // ALT+P is power OFF/ON
   if(e.code == "KeyP" && e.altKey && e.ctrlKey) {
      power();
      e.preventDefault();
      return;
   }   

   // console.log(`e.key=${e.key} e.code=${e.code}`);

   let k = 0;

        if(e.code === 'Backspace')   k = 127;
   else if(e.code === 'Tab')         k = 9;
   else if(e.code === 'Enter')       k = 13;
   else if(e.code === 'NumpadEnter') k = 13;
   else if(e.code === 'Escape')      k = 27;
   else if(e.code === 'Delete')      k = 8;
   else if(e.code === 'ArrowLeft')   k = '<'.charCodeAt(0);
   else if(e.code === 'ArrowRight')  k = '>'.charCodeAt(0);
   else if(e.key === 'ù' || e.key === '§')  k = 10;
   else if(e.key === 'ò' || e.key === 'ç')  k = '@'.charCodeAt(0);
   else if(e.key === 'à' || e.key === '°')  k = '#'.charCodeAt(0);
   else if(e.key === 'è' || e.key === 'é')  k = '['.charCodeAt(0);   

   // control codes
   if((e.ctrlKey || e.altKey)) {      
           if(e.key.toUpperCase() == '0' || e.key.toUpperCase() == '@') k = 0;      
      else if(e.key.toUpperCase() == 'A') k = 1;      
      else if(e.key.toUpperCase() == 'B') k = 2;      
      else if(e.key.toUpperCase() == 'C') k = 3;      
      else if(e.key.toUpperCase() == 'D') k = 4;      
      else if(e.key.toUpperCase() == 'E') k = 5;      
      else if(e.key.toUpperCase() == 'F') k = 6;      
      else if(e.key.toUpperCase() == 'G') k = 7;      
      else if(e.key.toUpperCase() == 'H') k = 8;      
      else if(e.key.toUpperCase() == 'I') k = 9;      
      else if(e.key.toUpperCase() == 'J') k = 10;      
      else if(e.key.toUpperCase() == 'K') k = 11;      
      else if(e.key.toUpperCase() == 'L') k = 12;      
      else if(e.key.toUpperCase() == 'M') k = 13;      
      else if(e.key.toUpperCase() == 'N') k = 14;      
      else if(e.key.toUpperCase() == 'O') k = 15;      
      else if(e.key.toUpperCase() == 'P') k = 16;      
      else if(e.key.toUpperCase() == 'Q') k = 17;      
      else if(e.key.toUpperCase() == 'R') k = 18;      
      else if(e.key.toUpperCase() == 'S') k = 19;      
      else if(e.key.toUpperCase() == 'T') k = 20;      
      else if(e.key.toUpperCase() == 'U') k = 21;      
      else if(e.key.toUpperCase() == 'V') k = 22;      
      else if(e.key.toUpperCase() == 'W') k = 23;      
      else if(e.key.toUpperCase() == 'X') k = 24;      
      else if(e.key.toUpperCase() == 'Y') k = 25;      
      else if(e.key.toUpperCase() == 'Z') k = 26;      
      else if(e.key.toUpperCase() == '[') k = 27; 
      else if(e.key.toUpperCase() == '\\') k = 28;      
      else if(e.key.toUpperCase() == ']') k = 29;      
      else if(e.key.toUpperCase() == '^' || e.key.toUpperCase() == 'ì') k = 30;      
      else if(e.key.toUpperCase() == '_' || e.key.toUpperCase() == '-') k = 31;      
      else if(e.key.toUpperCase() == ',')  k = '<'.charCodeAt(0);
      else if(e.key.toUpperCase() == '.')  k = '>'.charCodeAt(0);
      else if(e.key.toUpperCase() == '8') k = '^'.charCodeAt(0);
      else if(e.key.toUpperCase() == '9') k = '_'.charCodeAt(0);
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

   if(k !== 0) key_pressed_port_cd = k;
   else {
      if(e.key.length === 1) {         
         key_pressed_port_cd = e.key.toUpperCase().charCodeAt(0);
      }
   }
      
   cpu.interrupt(false, 0x70); // trigger interrupt mode 2 (im 2), jumps at $0070
   e.preventDefault();         
}

function keyUp(e) { 
   e.preventDefault();
}

function keyPress(e) { 
   let k=0;

   // control codes
   if(e.ctrlKey && !e.shiftKey) {      
            if(e.key.toUpperCase() == '0') k = 0;      
      else if(e.key.toUpperCase() == 'A') k = 1;      
      else if(e.key.toUpperCase() == 'B') k = 2;      
      else if(e.key.toUpperCase() == 'C') k = 3;      
      else if(e.key.toUpperCase() == 'D') k = 4;      
      else if(e.key.toUpperCase() == 'E') k = 5;      
      else if(e.key.toUpperCase() == 'F') k = 6;      
      else if(e.key.toUpperCase() == 'G') k = 7;      
      else if(e.key.toUpperCase() == 'H') k = 8;      
      else if(e.key.toUpperCase() == 'I') k = 9;      
      else if(e.key.toUpperCase() == 'J') k = 10;      
      else if(e.key.toUpperCase() == 'K') k = 11;      
      else if(e.key.toUpperCase() == 'L') k = 12;      
      else if(e.key.toUpperCase() == 'M') k = 13;      
      else if(e.key.toUpperCase() == 'N') k = 14;      
      else if(e.key.toUpperCase() == 'O') k = 15;      
      else if(e.key.toUpperCase() == 'P') k = 16;      
      else if(e.key.toUpperCase() == 'Q') k = 17;      
      else if(e.key.toUpperCase() == 'R') k = 18;      
      else if(e.key.toUpperCase() == 'S') k = 19;      
      else if(e.key.toUpperCase() == 'T') k = 20;      
      else if(e.key.toUpperCase() == 'U') k = 21;      
      else if(e.key.toUpperCase() == 'V') k = 22;      
      else if(e.key.toUpperCase() == 'W') k = 23;      
      else if(e.key.toUpperCase() == 'X') k = 24;      
      else if(e.key.toUpperCase() == 'Y') k = 25;      
      else if(e.key.toUpperCase() == 'Z') k = 26;      
      else if(e.key.toUpperCase() == '\\') k = 28;      
      else if(e.key.toUpperCase() == ']') k = 29;      
      else if(e.key.toUpperCase() == '^' || e.key.toUpperCase() == 'ì') k = 30;      
      else if(e.key.toUpperCase() == '_' || e.key.toUpperCase() == '-') k = 31;      
      else if(e.key.toUpperCase() == ',')  k = '<'.charCodeAt(0);
      else if(e.key.toUpperCase() == '.')  k = '>'.charCodeAt(0);
   }

   if(k!=0) e.preventDefault();
}

const element = document; //.getElementById("canvas");

element.onkeydown = keyDown;
element.onkeyup = keyUp;
element.onkeypress = keyPress;

