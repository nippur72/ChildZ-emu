let bus_ops = 0;

function mem_read(address) {
   //bus_ops++;
   return memory[address];
}

function mem_write(address, value) {
   //bus_ops++;
   if(address < 0xD000) memory[address] = value; // TODO disable ROM
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
   /*
   switch(port) {
      case 0x2b: return joy0;  // joystick 8 directions
      case 0x27: return joy1;  // joystick fire buttons
      case 0x00: return printerReady;
      //case 0x2e: return 0x00;  // joystick 2 not emulated yet
      case 0x10:
      case 0x11:
      case 0x12:
      case 0x13:
      case 0x14:
         return emulate_fdc ? floppy_read_port(port) : (port | 1);   
   }
   */
   console.warn(`read from unknown port ${hex(port)}h`);
   return 0x00;
}

function io_write(port, value) { 
   /*
   const hi = (port & 0xFF00) >> 8;
   const p = port & 0xFF;
   if(hi>0 && (p>=0x10 && p<=0x1f)) {
      console.log(`port write ${hex(port & 0xFF)} hi byte set to ${hex(hi)}, value=${hex(value)}`);
   }
   */   
   // console.log(`io write ${hex(port)} ${hex(value)}`)  
   /*
   switch(port & 0xFF) {
      case 0x40: banks[0] = value & 0xF; break;
      case 0x41: banks[1] = value & 0xF; break;
      case 0x42: banks[2] = value & 0xF; break;
      case 0x43: banks[3] = value & 0xF; break;
      case 0x44:          
         vdc_page_7 = ((value & 0b1000) >> 3) === 0;
         vdc_text80_enabled = value & 1; 
         vdc_border_color = (value & 0xF0) >> 4
              if((value & 0b110) === 0b000) vdc_graphic_mode_number = 5;              
         else if((value & 0b111) === 0b010) vdc_graphic_mode_number = 4;
         else if((value & 0b111) === 0b011) vdc_graphic_mode_number = 3;
         else if((value & 0b111) === 0b110) vdc_graphic_mode_number = 2;
         else if((value & 0b111) === 0b111) vdc_graphic_mode_number = 1;
         else if((value & 0b110) === 0b100) vdc_graphic_mode_number = 0;                  
         break;
      case 0x45: 
         vdc_text80_foreground = (value & 0xF0) >> 4;
         vdc_text80_background = value & 0x0F;         
         break;
      case 0x0d:
         printerWrite(value);
      case 0x0e:
         // printer port duplicated here
         return;                           
      case 0x10:
      case 0x11:
      case 0x12:
      case 0x13:
      case 0x14:
         if(emulate_fdc) floppy_write_port(port & 0xFF, value); 
         return;     
      default:
         console.warn(`write on unknown port ${hex(port)}h value ${hex(value)}h`);
   } 
   */  
   console.warn(`write on unknown port ${hex(port)}h value ${hex(value)}h`);
}
