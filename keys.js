const keys = new Array(75); // hardware keys row and col info

function map(key, row, col) {
   keys[key] = { row, col };
}

const KEY_RESET = 0; // pin 10 sul pannello
const KEY_F1  = 1;
const KEY_F2  = 2;
const KEY_F3  = 3;
const KEY_F4  = 4;
const KEY_F5  = 5;
const KEY_F6  = 6;
const KEY_F7  = 7;
const KEY_F8  = 8;
const KEY_F9  = 9;
const KEY_F10 = 10;
const KEY_INS = 11;
const KEY_DEL = 12;
const KEY_ESC = 13;
const KEY_1 = 14;
const KEY_2 = 15;
const KEY_3 = 16;
const KEY_4 = 17;
const KEY_5 = 18;
const KEY_6 = 19;
const KEY_7 = 20;
const KEY_8 = 21;
const KEY_9 = 22;
const KEY_0 = 23;
const KEY_MINUS = 24;
const KEY_EQUAL = 25;
const KEY_BACKSLASH = 26;
const KEY_BS = 27;
const KEY_DEL_LINE = 28;
const KEY_CLS_HOME = 29;
const KEY_TAB = 30;
const KEY_Q = 31;
const KEY_W = 32;
const KEY_E = 33;
const KEY_R = 34;
const KEY_T = 35;
const KEY_Y = 36;
const KEY_U = 37;
const KEY_I = 38;
const KEY_O = 39;
const KEY_P = 40;
const KEY_OPEN_BRACKET = 41;
const KEY_CLOSE_BRACKET = 42;
const KEY_RETURN = 43;
const KEY_CONTROL = 44;
const KEY_A = 45;
const KEY_S = 46;
const KEY_D = 47;
const KEY_F = 48;
const KEY_G = 49;
const KEY_H = 50;
const KEY_J = 51;
const KEY_K = 52;
const KEY_L = 53;
const KEY_SEMICOLON = 54;
const KEY_QUOTE = 55;
const KEY_BACK_QUOTE = 56;
const KEY_GRAPH = 57;
const KEY_UP = 58;
const KEY_SHIFT = 59;
const KEY_Z = 60;
const KEY_X = 61;
const KEY_C = 62;
const KEY_V = 63;
const KEY_B = 64;
const KEY_N = 65;
const KEY_M = 66;
const KEY_COMMA = 67;
const KEY_DOT = 68;
const KEY_SLASH = 69;
const KEY_MU = 70;
const KEY_LEFT = 71;
const KEY_RIGHT = 72;
const KEY_CAP_LOCK = 73;
const KEY_SPACE = 74;
const KEY_DOWN = 75;

const ROW0 =  1;
const ROW1 =  2;
const ROW2 =  3;
const ROW3 =  4;
const ROW4 =  5;
const ROW5 =  6;
const ROW6 =  7;
const ROW7 =  8;
const ROWA =  9;
const ROWB = 10;
const ROWC = 11;
const ROWD = 12;

map(KEY_SHIFT        , ROW0, 0x40);
map(KEY_Z            , ROW0, 0x20); 
map(KEY_X            , ROW0, 0x10); 
map(KEY_C            , ROW0, 0x08); 
map(KEY_V            , ROW0, 0x04); 
map(KEY_B            , ROW0, 0x02); 
map(KEY_N            , ROW0, 0x01); 
map(KEY_CONTROL      , ROW1, 0x40);
map(KEY_A            , ROW1, 0x20);   
map(KEY_S            , ROW1, 0x10);   
map(KEY_D            , ROW1, 0x08);   
map(KEY_F            , ROW1, 0x04);   
map(KEY_G            , ROW1, 0x02);   
map(KEY_H            , ROW1, 0x01);   
map(KEY_TAB          , ROW2, 0x40);
map(KEY_Q            , ROW2, 0x20);      
map(KEY_W            , ROW2, 0x10);      
map(KEY_E            , ROW2, 0x08);      
map(KEY_R            , ROW2, 0x04);      
map(KEY_T            , ROW2, 0x02);      
map(KEY_Y            , ROW2, 0x01);      
map(KEY_ESC          , ROW3, 0x40);
map(KEY_1            , ROW3, 0x20); 
map(KEY_2            , ROW3, 0x10); 
map(KEY_3            , ROW3, 0x08); 
map(KEY_4            , ROW3, 0x04); 
map(KEY_5            , ROW3, 0x02); 
map(KEY_6            , ROW3, 0x01); 
map(KEY_EQUAL        , ROW4, 0x20); 
map(KEY_MINUS        , ROW4, 0x10); 
map(KEY_0            , ROW4, 0x08); 
map(KEY_9            , ROW4, 0x04); 
map(KEY_8            , ROW4, 0x02); 
map(KEY_7            , ROW4, 0x01); 
map(KEY_BS           , ROW5, 0x40); 
map(KEY_P            , ROW5, 0x08); 
map(KEY_O            , ROW5, 0x04); 
map(KEY_I            , ROW5, 0x02); 
map(KEY_U            , ROW5, 0x01); 
map(KEY_RETURN       , ROW6, 0x40);                        
map(KEY_QUOTE        , ROW6, 0x10);
map(KEY_SEMICOLON    , ROW6, 0x08);
map(KEY_L            , ROW6, 0x04);
map(KEY_K            , ROW6, 0x02);
map(KEY_J            , ROW6, 0x01);                                                       
map(KEY_GRAPH        , ROW7, 0x40); 
map(KEY_BACK_QUOTE   , ROW7, 0x20); 
map(KEY_SPACE        , ROW7, 0x10);
map(KEY_SLASH        , ROW7, 0x08); 
map(KEY_DOT          , ROW7, 0x04); 
map(KEY_COMMA        , ROW7, 0x02); 
map(KEY_M            , ROW7, 0x01); 
map(KEY_BACKSLASH    , ROWA, 0x20); 
map(KEY_CLOSE_BRACKET, ROWA, 0x10); 
map(KEY_OPEN_BRACKET , ROWA, 0x08); 
map(KEY_MU           , ROWA, 0x04); 
map(KEY_DEL          , ROWA, 0x02); 
map(KEY_INS          , ROWA, 0x01);  
map(KEY_CAP_LOCK     , ROWB, 0x40); 
map(KEY_DEL_LINE     , ROWB, 0x20); 
map(KEY_CLS_HOME     , ROWB, 0x10); 
map(KEY_UP           , ROWB, 0x08); 
map(KEY_LEFT         , ROWB, 0x04); 
map(KEY_RIGHT        , ROWB, 0x02); 
map(KEY_DOWN         , ROWB, 0x01); 
map(KEY_F1           , ROWC, 0x20); 
map(KEY_F2           , ROWC, 0x10); 
map(KEY_F3           , ROWC, 0x08); 
map(KEY_F4           , ROWC, 0x04);    
map(KEY_F10          , ROWD, 0x20);   
map(KEY_F9           , ROWD, 0x10);   
map(KEY_F8           , ROWD, 0x08);   
map(KEY_F7           , ROWD, 0x04); 
map(KEY_F6           , ROWD, 0x02); 
map(KEY_F5           , ROWD, 0x01);
