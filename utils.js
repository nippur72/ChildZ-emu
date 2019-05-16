/**** utility functions ****/

function dumpMem(start, end, rows) {
   if(rows==undefined) rows=16;
   let s="\r\n";
   for(let r=start;r<=end;r+=rows) {
      s+= hex(r, 4) + ": ";      
      for(let c=0;c<rows && (r+c)<=end;c++) {
         const byte = mem_read(r+c);
         s+= hex(byte)+" ";
      }
      for(let c=0;c<rows && (r+c)<=end;c++) {
         const byte = mem_read(r+c);
         s+= (byte>32 && byte<127) ? String.fromCharCode(byte) : '.' ;
      }
      s+="\n";
   }
   console.log(s);
}

function hexDump(memory, start, end, rows) {
   let s="";
   for(let r=start;r<end;r+=rows) {
      s+= hex(r, 4) + ": ";      
      for(let c=0;c<rows;c++) {
         const byte = memory[r+c];
         s+= hex(byte)+" ";
      }
      for(let c=0;c<rows;c++) {
         const byte = memory[r+c];
         s+= (byte>32 && byte<127) ? String.fromCharCode(byte) : '.' ;
      }
      s+="\n";
   }
   return s;
}

function hex(value, size) {
   if(size === undefined) size = 2;
   let s = "0000" + value.toString(16);
   return s.substr(s.length - size);
}

function bin(value, size) {
   if(size === undefined) size = 8;
   let s = "0000000000000000" + value.toString(2);
   return s.substr(s.length - size);
}

function cpu_status() {
   const state = cpu.getState();
   return `A=${hex(state.a)} BC=${hex(state.b)}${hex(state.c)} DE=${hex(state.d)}${hex(state.e)} HL=${hex(state.h)}${hex(state.l)} IX=${hex(state.ix,4)} IY=${hex(state.iy,4)} SP=${hex(state.sp,4)} PC=${hex(state.pc,4)} S=${state.flags.S}, Z=${state.flags.Z}, Y=${state.flags.Y}, H=${state.flags.H}, X=${state.flags.X}, P=${state.flags.P}, N=${state.flags.N}, C=${state.flags.C}`;   
}

function mem_write_word(address, word) {
   mem_write(address + 0, word & 0xFF);
   mem_write(address + 1, (word & 0xFF00) >> 8);
}

function mem_read_word(address) {
   const lo = mem_read(address + 0);
   const hi = mem_read(address + 1);
   return lo+hi*256;
}

async function crun(filename) {
   load(filename);
   //await print_string("\nrun:\n");
   //pasteLine("RUN\r\n");
}

function drag_drop_disk(diskname, bytes) {
   //console.log(`dropped disk "${diskname}"`);
   //writeFile(diskname, bytes);
}

function pasteLine(text) {
   /*
   // keyboard buffer: 8289-838b  
   // key repeat address: 85F7
   
   for(let t=0;t<text.length;t++) {
      const v = text.charCodeAt(t);
      mem_write(0x8289 + t, v);
   }
   mem_write_word(0x85f7, 0x8289);
   //simulateKey("End");
   cpu.reset();
   */
}

function pasteBasic(text) {   
   /*
   const lines = text.split("\n");   
   for(let t=0; t<lines.length; t++) {
      const linea = lines[t];
      console.log(linea);
      pasteBasicLine(linea);      
   }
   console.log("pasted!");   
   */
}

function pasteBasicLine(line) {
   /*
   for(let t=0; t<line.length; t++) {
      let char = line.charAt(t);
      if(char === "§") char = "`";  // § is alias for ` to ease pasting from console
      pasteBasicChar(char);
   }
   pasteBasicChar("Enter");
   */
}

function pasteBasicChar(char) {
   /*
   const old_cursor_pos = mem_read_word(0x85e2);
   const key = evkey(char);

   keyDown(key);     
   for(let t=1; t<50 && mem_read_word(0x85e2) === old_cursor_pos; t++) renderAllLines();   
   keyUp(key);
   renderAllLines();
   */
}

function evkey(pcKey) {
   const ev = {
      key: pcKey,
      preventDefault: ()=>{}
   };
   return ev;
}

function zap() {      
   bank4.forEach((e,i)=>bank4[i]=i % 4 === 0 ? 0 : 0xFF);
   bank5.forEach((e,i)=>bank5[i]=i % 4 === 0 ? 0 : 0xFF);
   bank6.forEach((e,i)=>bank5[i]=i % 4 === 0 ? 0 : 0xFF);
   bank7.forEach((e,i)=>bank7[i]=i % 4 === 0 ? 0 : 0);
   banks.forEach((e,i)=>banks[i]=0);
   vdc_border_color = 0;
   vdc_text80_background = 0;
   let state = cpu.getState();
   state.halted = true;
   cpu.setState(state);   
}

function power() {      
   zap();
   setTimeout(()=>cpu.reset(),200);
}

function stop() {   
   stopped = true;
   console.log("emulation stopped");
}

function go() {
   stopped = false;
   oneFrame();
   console.log("emulation resumed");
}

function info() { 
   const average = averageFrameTime; /* oneFrameTimeSum/frames; */
   console.log(`frame rendering: min ${Math.round(minFrameTime*10,2)/10} ms (load=${Math.round(minFrameTime/frameDuration*100*10,2)/10} %) average ${Math.round(average*10,2)/10} ms (${Math.round(average/frameDuration*100*10,2)/10} %)`);   
}

function set(value, bitmask) {
   return value | bitmask; 
}

function reset(value, bitmask) {
   return value & (0xFF ^ bitmask);
}

function saveState() {
   const saveObject = {
      memory: Array.from(memory),
      cpu: cpu.getState()  
   };   

   window.localStorage.setItem(`childzemu_state`, JSON.stringify(saveObject));
}

function restoreState() {   
   try
   {
      let s = window.localStorage.getItem(`childzemu_state`);

      if(s === null) return;   

      s = JSON.parse(s);      
      
      copyArray( s.memory, memory);
      cpu.setState(s.cpu);
   }
   catch(error)
   {

   }
}

function dumpPointers() {
}

let debugBefore = undefined;
let debugAfter = undefined;

function bit(b,n) {
   return (b & (1<<n))>0 ? 1 : 0;
} 

function not_bit(b,n) {
   return (b & (1<<n))>0 ? 0 : 1;
} 

function dumpStack() {
   const sp = cpu.getState().sp;

   for(let t=sp;t<=0xffff;t+=2) {
      const word = mem_read_word(t);
      console.log(`${hex(t,4)}: ${hex(word,4)}  (${word})`);
   }
}

function endsWith(s, value) {
   return s.substr(-value.length) === value;
}

function copyArray(source, dest) {
   source.forEach((e,i)=>dest[i] = e);
}