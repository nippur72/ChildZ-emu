let bus_ops = 0;

function mem_read(address) {
   //bus_ops++;
   return memory[address];
}

function mem_write(address, value) {
   //bus_ops++;
   if(address < 0xD000) memory[address] = value; 
   // 2048 D000
   // 2048 D800
   // 1024 E000
   // 1024 E400
   // 1024 E800
   // 1024 EC00
   // 2048 F000
   // 2048 F800   
}

function io_read(ioport) {  
   const port = ioport & 0xFF;
   switch(port) {
      case 0xcd: 
         //console.log(key_pressed_port_cd);
         return key_pressed_port_cd;  // ascii keyboard
      case 0xd9:                  
         return 0x00;  // serial port ready ?
   }
   console.warn(`read from unknown port ${hex(port)}h`);
   return 0x00;
}

let ser_counter = 0;
let ser_data = 0;

function io_write(port, value) {    
   // console.log(`io write ${hex(port)} ${hex(value)}`)  
   switch(port & 0xFF) {
      case 0xd9:
         cassette_bit_out = value > 0;
         // 1bit start (1), 7 data bits, 1bit stop (0)          
         if(ser_counter>0 && ser_counter<9) {
            // data bit received
            ser_data = (ser_data >> 1) | (value>0 ? 0 : 128); 
         }         
         ser_counter++;
         if(ser_counter === 10) {
            ser_counter = 0;
            printerWrite(ser_data & 0x7F);            
            ser_data = 0;
         }
         return;     
   } 
   console.warn(`write on unknown port ${hex(port)}h value ${hex(value)}h`);
}
