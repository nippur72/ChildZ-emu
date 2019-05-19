D000:   C364D1        jp        label_D164
D003:   14            inc       d
D004:   54            ld        d, h
                    label_D005:
D005:   4F            ld        c, a
D006:   50            ld        d, b
D007:   2046          jr        nz, label_D04F
D009:   49            ld        c, c
D00A:   4C            ld        c, h
D00B:   45            ld        b, l
D00C:   2020          jr        nz, label_D02E
D00E:   2020          jr        nz, label_D030
D010:   2042          jr        nz, label_D054
D012:   D307          out       (07), a
D014:   47            ld        b, a
D015:   45            ld        b, l
D016:   4E            ld        c, (hl)
D017:   45            ld        b, l
D018:   52            ld        d, d
D019:   41            ld        b, c
D01A:   54            ld        d, h
D01B:   45            ld        b, l
D01C:   2046          jr        nz, label_D064
D01E:   49            ld        c, c
D01F:   4C            ld        c, h
D020:   45            ld        b, l
D021:   E6D1          and       D1
D023:   05            dec       b
D024:   45            ld        b, l
D025:   58            ld        e, b
D026:   54            ld        d, h
D027:   45            ld        b, l
D028:   4E            ld        c, (hl)
D029:   44            ld        b, h
D02A:   2046          jr        nz, label_D072
D02C:   49            ld        c, c
D02D:   4C            ld        c, h
                    label_D02E:
D02E:   45            ld        b, l
D02F:   2020          jr        nz, label_D051
D031:   28D2          jr        z, label_D005
D033:   0E4E          ld        c, 4E
D035:   45            ld        b, l
D036:   58            ld        e, b
D037:   54            ld        d, h
D038:   2052          jr        nz, label_D08C
D03A:   45            ld        b, l
D03B:   43            ld        b, e
D03C:   4F            ld        c, a
D03D:   52            ld        d, d
D03E:   44            ld        b, h
D03F:   53            ld        d, e
D040:   2072          jr        nz, label_D0B4
D042:   D21050        jp        nc, label_5010
D045:   52            ld        d, d
D046:   45            ld        b, l
D047:   56            ld        d, (hl)
D048:   49            ld        c, c
D049:   4F            ld        c, a
D04A:   55            ld        d, l
D04B:   53            ld        d, e
D04C:   2052          jr        nz, label_D0A0
D04E:   45            ld        b, l
                    label_D04F:
D04F:   43            ld        b, e
D050:   2E21          ld        l, 21
D052:   D304          out       (04), a
                    label_D054:
D054:   44            ld        b, h
D055:   45            ld        b, l
D056:   4C            ld        c, h
D057:   45            ld        b, l
D058:   54            ld        d, h
D059:   45            ld        b, l
D05A:   2052          jr        nz, label_D0AE
D05C:   45            ld        b, l
D05D:   43            ld        b, e
D05E:   4F            ld        c, a
D05F:   52            ld        d, d
D060:   44            ld        b, h
D061:   54            ld        d, h
D062:   D40949        call      nc, label_4909
D065:   4E            ld        c, (hl)
D066:   53            ld        d, e
D067:   45            ld        b, l
D068:   52            ld        d, d
D069:   54            ld        d, h
D06A:   2052          jr        nz, label_D0BE
D06C:   45            ld        b, l
D06D:   43            ld        b, e
D06E:   2E20          ld        l, 20
D070:   20DF          jr        nz, label_D051
                    label_D072:
D072:   D306          out       (06), a
                    label_D074:
D074:   46            ld        b, (hl)
D075:   49            ld        c, c
D076:   4E            ld        c, (hl)
D077:   44            ld        b, h
D078:   2052          jr        nz, label_D0CC
D07A:   45            ld        b, l
D07B:   43            ld        b, e
D07C:   4F            ld        c, a
D07D:   52            ld        d, d
D07E:   44            ld        b, h
D07F:   2020          jr        nz, label_D0A1
D081:   85            add       a, l
D082:   D312          out       (12), a
D084:   52            ld        d, d
D085:   45            ld        b, l
D086:   50            ld        d, b
D087:   4C            ld        c, h
D088:   41            ld        b, c
D089:   43            ld        b, e
D08A:   45            ld        b, l
D08B:   2052          jr        nz, label_D0DF
D08D:   45            ld        b, l
D08E:   43            ld        b, e
D08F:   2E20          ld        l, 20
D091:   F5            push      af
D092:   D40343        call      nc, label_4303
D095:   48            ld        c, b
D096:   41            ld        b, c
D097:   4E            ld        c, (hl)
D098:   47            ld        b, a
D099:   45            ld        b, l
D09A:   2053          jr        nz, label_D0EF
D09C:   54            ld        d, h
D09D:   52            ld        d, d
D09E:   49            ld        c, c
D09F:   4E            ld        c, (hl)
                    label_D0A0:
D0A0:   47            ld        b, a
                    label_D0A1:
D0A1:   8F            adc       a, a
D0A2:   D40141        call      nc, label_4101
D0A5:   50            ld        d, b
D0A6:   50            ld        d, b
D0A7:   45            ld        b, l
D0A8:   4E            ld        c, (hl)
D0A9:   44            ld        b, h
D0AA:   2053          jr        nz, label_D0FF
D0AC:   54            ld        d, h
D0AD:   52            ld        d, d
                    label_D0AE:
D0AE:   49            ld        c, c
D0AF:   4E            ld        c, (hl)
D0B0:   47            ld        b, a
D0B1:   0B            dec       bc
D0B2:   D41845        call      nc, label_4518
D0B5:   44            ld        b, h
D0B6:   49            ld        c, c
D0B7:   54            ld        d, h
D0B8:   4F            ld        c, a
D0B9:   52            ld        d, d
D0BA:   2045          jr        nz, label_D101
D0BC:   58            ld        e, b
D0BD:   49            ld        c, c
                    label_D0BE:
D0BE:   54            ld        d, h
D0BF:   2020          jr        nz, label_D0E1
D0C1:   24            inc       h
D0C2:   D7            rst       10h
D0C3:   02            ld        (bc), a
D0C4:   42            ld        b, d
D0C5:   4F            ld        c, a
D0C6:   54            ld        d, h
D0C7:   54            ld        d, h
D0C8:   4F            ld        c, a
D0C9:   4D            ld        c, l
D0CA:   2046          jr        nz, label_D112
                    label_D0CC:
D0CC:   49            ld        c, c
D0CD:   4C            ld        c, h
D0CE:   45            ld        b, l
D0CF:   2020          jr        nz, label_D0F1
D0D1:   17            rla
D0D2:   D311          out       (11), a
D0D4:   51            ld        d, c
D0D5:   55            ld        d, l
D0D6:   45            ld        b, l
D0D7:   52            ld        d, d
D0D8:   59            ld        e, c
D0D9:   2046          jr        nz, label_D121
D0DB:   49            ld        c, c
D0DC:   4C            ld        c, h
                    label_D0DD:
D0DD:   45            ld        b, l
D0DE:   2020          jr        nz, label_D100
D0E0:   2092          jr        nz, label_D074
D0E2:   D5            push      de
D0E3:   15            dec       d
                    label_D0E4:
D0E4:   55            ld        d, l
D0E5:   4E            ld        c, (hl)
D0E6:   4C            ld        c, h
D0E7:   4F            ld        c, a
D0E8:   41            ld        b, c
D0E9:   44            ld        b, h
D0EA:   2046          jr        nz, label_D132
D0EC:   49            ld        c, c
D0ED:   4C            ld        c, h
D0EE:   45            ld        b, l
                    label_D0EF:
D0EF:   2020          jr        nz, label_D111
                    label_D0F1:
D0F1:   63            ld        h, e
D0F2:   D7            rst       10h
D0F3:   0C            inc       c
D0F4:   4C            ld        c, h
D0F5:   4F            ld        c, a
D0F6:   41            ld        b, c
D0F7:   44            ld        b, h
D0F8:   2046          jr        nz, label_D140
D0FA:   49            ld        c, c
D0FB:   4C            ld        c, h
D0FC:   45            ld        b, l
D0FD:   2020          jr        nz, label_D11F
                    label_D0FF:
D0FF:   2020          jr        nz, label_D121
                    label_D101:
D101:   E0            ret       po
D102:   D7            rst       10h
D103:   13            inc       de
D104:   46            ld        b, (hl)
D105:   49            ld        c, c
D106:   4C            ld        c, h
D107:   45            ld        b, l
D108:   2053          jr        nz, label_D15D
D10A:   49            ld        c, c
D10B:   5A            ld        e, d
D10C:   45            ld        b, l
D10D:   2049          jr        nz, label_D158
D10F:   53            ld        d, e
D110:   204D          jr        nz, label_D15F
                    label_D112:
D112:   D8            ret       c
D113:   44            ld        b, h
D114:   45            ld        b, l
D115:   4C            ld        c, h
D116:   45            ld        b, l
D117:   54            ld        d, h
D118:   45            ld        b, l
D119:   204F          jr        nz, label_D16A
D11B:   4C            ld        c, h
D11C:   44            ld        b, h
D11D:   2046          jr        nz, label_D165
                    label_D11F:
D11F:   49            ld        c, c
D120:   4C            ld        c, h
                    label_D121:
D121:   45            ld        b, l
D122:   203F          jr        nz, label_D163
D124:   2028          jr        nz, label_D14E
D126:   59            ld        e, c
D127:   2F            cpl
D128:   4E            ld        c, (hl)
D129:   29            add       hl, hl
D12A:   4E            ld        c, (hl)
D12B:   4F            ld        c, a
D12C:   2052          jr        nz, label_D180
D12E:   45            ld        b, l
D12F:   43            ld        b, e
D130:   4F            ld        c, a
D131:   52            ld        d, d
                    label_D132:
D132:   44            ld        b, h
D133:   2050          jr        nz, label_D185
D135:   4F            ld        c, a
D136:   49            ld        c, c
D137:   4E            ld        c, (hl)
D138:   54            ld        d, h
D139:   45            ld        b, l
D13A:   44            ld        b, h
D13B:   45            ld        b, l
D13C:   4E            ld        c, (hl)
D13D:   44            ld        b, h
D13E:   204F          jr        nz, label_D18F
                    label_D140:
D140:   46            ld        b, (hl)
D141:   2046          jr        nz, label_D189
D143:   49            ld        c, c
D144:   4C            ld        c, h
D145:   45            ld        b, l
D146:   4E            ld        c, (hl)
D147:   4F            ld        c, a
D148:   204D          jr        nz, label_D197
D14A:   4F            ld        c, a
D14B:   52            ld        d, d
D14C:   45            ld        b, l
D14D:   2053          jr        nz, label_D1A2
D14F:   50            ld        d, b
D150:   41            ld        b, c
D151:   43            ld        b, e
D152:   45            ld        b, l
D153:   43            ld        b, e
D154:   45            ld        b, l
D155:   52            ld        d, d
D156:   43            ld        b, e
D157:   41            ld        b, c
                    label_D158:
D158:   4E            ld        c, (hl)
D159:   44            ld        b, h
D15A:   4F            ld        c, a
D15B:   2080          jr        nz, label_D0DD
                    label_D15D:
D15D:   44            ld        b, h
D15E:   41            ld        b, c
                    label_D15F:
D15F:   4D            ld        c, l
D160:   4D            ld        c, l
D161:   49            ld        c, c
D162:   2080          jr        nz, label_D0E4
                    label_D164:
D164:   210602        ld        hl, 0206
D167:   015B00        ld        bc, 005B
                    label_D16A:
D16A:   110702        ld        de, 0207
D16D:   3600          ld        (hl), 00
D16F:   EDB0          ldir
D171:   3E44          ld        a, 44
D173:   325802        ld        (loc_0258), a
D176:   3EC2          ld        a, C2
D178:   325E02        ld        (loc_025E), a
D17B:   216202        ld        hl, 0262
D17E:   220002        ld        (loc_0200), hl
D181:   220202        ld        (loc_0202), hl
D184:   2A3101        ld        hl, (loc_0131)
D187:   010001        ld        bc, 0100
D18A:   ED42          sbc       hl, bc
D18C:   220402        ld        (loc_0204), hl
                    label_D18F:
D18F:   CD8AEC        call      label_EC8A
                    label_D192:
D192:   CD40EC        call      label_EC40
D195:   11C5AB        ld        de, ABC5
D198:   CD5BE3        call      label_E35B
D19B:   3AB600        ld        a, (loc_00B6)
D19E:   FE00          cp        00
D1A0:   2835          jr        z, label_D1D7
                    label_D1A2:
D1A2:   210A02        ld        hl, 020A
D1A5:   3600          ld        (hl), 00
D1A7:   111000        ld        de, 0010
D1AA:   2103D0        ld        hl, D003
D1AD:   0611          ld        b, 11
                    label_D1AF:
D1AF:   BE            cp        (hl)
D1B0:   2815          jr        z, label_D1C7
D1B2:   A7            and       a
D1B3:   ED5A          adc       hl, de
D1B5:   10F8          djnz      label_D1AF
                    label_D1B7:
D1B7:   CD4BEC        call      label_EC4B
D1BA:   21D9E0        ld        hl, E0D9
D1BD:   010600        ld        bc, 0006
D1C0:   11C5AB        ld        de, ABC5
D1C3:   EDB0          ldir
D1C5:   18CB          jr        label_D192
                    label_D1C7:
D1C7:   23            inc       hl
D1C8:   11C5AB        ld        de, ABC5
D1CB:   010D00        ld        bc, 000D
D1CE:   EDB0          ldir
D1D0:   EB            ex        de, hl
D1D1:   1A            ld        a, (de)
D1D2:   6F            ld        l, a
D1D3:   13            inc       de
D1D4:   1A            ld        a, (de)
D1D5:   67            ld        h, a
D1D6:   E9            jp        (hl)
                    label_D1D7:
D1D7:   3A0A02        ld        a, (loc_020A)
D1DA:   FE05          cp        05
D1DC:   CA30D2        jp        z, label_D230
D1DF:   FE09          cp        09
D1E1:   CA9DD3        jp        z, label_D39D
D1E4:   18D1          jr        label_D1B7
D1E6:   2A0002        ld        hl, (loc_0200)
D1E9:   ED5B0202      ld        de, (loc_0202)
D1ED:   A7            and       a
D1EE:   ED52          sbc       hl, de
D1F0:   2836          jr        z, label_D228
D1F2:   11C5AB        ld        de, ABC5
D1F5:   2113D1        ld        hl, D113
D1F8:   011700        ld        bc, 0017
D1FB:   EDB0          ldir
D1FD:   11DDAB        ld        de, ABDD
D200:   CD5BE3        call      label_E35B
D203:   3ADDAB        ld        a, (loc_ABDD)
D206:   FE59          cp        59
D208:   C292D1        jp        nz, label_D192
D20B:   2A0202        ld        hl, (loc_0202)
D20E:   220002        ld        (loc_0200), hl
D211:   210000        ld        hl, 0000
D214:   220802        ld        (loc_0208), hl
D217:   220602        ld        (loc_0206), hl
D21A:   CD40EC        call      label_EC40
D21D:   2114D0        ld        hl, D014
D220:   11C5AB        ld        de, ABC5
D223:   010D00        ld        bc, 000D
D226:   EDB0          ldir
                    label_D228:
D228:   3E05          ld        a, 05
D22A:   320A02        ld        (loc_020A), a
D22D:   C392D1        jp        label_D192
                    label_D230:
D230:   44            ld        b, h
D231:   4D            ld        c, l
D232:   210000        ld        hl, 0000
D235:   220602        ld        (loc_0206), hl
D238:   CDEAD3        call      label_D3EA
D23B:   21C5AB        ld        hl, ABC5
D23E:   CBFE          set       7, (hl)
D240:   EDB0          ldir
D242:   21C5AB        ld        hl, ABC5
D245:   CBBE          res       7, (hl)
D247:   62            ld        h, d
D248:   6B            ld        l, e
D249:   CBFE          set       7, (hl)
D24B:   220002        ld        (loc_0200), hl
                    label_D24E:
D24E:   2A0802        ld        hl, (loc_0208)
D251:   23            inc       hl
D252:   220802        ld        (loc_0208), hl
D255:   1818          jr        label_D26F
                    label_D257:
D257:   3A0602        ld        a, (loc_0206)
D25A:   FE00          cp        00
D25C:   C0            ret       nz
D25D:   3A0702        ld        a, (loc_0207)
D260:   FE00          cp        00
D262:   C0            ret       nz
D263:   212AD1        ld        hl, D12A
D266:   11C5AB        ld        de, ABC5
D269:   011100        ld        bc, 0011
D26C:   EDB0          ldir
D26E:   E1            pop       hl
                    label_D26F:
D26F:   C392D1        jp        label_D192
D272:   CD57D2        call      label_D257
D275:   11D2AB        ld        de, ABD2
D278:   CD5BE3        call      label_E35B
D27B:   3AD2AB        ld        a, (loc_ABD2)
D27E:   FE41          cp        41
D280:   2005          jr        nz, label_D287
D282:   211402        ld        hl, 0214
D285:   CBFE          set       7, (hl)
                    label_D287:
D287:   21A7EC        ld        hl, ECA7
D28A:   010800        ld        bc, 0008
D28D:   EDB1          cpir
D28F:   2802          jr        z, label_D293
                    label_D291:
D291:   3E01          ld        a, 01
                    label_D293:
D293:   E60F          and       0F
D295:   320B02        ld        (loc_020B), a
                    label_D298:
D298:   CD40EC        call      label_EC40
                    label_D29B:
D29B:   CD51D3        call      label_D351
D29E:   54            ld        d, h
D29F:   5D            ld        e, l
D2A0:   2A0002        ld        hl, (loc_0200)
D2A3:   A7            and       a
D2A4:   ED52          sbc       hl, de
D2A6:   2013          jr        nz, label_D2BB
D2A8:   213BD1        ld        hl, D13B
D2AB:   11C5AB        ld        de, ABC5
D2AE:   010B00        ld        bc, 000B
D2B1:   EDB0          ldir
D2B3:   210000        ld        hl, 0000
D2B6:   220602        ld        (loc_0206), hl
D2B9:   1835          jr        label_D2F0
                    label_D2BB:
D2BB:   ED530602      ld        (loc_0206), de
D2BF:   3A0A02        ld        a, (loc_020A)
D2C2:   FE06          cp        06
D2C4:   2005          jr        nz, label_D2CB
D2C6:   CD5AD3        call      label_D35A
D2C9:   18D0          jr        label_D29B
                    label_D2CB:
D2CB:   2A0602        ld        hl, (loc_0206)
D2CE:   11C5AB        ld        de, ABC5
                    label_D2D1:
D2D1:   EDA0          ldi
D2D3:   CB7E          bit       7, (hl)
D2D5:   28FA          jr        z, label_D2D1
D2D7:   21C5AB        ld        hl, ABC5
D2DA:   CBBE          res       7, (hl)
D2DC:   3A1402        ld        a, (loc_0214)
D2DF:   CB7F          bit       7, a
D2E1:   200D          jr        nz, label_D2F0
D2E3:   3A0B02        ld        a, (loc_020B)
D2E6:   3D            dec       a
D2E7:   320B02        ld        (loc_020B), a
D2EA:   C298D2        jp        nz, label_D298
D2ED:   C392D1        jp        label_D192
                    label_D2F0:
D2F0:   CBBF          res       7, a
D2F2:   321402        ld        (loc_0214), a
D2F5:   C392D1        jp        label_D192
                    label_D2F8:
D2F8:   ED5B0602      ld        de, (loc_0206)
                    label_D2FC:
D2FC:   2A0202        ld        hl, (loc_0202)
D2FF:   A7            and       a
                    label_D300:
D300:   ED52          sbc       hl, de
D302:   2006          jr        nz, label_D30A
D304:   1B            dec       de
                    label_D305:
D305:   ED530602      ld        (loc_0206), de
D309:   C9            ret
                    label_D30A:
D30A:   62            ld        h, d
D30B:   6B            ld        l, e
                    label_D30C:
D30C:   2B            dec       hl
D30D:   CB7E          bit       7, (hl)
D30F:   28FB          jr        z, label_D30C
D311:   54            ld        d, h
D312:   5D            ld        e, l
D313:   10E7          djnz      label_D2FC
D315:   18EE          jr        label_D305
D317:   2A0002        ld        hl, (loc_0200)
D31A:   220602        ld        (loc_0206), hl
D31D:   0602          ld        b, 02
D31F:   181C          jr        label_D33D
D321:   CD57D2        call      label_D257
D324:   11D3AB        ld        de, ABD3
D327:   CD5BE3        call      label_E35B
D32A:   3AD3AB        ld        a, (loc_ABD3)
D32D:   21A7EC        ld        hl, ECA7
D330:   010800        ld        bc, 0008
D333:   EDB1          cpir
D335:   2802          jr        z, label_D339
D337:   3E01          ld        a, 01
                    label_D339:
D339:   E60F          and       0F
D33B:   47            ld        b, a
D33C:   04            inc       b
                    label_D33D:
D33D:   CDF8D2        call      label_D2F8
D340:   1807          jr        label_D349
D342:   2A0202        ld        hl, (loc_0202)
D345:   2B            dec       hl
D346:   220602        ld        (loc_0206), hl
                    label_D349:
D349:   3E01          ld        a, 01
D34B:   320B02        ld        (loc_020B), a
                    label_D34E:
D34E:   C398D2        jp        label_D298
                    label_D351:
D351:   2A0602        ld        hl, (loc_0206)
                    label_D354:
D354:   23            inc       hl
D355:   CB7E          bit       7, (hl)
D357:   28FB          jr        z, label_D354
D359:   C9            ret
                    label_D35A:
D35A:   1191AB        ld        de, AB91
                    label_D35D:
D35D:   3A0C02        ld        a, (loc_020C)
D360:   47            ld        b, a
D361:   2A0602        ld        hl, (loc_0206)
D364:   CBBE          res       7, (hl)
                    label_D366:
D366:   E5            push      hl
D367:   D5            push      de
D368:   C5            push      bc
D369:   CD49E3        call      label_E349
D36C:   C1            pop       bc
D36D:   D1            pop       de
D36E:   E1            pop       hl
D36F:   2006          jr        nz, label_D377
D371:   D1            pop       de
D372:   13            inc       de
D373:   13            inc       de
D374:   D5            push      de
D375:   1805          jr        label_D37C
                    label_D377:
D377:   23            inc       hl
D378:   CB7E          bit       7, (hl)
D37A:   28EA          jr        z, label_D366
                    label_D37C:
D37C:   FD2A0602      ld        iy, (0206)
D380:   FDCB00FE      set       7, (iy + 00)
D384:   C9            ret
D385:   CD57D2        call      label_D257
D388:   11D1AB        ld        de, ABD1
D38B:   CD5BE3        call      label_E35B
D38E:   220C02        ld        (loc_020C), hl
D391:   3E01          ld        a, 01
D393:   320B02        ld        (loc_020B), a
D396:   3E06          ld        a, 06
D398:   320A02        ld        (loc_020A), a
D39B:   18B1          jr        label_D34E
                    label_D39D:
D39D:   44            ld        b, h
D39E:   4D            ld        c, l
D39F:   CDEAD3        call      label_D3EA
D3A2:   CD51D3        call      label_D351
D3A5:   220602        ld        (loc_0206), hl
D3A8:   CDC0D3        call      label_D3C0
D3AB:   21C5AB        ld        hl, ABC5
D3AE:   ED5B0602      ld        de, (loc_0206)
D3B2:   EDB0          ldir
D3B4:   2A0602        ld        hl, (loc_0206)
D3B7:   CBFE          set       7, (hl)
D3B9:   C34ED2        jp        label_D24E
                    label_D3BC:
D3BC:   ED5B0002      ld        de, (loc_0200)
                    label_D3C0:
D3C0:   62            ld        h, d
D3C1:   6B            ld        l, e
D3C2:   A7            and       a
D3C3:   ED4A          adc       hl, bc
D3C5:   C5            push      bc
D3C6:   220002        ld        (loc_0200), hl
D3C9:   62            ld        h, d
D3CA:   6B            ld        l, e
D3CB:   ED4B0602      ld        bc, (loc_0206)
D3CF:   A7            and       a
D3D0:   ED42          sbc       hl, bc
D3D2:   23            inc       hl
D3D3:   44            ld        b, h
D3D4:   4D            ld        c, l
D3D5:   62            ld        h, d
D3D6:   6B            ld        l, e
D3D7:   ED5B0002      ld        de, (loc_0200)
D3DB:   EDB8          lddr
D3DD:   C1            pop       bc
D3DE:   C9            ret
D3DF:   CD57D2        call      label_D257
D3E2:   3E09          ld        a, 09
D3E4:   320A02        ld        (loc_020A), a
D3E7:   C392D1        jp        label_D192
                    label_D3EA:
D3EA:   2A0402        ld        hl, (loc_0204)
D3ED:   ED5B0002      ld        de, (loc_0200)
D3F1:   A7            and       a
D3F2:   ED52          sbc       hl, de
D3F4:   F20AD4        jp        p, label_D40A
D3F7:   CD4BEC        call      label_EC4B
D3FA:   2146D1        ld        hl, D146
D3FD:   11C5AB        ld        de, ABC5
D400:   010D00        ld        bc, 000D
D403:   EDB0          ldir
D405:   E1            pop       hl
D406:   2192D1        ld        hl, D192
D409:   E5            push      hl
                    label_D40A:
D40A:   C9            ret
D40B:   CD57D2        call      label_D257
D40E:   CDEAD3        call      label_D3EA
D411:   11D3AB        ld        de, ABD3
D414:   CD5BE3        call      label_E35B
D417:   44            ld        b, h
D418:   4D            ld        c, l
D419:   CD51D3        call      label_D351
D41C:   220602        ld        (loc_0206), hl
D41F:   ED5B0002      ld        de, (loc_0200)
D423:   CDBCD3        call      label_D3BC
D426:   ED5B0602      ld        de, (loc_0206)
D42A:   21D3AB        ld        hl, ABD3
D42D:   EDB0          ldir
D42F:   0602          ld        b, 02
                    label_D431:
D431:   CDF8D2        call      label_D2F8
D434:   C391D2        jp        label_D291
                    label_D437:
D437:   2A0602        ld        hl, (loc_0206)
                    label_D43A:
D43A:   54            ld        d, h
D43B:   5D            ld        e, l
D43C:   A7            and       a
D43D:   ED4A          adc       hl, bc
D43F:   E5            push      hl
D440:   44            ld        b, h
D441:   4D            ld        c, l
D442:   2A0002        ld        hl, (loc_0200)
D445:   A7            and       a
D446:   ED42          sbc       hl, bc
D448:   23            inc       hl
D449:   44            ld        b, h
D44A:   4D            ld        c, l
D44B:   E1            pop       hl
D44C:   EDB0          ldir
D44E:   1B            dec       de
D44F:   ED530002      ld        (loc_0200), de
D453:   C9            ret
D454:   CD57D2        call      label_D257
D457:   010000        ld        bc, 0000
D45A:   2A0602        ld        hl, (loc_0206)
                    label_D45D:
D45D:   23            inc       hl
D45E:   03            inc       bc
D45F:   CB7E          bit       7, (hl)
D461:   28FA          jr        z, label_D45D
D463:   CD37D4        call      label_D437
D466:   2A0802        ld        hl, (loc_0208)
D469:   2B            dec       hl
D46A:   220802        ld        (loc_0208), hl
                    label_D46D:
D46D:   0601          ld        b, 01
D46F:   18C0          jr        label_D431
                    label_D471:
D471:   210602        ld        hl, 0206
D474:   111202        ld        de, 0212
D477:   0602          ld        b, 02
D479:   CD80EC        call      label_EC80
D47C:   C9            ret
                    label_D47D:
D47D:   44            ld        b, h
D47E:   4D            ld        c, l
D47F:   CDEAD3        call      label_D3EA
D482:   C5            push      bc
D483:   CD71D4        call      label_D471
D486:   C1            pop       bc
D487:   CDBCD3        call      label_D3BC
D48A:   CD71D4        call      label_D471
D48D:   1844          jr        label_D4D3
D48F:   CD57D2        call      label_D257
D492:   11D3AB        ld        de, ABD3
D495:   CD5BE3        call      label_E35B
D498:   220C02        ld        (loc_020C), hl
D49B:   11D3AB        ld        de, ABD3
D49E:   37            scf
D49F:   ED5A          adc       hl, de
D4A1:   220E02        ld        (loc_020E), hl
D4A4:   CD5DD3        call      label_D35D
D4A7:   1847          jr        label_D4F0
D4A9:   221202        ld        (loc_0212), hl
D4AC:   ED5B0E02      ld        de, (loc_020E)
D4B0:   CD5BE3        call      label_E35B
D4B3:   221002        ld        (loc_0210), hl
                    label_D4B6:
D4B6:   ED5B0C02      ld        de, (loc_020C)
D4BA:   A7            and       a
D4BB:   ED52          sbc       hl, de
D4BD:   2814          jr        z, label_D4D3
D4BF:   F27DD4        jp        p, label_D47D
D4C2:   62            ld        h, d
D4C3:   6B            ld        l, e
D4C4:   ED5B1002      ld        de, (loc_0210)
D4C8:   A7            and       a
D4C9:   ED52          sbc       hl, de
D4CB:   44            ld        b, h
D4CC:   4D            ld        c, l
D4CD:   2A1202        ld        hl, (loc_0212)
D4D0:   CD3AD4        call      label_D43A
                    label_D4D3:
D4D3:   ED4B1002      ld        bc, (loc_0210)
D4D7:   210000        ld        hl, 0000
D4DA:   A7            and       a
D4DB:   ED4A          adc       hl, bc
D4DD:   2809          jr        z, label_D4E8
D4DF:   2A0E02        ld        hl, (loc_020E)
D4E2:   ED5B1202      ld        de, (loc_0212)
D4E6:   EDB0          ldir
                    label_D4E8:
D4E8:   2A0602        ld        hl, (loc_0206)
D4EB:   CBFE          set       7, (hl)
D4ED:   C36DD4        jp        label_D46D
                    label_D4F0:
D4F0:   3E03          ld        a, 03
D4F2:   C3A2D1        jp        label_D1A2
D4F5:   CD57D2        call      label_D257
D4F8:   11D2AB        ld        de, ABD2
D4FB:   ED530E02      ld        (loc_020E), de
D4FF:   CD5BE3        call      label_E35B
D502:   221002        ld        (loc_0210), hl
D505:   2A0602        ld        hl, (loc_0206)
D508:   221202        ld        (loc_0212), hl
D50B:   CBBE          res       7, (hl)
D50D:   010000        ld        bc, 0000
                    label_D510:
D510:   23            inc       hl
D511:   03            inc       bc
D512:   CB7E          bit       7, (hl)
D514:   28FA          jr        z, label_D510
D516:   ED430C02      ld        (loc_020C), bc
D51A:   2A1002        ld        hl, (loc_0210)
D51D:   1897          jr        label_D4B6
                    label_D51F:
D51F:   3EFF          ld        a, FF
D521:   32FFAB        ld        (loc_ABFF), a
D524:   E5            push      hl
D525:   2A3502        ld        hl, (loc_0235)
                    label_D528:
D528:   BE            cp        (hl)
D529:   2004          jr        nz, label_D52F
D52B:   3620          ld        (hl), 20
D52D:   E1            pop       hl
D52E:   C9            ret
                    label_D52F:
D52F:   3620          ld        (hl), 20
D531:   23            inc       hl
D532:   18F4          jr        label_D528
                    label_D534:
D534:   ED5B3502      ld        de, (loc_0235)
D538:   CD1FD5        call      label_D51F
D53B:   CD27D7        call      label_D727
D53E:   E5            push      hl
D53F:   21FEAB        ld        hl, ABFE
D542:   CD5EE3        call      label_E35E
D545:   E1            pop       hl
D546:   3A3902        ld        a, (loc_0239)
D549:   3C            inc       a
D54A:   323902        ld        (loc_0239), a
D54D:   1A            ld        a, (de)
D54E:   C9            ret
                    label_D54F:
D54F:   2A0602        ld        hl, (loc_0206)
D552:   04            inc       b
D553:   05            dec       b
D554:   2005          jr        nz, label_D55B
                    label_D556:
D556:   C1            pop       bc
D557:   03            inc       bc
D558:   03            inc       bc
D559:   C5            push      bc
D55A:   C9            ret
                    label_D55B:
D55B:   FA75D5        jp        m, label_D575
                    label_D55E:
D55E:   23            inc       hl
D55F:   CB7E          bit       7, (hl)
D561:   28FB          jr        z, label_D55E
D563:   E5            push      hl
D564:   ED5B0002      ld        de, (loc_0200)
D568:   A7            and       a
D569:   ED52          sbc       hl, de
D56B:   E1            pop       hl
D56C:   C8            ret       z
D56D:   10EF          djnz      label_D55E
                    label_D56F:
D56F:   220602        ld        (loc_0206), hl
D572:   C356D5        jp        label_D556
                    label_D575:
D575:   78            ld        a, b
D576:   2F            cpl
D577:   3C            inc       a
D578:   47            ld        b, a
                    label_D579:
D579:   2B            dec       hl
D57A:   CB7E          bit       7, (hl)
D57C:   28FB          jr        z, label_D579
D57E:   E5            push      hl
D57F:   A7            and       a
D580:   ED5B3702      ld        de, (loc_0237)
D584:   ED52          sbc       hl, de
D586:   E1            pop       hl
D587:   FA56D5        jp        m, label_D556
D58A:   10ED          djnz      label_D579
D58C:   18E1          jr        label_D56F
                    label_D58E:
D58E:   C1            pop       bc
D58F:   C3B7D1        jp        label_D1B7
D592:   2A0202        ld        hl, (loc_0202)
D595:   ED4B0002      ld        bc, (loc_0200)
D599:   A7            and       a
D59A:   ED42          sbc       hl, bc
D59C:   CAB7D1        jp        z, label_D1B7
D59F:   AF            xor       a
D5A0:   321602        ld        (loc_0216), a
D5A3:   321502        ld        (loc_0215), a
D5A6:   2A0202        ld        hl, (loc_0202)
D5A9:   7E            ld        a, (hl)
D5AA:   FEA4          cp        A4
D5AC:   C2B7D1        jp        nz, label_D1B7
D5AF:   220602        ld        (loc_0206), hl
D5B2:   0629          ld        b, 29
                    label_D5B4:
D5B4:   C5            push      bc
D5B5:   0601          ld        b, 01
D5B7:   CD4FD5        call      label_D54F
D5BA:   18D2          jr        label_D58E
D5BC:   2A0602        ld        hl, (loc_0206)
D5BF:   7E            ld        a, (hl)
D5C0:   FEA4          cp        A4
D5C2:   282E          jr        z, label_D5F2
D5C4:   3A1502        ld        a, (loc_0215)
D5C7:   3C            inc       a
D5C8:   321502        ld        (loc_0215), a
D5CB:   C1            pop       bc
D5CC:   10E6          djnz      label_D5B4
D5CE:   C3B7D1        jp        label_D1B7
                    label_D5D1:
D5D1:   3E2E          ld        a, 2E
D5D3:   12            ld        (de), a
D5D4:   1855          jr        label_D62B
                    label_D5D6:
D5D6:   3A3902        ld        a, (loc_0239)
D5D9:   FD7700        ld        (iy + 00), a
D5DC:   FD23          inc       iy
D5DE:   E5            push      hl
D5DF:   FDE5          push      iy
D5E1:   E1            pop       hl
D5E2:   7D            ld        a, l
D5E3:   212B02        ld        hl, 022B
D5E6:   BD            cp        l
D5E7:   E1            pop       hl
D5E8:   28E7          jr        z, label_D5D1
D5EA:   13            inc       de
D5EB:   13            inc       de
D5EC:   ED533502      ld        (loc_0235), de
D5F0:   1821          jr        label_D613
                    label_D5F2:
D5F2:   23            inc       hl
D5F3:   223702        ld        (loc_0237), hl
D5F6:   CD40EC        call      label_EC40
D5F9:   11C4AB        ld        de, ABC4
D5FC:   215DD1        ld        hl, D15D
D5FF:   CD27D7        call      label_D727
D602:   ED533502      ld        (loc_0235), de
D606:   FD211702      ld        iy, 0217
                    label_D60A:
D60A:   3EFF          ld        a, FF
D60C:   323902        ld        (loc_0239), a
D60F:   2A0202        ld        hl, (loc_0202)
D612:   23            inc       hl
                    label_D613:
D613:   7E            ld        a, (hl)
D614:   FEA4          cp        A4
D616:   28F2          jr        z, label_D60A
D618:   CD34D5        call      label_D534
D61B:   FE2C          cp        2C
D61D:   28B7          jr        z, label_D5D6
D61F:   FE2E          cp        2E
D621:   20F0          jr        nz, label_D613
D623:   3A3902        ld        a, (loc_0239)
D626:   FD7700        ld        (iy + 00), a
D629:   FD23          inc       iy
                    label_D62B:
D62B:   3E80          ld        a, 80
D62D:   FD7700        ld        (iy + 00), a
D630:   CD40EC        call      label_EC40
D633:   11C4AB        ld        de, ABC4
D636:   2153D1        ld        hl, D153
D639:   CD27D7        call      label_D727
D63C:   ED533502      ld        (loc_0235), de
                    label_D640:
D640:   3EFF          ld        a, FF
D642:   323902        ld        (loc_0239), a
D645:   2A0202        ld        hl, (loc_0202)
D648:   23            inc       hl
                    label_D649:
D649:   7E            ld        a, (hl)
D64A:   FEA4          cp        A4
D64C:   28F2          jr        z, label_D640
D64E:   CD34D5        call      label_D534
D651:   FE2E          cp        2E
D653:   2802          jr        z, label_D657
D655:   18F2          jr        label_D649
                    label_D657:
D657:   CD40EC        call      label_EC40
                    label_D65A:
D65A:   CD4BEC        call      label_EC4B
D65D:   21C4AB        ld        hl, ABC4
D660:   223502        ld        (loc_0235), hl
D663:   2A3702        ld        hl, (loc_0237)
D666:   220602        ld        (loc_0206), hl
D669:   3E3F          ld        a, 3F
D66B:   32C4AB        ld        (loc_ABC4), a
D66E:   11C6AB        ld        de, ABC6
D671:   CD5BE3        call      label_E35B
D674:   3E20          ld        a, 20
D676:   32C4AB        ld        (loc_ABC4), a
D679:   3AB600        ld        a, (loc_00B6)
D67C:   FE00          cp        00
D67E:   C2A2D1        jp        nz, label_D1A2
D681:   3AC6AB        ld        a, (loc_ABC6)
D684:   FE20          cp        20
D686:   2022          jr        nz, label_D6AA
D688:   2A2F02        ld        hl, (loc_022F)
D68B:   220602        ld        (loc_0206), hl
D68E:   3A1502        ld        a, (loc_0215)
D691:   47            ld        b, a
D692:   CD4FD5        call      label_D54F
D695:   18C3          jr        label_D65A
D697:   213A02        ld        hl, 023A
D69A:   11C6AB        ld        de, ABC6
D69D:   011E00        ld        bc, 001E
D6A0:   EDB0          ldir
D6A2:   3A3902        ld        a, (loc_0239)
D6A5:   321602        ld        (loc_0216), a
D6A8:   1812          jr        label_D6BC
                    label_D6AA:
D6AA:   45            ld        b, l
D6AB:   48            ld        c, b
D6AC:   ED433302      ld        (loc_0233), bc
D6B0:   3A3902        ld        a, (loc_0239)
D6B3:   321602        ld        (loc_0216), a
                    label_D6B6:
D6B6:   47            ld        b, a
D6B7:   CD4FD5        call      label_D54F
D6BA:   189E          jr        label_D65A
                    label_D6BC:
D6BC:   ED4B3302      ld        bc, (loc_0233)
D6C0:   11C6AB        ld        de, ABC6
D6C3:   2A0602        ld        hl, (loc_0206)
D6C6:   CBBE          res       7, (hl)
D6C8:   CD49E3        call      label_E349
D6CB:   223102        ld        (loc_0231), hl
D6CE:   2A0602        ld        hl, (loc_0206)
D6D1:   222F02        ld        (loc_022F), hl
D6D4:   CBFE          set       7, (hl)
D6D6:   2805          jr        z, label_D6DD
                    label_D6D8:
D6D8:   3A1502        ld        a, (loc_0215)
D6DB:   18D9          jr        label_D6B6
                    label_D6DD:
D6DD:   2A3102        ld        hl, (loc_0231)
D6E0:   CB7E          bit       7, (hl)
D6E2:   28F4          jr        z, label_D6D8
D6E4:   21C6AB        ld        hl, ABC6
D6E7:   113A02        ld        de, 023A
D6EA:   011E00        ld        bc, 001E
D6ED:   EDB0          ldir
D6EF:   CD4BEC        call      label_EC4B
D6F2:   FD211702      ld        iy, 0217
                    label_D6F6:
D6F6:   FD7E00        ld        a, (iy + 00)
D6F9:   211602        ld        hl, 0216
D6FC:   96            sub       (hl)
D6FD:   47            ld        b, a
D6FE:   FD7E00        ld        a, (iy + 00)
D701:   321602        ld        (loc_0216), a
D704:   CD4FD5        call      label_D54F
                    label_D707:
D707:   18FE          jr        label_D707
D709:   2A0602        ld        hl, (loc_0206)
D70C:   ED5B3502      ld        de, (loc_0235)
D710:   CD27D7        call      label_D727
D713:   13            inc       de
D714:   ED533502      ld        (loc_0235), de
D718:   FD23          inc       iy
D71A:   FD7E00        ld        a, (iy + 00)
D71D:   FE80          cp        80
D71F:   20D5          jr        nz, label_D6F6
D721:   C357D6        jp        label_D657
D724:   C303E0        jp        label_E003
                    label_D727:
D727:   E5            push      hl
D728:   D5            push      de
                    label_D729:
D729:   01FCAB        ld        bc, ABFC
D72C:   7B            ld        a, e
D72D:   B9            cp        c
D72E:   F23ED7        jp        p, label_D73E
D731:   7E            ld        a, (hl)
D732:   CBBF          res       7, a
D734:   12            ld        (de), a
D735:   13            inc       de
D736:   23            inc       hl
D737:   CB7E          bit       7, (hl)
D739:   28EE          jr        z, label_D729
D73B:   C1            pop       bc
D73C:   C1            pop       bc
D73D:   C9            ret
                    label_D73E:
D73E:   D1            pop       de
D73F:   CD1FD5        call      label_D51F
D742:   CD40EC        call      label_EC40
D745:   E1            pop       hl
D746:   11C4AB        ld        de, ABC4
D749:   ED533502      ld        (loc_0235), de
D74D:   18D8          jr        label_D727
                    label_D74F:
D74F:   2A0802        ld        hl, (loc_0208)
D752:   ED4B1201      ld        bc, (loc_0112)
D756:   09            add       hl, bc
D757:   220802        ld        (loc_0208), hl
                    label_D75A:
D75A:   01BF03        ld        bc, 03BF
D75D:   2100A8        ld        hl, A800
D760:   C3F8E7        jp        label_E7F8
D763:   CD5AD7        call      label_D75A
D766:   214003        ld        hl, 0340
D769:   22FC00        ld        (loc_00FC), hl
D76C:   2100A8        ld        hl, A800
D76F:   22FA00        ld        (loc_00FA), hl
D772:   220001        ld        (loc_0100), hl
D775:   AF            xor       a
D776:   320201        ld        (loc_0102), a
D779:   210000        ld        hl, 0000
D77C:   220501        ld        (loc_0105), hl
D77F:   2A0202        ld        hl, (loc_0202)
D782:   220301        ld        (loc_0103), hl
                    label_D785:
D785:   2A0301        ld        hl, (loc_0103)
D788:   010000        ld        bc, 0000
                    label_D78B:
D78B:   23            inc       hl
D78C:   03            inc       bc
D78D:   CB7E          bit       7, (hl)
D78F:   28FA          jr        z, label_D78B
D791:   220602        ld        (loc_0206), hl
D794:   ED43FE00      ld        (loc_00FE), bc
D798:   CD02E7        call      label_E702
D79B:   2A0301        ld        hl, (loc_0103)
D79E:   ED5B0602      ld        de, (loc_0206)
D7A2:   ED530301      ld        (loc_0103), de
D7A6:   220602        ld        (loc_0206), hl
D7A9:   7E            ld        a, (hl)
D7AA:   FEAF          cp        AF
D7AC:   20D7          jr        nz, label_D785
D7AE:   23            inc       hl
D7AF:   7E            ld        a, (hl)
D7B0:   FE2A          cp        2A
D7B2:   20D1          jr        nz, label_D785
D7B4:   CDD4E6        call      label_E6D4
D7B7:   CD5AD7        call      label_D75A
D7BA:   CD40EC        call      label_EC40
D7BD:   21DDE2        ld        hl, E2DD
                    label_D7C0:
D7C0:   010900        ld        bc, 0009
D7C3:   11C5AB        ld        de, ABC5
D7C6:   EDB0          ldir
D7C8:   CD40EC        call      label_EC40
D7CB:   2A0602        ld        hl, (loc_0206)
D7CE:   23            inc       hl
D7CF:   CDBDE0        call      label_E0BD
                    label_D7D2:
D7D2:   210000        ld        hl, 0000
D7D5:   220602        ld        (loc_0206), hl
D7D8:   CD40EC        call      label_EC40
D7DB:   3E13          ld        a, 13
D7DD:   C3A2D1        jp        label_D1A2
D7E0:   CD5AD7        call      label_D75A
D7E3:   213CD8        ld        hl, D83C
D7E6:   221401        ld        (loc_0114), hl
D7E9:   2100A8        ld        hl, A800
D7EC:   220701        ld        (loc_0107), hl
D7EF:   214003        ld        hl, 0340
D7F2:   220901        ld        (loc_0109), hl
D7F5:   AF            xor       a
D7F6:   320F01        ld        (loc_010F), a
D7F9:   210000        ld        hl, 0000
D7FC:   220D01        ld        (loc_010D), hl
D7FF:   221201        ld        (loc_0112), hl
D802:   2A0002        ld        hl, (loc_0200)
D805:   221001        ld        (loc_0110), hl
                    label_D808:
D808:   CDEAD3        call      label_D3EA
D80B:   CD78E7        call      label_E778
D80E:   2A1001        ld        hl, (loc_0110)
D811:   CBFE          set       7, (hl)
D813:   E5            push      hl
D814:   220602        ld        (loc_0206), hl
D817:   ED4B0B01      ld        bc, (loc_010B)
D81B:   09            add       hl, bc
D81C:   CBFE          set       7, (hl)
D81E:   221001        ld        (loc_0110), hl
D821:   220002        ld        (loc_0200), hl
D824:   E1            pop       hl
D825:   7E            ld        a, (hl)
D826:   FEAF          cp        AF
D828:   20DE          jr        nz, label_D808
D82A:   23            inc       hl
D82B:   7E            ld        a, (hl)
D82C:   FE2A          cp        2A
D82E:   20D8          jr        nz, label_D808
D830:   CD4FD7        call      label_D74F
D833:   CD40EC        call      label_EC40
D836:   21F5E0        ld        hl, E0F5
D839:   C3C0D7        jp        label_D7C0
D83C:   CD4FD7        call      label_D74F
D83F:   21D5E0        ld        hl, E0D5
D842:   11C5AB        ld        de, ABC5
D845:   010A00        ld        bc, 000A
D848:   EDB0          ldir
D84A:   C3D2D7        jp        label_D7D2
D84D:   210802        ld        hl, 0208
D850:   115E02        ld        de, 025E
D853:   D5            push      de
D854:   CDA3E6        call      label_E6A3
D857:   E1            pop       hl
D858:   115802        ld        de, 0258
D85B:   D5            push      de
D85C:   CDACE4        call      label_E4AC
D85F:   E1            pop       hl
D860:   11D2AB        ld        de, ABD2
D863:   CDF2E5        call      label_E5F2
D866:   11D8AB        ld        de, ABD8
D869:   2139D0        ld        hl, D039
D86C:   010700        ld        bc, 0007
D86F:   EDB0          ldir
D871:   C392D1        jp        label_D192
D874:   C368D9        jp        label_D968
D877:   3020          jr        nc, label_D899
D879:   2031          jr        nz, label_D8AC
D87B:   2020          jr        nz, label_D89D
D87D:   322020        ld        (loc_2020), a
D880:   33            inc       sp
D881:   2020          jr        nz, label_D8A3
D883:   34            inc       (hl)
D884:   2020          jr        nz, label_D8A6
D886:   35            dec       (hl)
D887:   2020          jr        nz, label_D8A9
D889:   3620          ld        (hl), 20
D88B:   2037          jr        nz, label_D8C4
D88D:   2020          jr        nz, label_D8AF
D88F:   3820          jr        c, label_D8B1
D891:   2039          jr        nz, label_D8CC
D893:   2020          jr        nz, label_D8B5
D895:   41            ld        b, c
D896:   2020          jr        nz, label_D8B8
D898:   42            ld        b, d
                    label_D899:
D899:   2020          jr        nz, label_D8BB
D89B:   43            ld        b, e
D89C:   2020          jr        nz, label_D8BE
D89E:   44            ld        b, h
D89F:   2020          jr        nz, label_D8C1
D8A1:   45            ld        b, l
D8A2:   2020          jr        nz, label_D8C4
D8A4:   46            ld        b, (hl)
D8A5:   80            add       a, b
                    label_D8A6:
D8A6:   44            ld        b, h
D8A7:   2055          jr        nz, label_D8FE
                    label_D8A9:
D8A9:   204D          jr        nz, label_D8F8
                    label_D8AB:
D8AB:   2050          jr        nz, label_D8FD
D8AD:   2020          jr        nz, label_D8CF
                    label_D8AF:
D8AF:   50            ld        d, b
D8B0:   2052          jr        nz, label_D904
D8B2:   204F          jr        nz, label_D903
D8B4:   2047          jr        nz, label_D8FD
D8B6:   2052          jr        nz, label_D90A
                    label_D8B8:
D8B8:   2041          jr        nz, label_D8FB
D8BA:   204D          jr        nz, label_D909
D8BC:   49            ld        c, c
D8BD:   4E            ld        c, (hl)
                    label_D8BE:
D8BE:   49            ld        c, c
D8BF:   5A            ld        e, d
D8C0:   49            ld        c, c
                    label_D8C1:
D8C1:   4F            ld        c, a
D8C2:   3A4649        ld        a, (loc_4946)
D8C5:   4E            ld        c, (hl)
D8C6:   45            ld        b, l
D8C7:   3A4F4B        ld        a, (loc_4B4F)
D8CA:   203F          jr        nz, label_D90B
                    label_D8CC:
D8CC:   2028          jr        nz, label_D8F6
D8CE:   59            ld        e, c
                    label_D8CF:
D8CF:   2F            cpl
D8D0:   4E            ld        c, (hl)
D8D1:   29            add       hl, hl
D8D2:   3A5944        ld        a, (loc_4459)
D8D5:   55            ld        d, l
D8D6:   4D            ld        c, l
D8D7:   50            ld        d, b
D8D8:   2044          jr        nz, label_D91E
D8DA:   49            ld        c, c
D8DB:   2041          jr        nz, label_D91E
D8DD:   4C            ld        c, h
D8DE:   54            ld        d, h
D8DF:   52            ld        d, d
D8E0:   4F            ld        c, a
D8E1:   313233        ld        sp, 3332
D8E4:   34            inc       (hl)
D8E5:   35            dec       (hl)
D8E6:   3637          ld        (hl), 37
D8E8:   3839          jr        c, label_D923
D8EA:   3041          jr        nc, label_D92D
D8EC:   42            ld        b, d
D8ED:   43            ld        b, e
D8EE:   44            ld        b, h
D8EF:   45            ld        b, l
D8F0:   46            ld        b, (hl)
D8F1:   00            nop
D8F2:   1695          ld        d, 95
D8F4:   A8            xor       b
D8F5:   A6            and       (hl)
                    label_D8F6:
D8F6:   D8            ret       c
D8F7:   00            nop
                    label_D8F8:
D8F8:   07            rlca
D8F9:   0A            ld        a, (bc)
D8FA:   AA            xor       d
                    label_D8FB:
D8FB:   BC            cp        h
D8FC:   D8            ret       c
                    label_D8FD:
D8FD:   00            nop
                    label_D8FE:
D8FE:   05            dec       b
D8FF:   20AA          jr        nz, label_D8AB
D901:   C3D811        jp        label_11D8
                    label_D904:
D904:   04            inc       b
D905:   12            ld        (de), a
D906:   AA            xor       d
D907:   1601          ld        d, 01
                    label_D909:
D909:   22D911        ld        (loc_11D9), hl
D90C:   04            inc       b
D90D:   26AA          ld        h, AA
D90F:   1601          ld        d, 01
D911:   22D900        ld        (loc_00D9), hl
D914:   0B            dec       bc
D915:   CAAAC8        jp        z, label_C8AA
D918:   D8            ret       c
D919:   09            add       hl, bc
D91A:   01D6AA        ld        bc, AAD6
D91D:   F400D3        call      p, label_D300
D920:   D8            ret       c
D921:   FF            rst       38h
D922:   21E1D8        ld        hl, D8E1
D925:   0E10          ld        c, 10
D927:   111601        ld        de, 0116
D92A:   0604          ld        b, 04
D92C:   1B            dec       de
                    label_D92D:
D92D:   13            inc       de
D92E:   1A            ld        a, (de)
D92F:   E5            push      hl
D930:   C5            push      bc
D931:   0600          ld        b, 00
D933:   EDB1          cpir
D935:   C1            pop       bc
D936:   E1            pop       hl
D937:   2003          jr        nz, label_D93C
D939:   10F2          djnz      label_D92D
D93B:   BF            cp        a
                    label_D93C:
D93C:   37            scf
D93D:   C0            ret       nz
D93E:   2AF200        ld        hl, (loc_00F2)
D941:   22F000        ld        (loc_00F0), hl
D944:   211601        ld        hl, 0116
D947:   11F200        ld        de, 00F2
D94A:   0602          ld        b, 02
D94C:   CDF4FF        call      label_FFF4
D94F:   2AF200        ld        hl, (loc_00F2)
D952:   7C            ld        a, h
D953:   65            ld        h, l
D954:   6F            ld        l, a
D955:   22F200        ld        (loc_00F2), hl
                    label_D958:
D958:   37            scf
D959:   3F            ccf
D95A:   C9            ret
D95B:   3AF400        ld        a, (loc_00F4)
D95E:   FE59          cp        59
D960:   28F6          jr        z, label_D958
D962:   FE4E          cp        4E
D964:   28F2          jr        z, label_D958
D966:   37            scf
D967:   C9            ret
                    label_D968:
D968:   2A3101        ld        hl, (loc_0131)
D96B:   010001        ld        bc, 0100
D96E:   ED42          sbc       hl, bc
D970:   221A01        ld        (loc_011A), hl
D973:   221C01        ld        (loc_011C), hl
D976:   21C4AB        ld        hl, ABC4
D979:   221E01        ld        (loc_011E), hl
D97C:   3E64          ld        a, 64
D97E:   322001        ld        (loc_0120), a
D981:   AF            xor       a
D982:   322301        ld        (loc_0123), a
D985:   3A2401        ld        a, (loc_0124)
D988:   CBFF          set       7, a
D98A:   322401        ld        (loc_0124), a
D98D:   CD85FF        call      label_FF85
                    label_D990:
D990:   CDEEFF        call      label_FFEE
D993:   1114A8        ld        de, A814
D996:   62            ld        h, d
D997:   6B            ld        l, e
D998:   36A0          ld        (hl), A0
D99A:   13            inc       de
D99B:   011700        ld        bc, 0017
D99E:   EDB0          ldir
D9A0:   11D4A8        ld        de, A8D4
D9A3:   62            ld        h, d
D9A4:   6B            ld        l, e
D9A5:   36A0          ld        (hl), A0
D9A7:   13            inc       de
D9A8:   011700        ld        bc, 0017
D9AB:   EDB0          ldir
D9AD:   21F1D8        ld        hl, D8F1
D9B0:   CD64FF        call      label_FF64
D9B3:   3AF400        ld        a, (loc_00F4)
D9B6:   FE59          cp        59
D9B8:   20D6          jr        nz, label_D990
D9BA:   3AF000        ld        a, (loc_00F0)
D9BD:   E6F0          and       F0
D9BF:   32F000        ld        (loc_00F0), a
D9C2:   CD58DA        call      label_DA58
                    label_D9C5:
D9C5:   2AF200        ld        hl, (loc_00F2)
D9C8:   A7            and       a
D9C9:   ED5BF000      ld        de, (loc_00F0)
D9CD:   ED52          sbc       hl, de
D9CF:   FA75DA        jp        m, label_DA75
D9D2:   2AF000        ld        hl, (loc_00F0)
D9D5:   7C            ld        a, h
D9D6:   32F700        ld        (loc_00F7), a
D9D9:   7D            ld        a, l
D9DA:   32F800        ld        (loc_00F8), a
D9DD:   0602          ld        b, 02
D9DF:   11F700        ld        de, 00F7
D9E2:   2A1A01        ld        hl, (loc_011A)
D9E5:   23            inc       hl
D9E6:   CDF1FF        call      label_FFF1
D9E9:   2AF000        ld        hl, (loc_00F0)
D9EC:   2A1A01        ld        hl, (loc_011A)
D9EF:   113D00        ld        de, 003D
D9F2:   19            add       hl, de
D9F3:   EB            ex        de, hl
D9F4:   2AF000        ld        hl, (loc_00F0)
D9F7:   011000        ld        bc, 0010
D9FA:   EDB0          ldir
D9FC:   2AF000        ld        hl, (loc_00F0)
D9FF:   54            ld        d, h
DA00:   5D            ld        e, l
DA01:   0610          ld        b, 10
DA03:   21D000        ld        hl, 00D0
DA06:   CDF1FF        call      label_FFF1
DA09:   2A1A01        ld        hl, (loc_011A)
DA0C:   110700        ld        de, 0007
DA0F:   19            add       hl, de
DA10:   EB            ex        de, hl
DA11:   21D000        ld        hl, 00D0
DA14:   012000        ld        bc, 0020
DA17:   3E20          ld        a, 20
                    label_DA19:
DA19:   12            ld        (de), a
DA1A:   13            inc       de
DA1B:   EDA0          ldi
DA1D:   EDA0          ldi
DA1F:   EA19DA        jp        pe, label_DA19
DA22:   2A1A01        ld        hl, (loc_011A)
DA25:   013D00        ld        bc, 003D
DA28:   09            add       hl, bc
DA29:   0610          ld        b, 10
                    label_DA2B:
DA2B:   7E            ld        a, (hl)
DA2C:   CB7F          bit       7, a
DA2E:   200B          jr        nz, label_DA3B
DA30:   FE7F          cp        7F
DA32:   2807          jr        z, label_DA3B
DA34:   FE20          cp        20
DA36:   2805          jr        z, label_DA3D
DA38:   F23DDA        jp        p, label_DA3D
                    label_DA3B:
DA3B:   362E          ld        (hl), 2E
                    label_DA3D:
DA3D:   23            inc       hl
DA3E:   10EB          djnz      label_DA2B
DA40:   2A1A01        ld        hl, (loc_011A)
DA43:   3602          ld        (hl), 02
DA45:   CD88FF        call      label_FF88
DA48:   2AF000        ld        hl, (loc_00F0)
DA4B:   011000        ld        bc, 0010
DA4E:   09            add       hl, bc
DA4F:   22F000        ld        (loc_00F0), hl
DA52:   CD58DA        call      label_DA58
DA55:   C3C5D9        jp        label_D9C5
                    label_DA58:
DA58:   3A2301        ld        a, (loc_0123)
DA5B:   FE00          cp        00
DA5D:   C0            ret       nz
DA5E:   2A1A01        ld        hl, (loc_011A)
DA61:   3603          ld        (hl), 03
DA63:   2A1A01        ld        hl, (loc_011A)
DA66:   110900        ld        de, 0009
DA69:   19            add       hl, de
DA6A:   EB            ex        de, hl
DA6B:   2177D8        ld        hl, D877
DA6E:   CDE2FF        call      label_FFE2
DA71:   CD88FF        call      label_FF88
DA74:   C9            ret
                    label_DA75:
DA75:   CDEEFF        call      label_FFEE
DA78:   010D00        ld        bc, 000D
DA7B:   21D4D8        ld        hl, D8D4
DA7E:   118BAB        ld        de, AB8B
DA81:   EDB0          ldir
DA83:   010900        ld        bc, 0009
DA86:   21CAD8        ld        hl, D8CA
DA89:   EDB0          ldir
DA8B:   13            inc       de
DA8C:   CDCDFF        call      label_FFCD
DA8F:   1A            ld        a, (de)
DA90:   FE4E          cp        4E
DA92:   CA61FF        jp        z, label_FF61
DA95:   FE59          cp        59
DA97:   CA90D9        jp        z, label_D990
DA9A:   18D9          jr        label_DA75
DA9C:   FF            rst       38h
DA9D:   FF            rst       38h
DA9E:   FF            rst       38h
DA9F:   FF            rst       38h
DAA0:   FF            rst       38h
DAA1:   FF            rst       38h
DAA2:   FF            rst       38h
DAA3:   FF            rst       38h
DAA4:   FF            rst       38h
DAA5:   FF            rst       38h
DAA6:   FF            rst       38h
DAA7:   FF            rst       38h
DAA8:   FF            rst       38h
DAA9:   FF            rst       38h
DAAA:   FF            rst       38h
DAAB:   FF            rst       38h
DAAC:   FF            rst       38h
DAAD:   FF            rst       38h
DAAE:   FF            rst       38h
DAAF:   FF            rst       38h
DAB0:   FF            rst       38h
DAB1:   FF            rst       38h
DAB2:   FF            rst       38h
DAB3:   FF            rst       38h
DAB4:   FF            rst       38h
DAB5:   FF            rst       38h
DAB6:   FF            rst       38h
DAB7:   FF            rst       38h
DAB8:   FF            rst       38h
DAB9:   FF            rst       38h
DABA:   FF            rst       38h
DABB:   FF            rst       38h
DABC:   FF            rst       38h
DABD:   FF            rst       38h
DABE:   FF            rst       38h
DABF:   FF            rst       38h
DAC0:   FF            rst       38h
DAC1:   FF            rst       38h
DAC2:   FF            rst       38h
DAC3:   FF            rst       38h
DAC4:   FF            rst       38h
DAC5:   FF            rst       38h
DAC6:   FF            rst       38h
DAC7:   FF            rst       38h
DAC8:   FF            rst       38h
DAC9:   FF            rst       38h
DACA:   FF            rst       38h
DACB:   FF            rst       38h
DACC:   FF            rst       38h
DACD:   FF            rst       38h
DACE:   FF            rst       38h
DACF:   FF            rst       38h
DAD0:   FF            rst       38h
DAD1:   FF            rst       38h
DAD2:   FF            rst       38h
DAD3:   FF            rst       38h
DAD4:   FF            rst       38h
DAD5:   FF            rst       38h
DAD6:   FF            rst       38h
DAD7:   FF            rst       38h
DAD8:   FF            rst       38h
DAD9:   FF            rst       38h
DADA:   FF            rst       38h
DADB:   FF            rst       38h
DADC:   FF            rst       38h
DADD:   FF            rst       38h
DADE:   FF            rst       38h
DADF:   FF            rst       38h
DAE0:   FF            rst       38h
DAE1:   FF            rst       38h
DAE2:   FF            rst       38h
DAE3:   FF            rst       38h
DAE4:   FF            rst       38h
DAE5:   FF            rst       38h
DAE6:   FF            rst       38h
DAE7:   FF            rst       38h
DAE8:   FF            rst       38h
DAE9:   FF            rst       38h
DAEA:   FF            rst       38h
DAEB:   FF            rst       38h
DAEC:   FF            rst       38h
DAED:   FF            rst       38h
DAEE:   FF            rst       38h
DAEF:   FF            rst       38h
DAF0:   FF            rst       38h
DAF1:   FF            rst       38h
DAF2:   FF            rst       38h
DAF3:   FF            rst       38h
DAF4:   FF            rst       38h
DAF5:   FF            rst       38h
DAF6:   FF            rst       38h
DAF7:   FF            rst       38h
DAF8:   FF            rst       38h
DAF9:   FF            rst       38h
DAFA:   FF            rst       38h
DAFB:   FF            rst       38h
DAFC:   FF            rst       38h
DAFD:   FF            rst       38h
DAFE:   FF            rst       38h
DAFF:   FF            rst       38h
DB00:   FF            rst       38h
DB01:   FF            rst       38h
DB02:   FF            rst       38h
DB03:   FF            rst       38h
DB04:   FF            rst       38h
DB05:   FF            rst       38h
DB06:   FF            rst       38h
DB07:   FF            rst       38h
DB08:   FF            rst       38h
DB09:   FF            rst       38h
DB0A:   FF            rst       38h
DB0B:   FF            rst       38h
DB0C:   FF            rst       38h
DB0D:   FF            rst       38h
DB0E:   FF            rst       38h
DB0F:   FF            rst       38h
DB10:   FF            rst       38h
DB11:   FF            rst       38h
DB12:   FF            rst       38h
DB13:   FF            rst       38h
DB14:   FF            rst       38h
DB15:   FF            rst       38h
DB16:   FF            rst       38h
DB17:   FF            rst       38h
DB18:   FF            rst       38h
DB19:   FF            rst       38h
DB1A:   FF            rst       38h
DB1B:   FF            rst       38h
DB1C:   FF            rst       38h
DB1D:   FF            rst       38h
DB1E:   FF            rst       38h
DB1F:   FF            rst       38h
DB20:   FF            rst       38h
DB21:   FF            rst       38h
DB22:   FF            rst       38h
DB23:   FF            rst       38h
DB24:   FF            rst       38h
DB25:   FF            rst       38h
DB26:   FF            rst       38h
DB27:   FF            rst       38h
DB28:   FF            rst       38h
DB29:   FF            rst       38h
DB2A:   FF            rst       38h
DB2B:   FF            rst       38h
DB2C:   FF            rst       38h
DB2D:   FF            rst       38h
DB2E:   FF            rst       38h
DB2F:   FF            rst       38h
DB30:   FF            rst       38h
DB31:   FF            rst       38h
DB32:   FF            rst       38h
DB33:   FF            rst       38h
DB34:   FF            rst       38h
DB35:   FF            rst       38h
DB36:   FF            rst       38h
DB37:   FF            rst       38h
DB38:   FF            rst       38h
DB39:   FF            rst       38h
DB3A:   FF            rst       38h
DB3B:   FF            rst       38h
DB3C:   FF            rst       38h
DB3D:   FF            rst       38h
DB3E:   FF            rst       38h
DB3F:   FF            rst       38h
DB40:   FF            rst       38h
DB41:   FF            rst       38h
DB42:   FF            rst       38h
DB43:   FF            rst       38h
DB44:   FF            rst       38h
DB45:   FF            rst       38h
DB46:   FF            rst       38h
DB47:   FF            rst       38h
DB48:   FF            rst       38h
DB49:   FF            rst       38h
DB4A:   FF            rst       38h
DB4B:   FF            rst       38h
DB4C:   FF            rst       38h
DB4D:   FF            rst       38h
DB4E:   FF            rst       38h
DB4F:   FF            rst       38h
DB50:   FF            rst       38h
DB51:   FF            rst       38h
DB52:   FF            rst       38h
DB53:   FF            rst       38h
DB54:   FF            rst       38h
DB55:   FF            rst       38h
DB56:   FF            rst       38h
DB57:   FF            rst       38h
DB58:   FF            rst       38h
DB59:   FF            rst       38h
DB5A:   FF            rst       38h
DB5B:   FF            rst       38h
DB5C:   FF            rst       38h
DB5D:   FF            rst       38h
DB5E:   FF            rst       38h
DB5F:   FF            rst       38h
DB60:   FF            rst       38h
DB61:   FF            rst       38h
DB62:   FF            rst       38h
DB63:   FF            rst       38h
DB64:   FF            rst       38h
DB65:   FF            rst       38h
DB66:   FF            rst       38h
DB67:   FF            rst       38h
DB68:   FF            rst       38h
DB69:   FF            rst       38h
DB6A:   FF            rst       38h
DB6B:   FF            rst       38h
DB6C:   FF            rst       38h
DB6D:   FF            rst       38h
DB6E:   FF            rst       38h
DB6F:   FF            rst       38h
DB70:   FF            rst       38h
DB71:   FF            rst       38h
DB72:   FF            rst       38h
DB73:   FF            rst       38h
DB74:   FF            rst       38h
DB75:   FF            rst       38h
DB76:   FF            rst       38h
DB77:   FF            rst       38h
DB78:   FF            rst       38h
DB79:   FF            rst       38h
DB7A:   FF            rst       38h
DB7B:   FF            rst       38h
DB7C:   FF            rst       38h
DB7D:   FF            rst       38h
DB7E:   FF            rst       38h
DB7F:   FF            rst       38h
DB80:   FF            rst       38h
DB81:   FF            rst       38h
DB82:   FF            rst       38h
DB83:   FF            rst       38h
DB84:   FF            rst       38h
DB85:   FF            rst       38h
DB86:   FF            rst       38h
DB87:   FF            rst       38h
DB88:   FF            rst       38h
DB89:   FF            rst       38h
DB8A:   FF            rst       38h
DB8B:   FF            rst       38h
DB8C:   FF            rst       38h
DB8D:   FF            rst       38h
DB8E:   FF            rst       38h
DB8F:   FF            rst       38h
DB90:   FF            rst       38h
DB91:   FF            rst       38h
DB92:   FF            rst       38h
DB93:   FF            rst       38h
DB94:   FF            rst       38h
DB95:   FF            rst       38h
DB96:   FF            rst       38h
DB97:   FF            rst       38h
DB98:   FF            rst       38h
DB99:   FF            rst       38h
DB9A:   FF            rst       38h
DB9B:   FF            rst       38h
DB9C:   FF            rst       38h
DB9D:   FF            rst       38h
DB9E:   FF            rst       38h
DB9F:   FF            rst       38h
DBA0:   FF            rst       38h
DBA1:   FF            rst       38h
DBA2:   FF            rst       38h
DBA3:   FF            rst       38h
DBA4:   FF            rst       38h
DBA5:   FF            rst       38h
DBA6:   FF            rst       38h
DBA7:   FF            rst       38h
DBA8:   FF            rst       38h
DBA9:   FF            rst       38h
DBAA:   FF            rst       38h
DBAB:   FF            rst       38h
DBAC:   FF            rst       38h
DBAD:   FF            rst       38h
DBAE:   FF            rst       38h
DBAF:   FF            rst       38h
DBB0:   FF            rst       38h
DBB1:   FF            rst       38h
DBB2:   FF            rst       38h
DBB3:   FF            rst       38h
DBB4:   FF            rst       38h
DBB5:   FF            rst       38h
DBB6:   FF            rst       38h
DBB7:   FF            rst       38h
DBB8:   FF            rst       38h
DBB9:   FF            rst       38h
DBBA:   FF            rst       38h
DBBB:   FF            rst       38h
DBBC:   FF            rst       38h
DBBD:   FF            rst       38h
DBBE:   FF            rst       38h
DBBF:   FF            rst       38h
DBC0:   FF            rst       38h
DBC1:   FF            rst       38h
DBC2:   FF            rst       38h
DBC3:   FF            rst       38h
DBC4:   FF            rst       38h
DBC5:   FF            rst       38h
DBC6:   FF            rst       38h
DBC7:   FF            rst       38h
DBC8:   FF            rst       38h
DBC9:   FF            rst       38h
DBCA:   FF            rst       38h
DBCB:   FF            rst       38h
DBCC:   FF            rst       38h
DBCD:   FF            rst       38h
DBCE:   FF            rst       38h
DBCF:   FF            rst       38h
DBD0:   FF            rst       38h
DBD1:   FF            rst       38h
DBD2:   FF            rst       38h
DBD3:   FF            rst       38h
DBD4:   FF            rst       38h
DBD5:   FF            rst       38h
DBD6:   FF            rst       38h
DBD7:   FF            rst       38h
DBD8:   FF            rst       38h
DBD9:   FF            rst       38h
DBDA:   FF            rst       38h
DBDB:   FF            rst       38h
DBDC:   FF            rst       38h
DBDD:   FF            rst       38h
DBDE:   FF            rst       38h
DBDF:   FF            rst       38h
DBE0:   FF            rst       38h
DBE1:   FF            rst       38h
DBE2:   FF            rst       38h
DBE3:   FF            rst       38h
DBE4:   FF            rst       38h
DBE5:   FF            rst       38h
DBE6:   FF            rst       38h
DBE7:   FF            rst       38h
DBE8:   FF            rst       38h
DBE9:   FF            rst       38h
DBEA:   FF            rst       38h
DBEB:   FF            rst       38h
DBEC:   FF            rst       38h
DBED:   FF            rst       38h
DBEE:   FF            rst       38h
DBEF:   FF            rst       38h
DBF0:   FF            rst       38h
DBF1:   FF            rst       38h
DBF2:   FF            rst       38h
DBF3:   FF            rst       38h
DBF4:   FF            rst       38h
DBF5:   FF            rst       38h
DBF6:   FF            rst       38h
DBF7:   FF            rst       38h
DBF8:   FF            rst       38h
DBF9:   FF            rst       38h
DBFA:   FF            rst       38h
DBFB:   FF            rst       38h
DBFC:   FF            rst       38h
DBFD:   FF            rst       38h
DBFE:   FF            rst       38h
DBFF:   FF            rst       38h
DC00:   FF            rst       38h
DC01:   FF            rst       38h
DC02:   FF            rst       38h
DC03:   FF            rst       38h
DC04:   FF            rst       38h
DC05:   FF            rst       38h
DC06:   FF            rst       38h
DC07:   FF            rst       38h
DC08:   FF            rst       38h
DC09:   FF            rst       38h
DC0A:   FF            rst       38h
DC0B:   FF            rst       38h
DC0C:   FF            rst       38h
DC0D:   FF            rst       38h
DC0E:   FF            rst       38h
DC0F:   FF            rst       38h
DC10:   FF            rst       38h
DC11:   FF            rst       38h
DC12:   FF            rst       38h
DC13:   FF            rst       38h
DC14:   FF            rst       38h
DC15:   FF            rst       38h
DC16:   FF            rst       38h
DC17:   FF            rst       38h
DC18:   FF            rst       38h
DC19:   FF            rst       38h
DC1A:   FF            rst       38h
DC1B:   FF            rst       38h
DC1C:   FF            rst       38h
DC1D:   FF            rst       38h
DC1E:   FF            rst       38h
DC1F:   FF            rst       38h
DC20:   FF            rst       38h
DC21:   FF            rst       38h
DC22:   FF            rst       38h
DC23:   FF            rst       38h
DC24:   FF            rst       38h
DC25:   FF            rst       38h
DC26:   FF            rst       38h
DC27:   FF            rst       38h
DC28:   FF            rst       38h
DC29:   FF            rst       38h
DC2A:   FF            rst       38h
DC2B:   FF            rst       38h
DC2C:   FF            rst       38h
DC2D:   FF            rst       38h
DC2E:   FF            rst       38h
DC2F:   FF            rst       38h
DC30:   FF            rst       38h
DC31:   FF            rst       38h
DC32:   FF            rst       38h
DC33:   FF            rst       38h
DC34:   FF            rst       38h
DC35:   FF            rst       38h
DC36:   FF            rst       38h
DC37:   FF            rst       38h
DC38:   FF            rst       38h
DC39:   FF            rst       38h
DC3A:   FF            rst       38h
DC3B:   FF            rst       38h
DC3C:   FF            rst       38h
DC3D:   FF            rst       38h
DC3E:   FF            rst       38h
DC3F:   FF            rst       38h
DC40:   FF            rst       38h
DC41:   FF            rst       38h
DC42:   FF            rst       38h
DC43:   FF            rst       38h
DC44:   FF            rst       38h
DC45:   FF            rst       38h
DC46:   FF            rst       38h
DC47:   FF            rst       38h
DC48:   FF            rst       38h
DC49:   FF            rst       38h
DC4A:   FF            rst       38h
DC4B:   FF            rst       38h
DC4C:   FF            rst       38h
DC4D:   FF            rst       38h
DC4E:   FF            rst       38h
DC4F:   FF            rst       38h
DC50:   FF            rst       38h
DC51:   FF            rst       38h
DC52:   FF            rst       38h
DC53:   FF            rst       38h
DC54:   FF            rst       38h
DC55:   FF            rst       38h
DC56:   FF            rst       38h
DC57:   FF            rst       38h
DC58:   FF            rst       38h
DC59:   FF            rst       38h
DC5A:   FF            rst       38h
DC5B:   FF            rst       38h
DC5C:   FF            rst       38h
DC5D:   FF            rst       38h
DC5E:   FF            rst       38h
DC5F:   FF            rst       38h
DC60:   FF            rst       38h
DC61:   FF            rst       38h
DC62:   FF            rst       38h
DC63:   FF            rst       38h
DC64:   FF            rst       38h
DC65:   FF            rst       38h
DC66:   FF            rst       38h
DC67:   FF            rst       38h
DC68:   FF            rst       38h
DC69:   FF            rst       38h
DC6A:   FF            rst       38h
DC6B:   FF            rst       38h
DC6C:   FF            rst       38h
DC6D:   FF            rst       38h
DC6E:   FF            rst       38h
DC6F:   FF            rst       38h
DC70:   FF            rst       38h
DC71:   FF            rst       38h
DC72:   FF            rst       38h
DC73:   FF            rst       38h
DC74:   FF            rst       38h
DC75:   FF            rst       38h
DC76:   FF            rst       38h
DC77:   FF            rst       38h
DC78:   FF            rst       38h
DC79:   FF            rst       38h
DC7A:   FF            rst       38h
DC7B:   FF            rst       38h
DC7C:   FF            rst       38h
DC7D:   FF            rst       38h
DC7E:   FF            rst       38h
DC7F:   FF            rst       38h
DC80:   FF            rst       38h
DC81:   FF            rst       38h
DC82:   FF            rst       38h
DC83:   FF            rst       38h
DC84:   FF            rst       38h
DC85:   FF            rst       38h
DC86:   FF            rst       38h
DC87:   FF            rst       38h
DC88:   FF            rst       38h
DC89:   FF            rst       38h
DC8A:   FF            rst       38h
DC8B:   FF            rst       38h
DC8C:   FF            rst       38h
DC8D:   FF            rst       38h
DC8E:   FF            rst       38h
DC8F:   FF            rst       38h
DC90:   FF            rst       38h
DC91:   FF            rst       38h
DC92:   FF            rst       38h
DC93:   FF            rst       38h
DC94:   FF            rst       38h
DC95:   FF            rst       38h
DC96:   FF            rst       38h
DC97:   FF            rst       38h
DC98:   FF            rst       38h
DC99:   FF            rst       38h
DC9A:   FF            rst       38h
DC9B:   FF            rst       38h
DC9C:   FF            rst       38h
DC9D:   FF            rst       38h
DC9E:   FF            rst       38h
DC9F:   FF            rst       38h
DCA0:   FF            rst       38h
DCA1:   FF            rst       38h
DCA2:   FF            rst       38h
DCA3:   FF            rst       38h
DCA4:   FF            rst       38h
DCA5:   FF            rst       38h
DCA6:   FF            rst       38h
DCA7:   FF            rst       38h
DCA8:   FF            rst       38h
DCA9:   FF            rst       38h
DCAA:   FF            rst       38h
DCAB:   FF            rst       38h
DCAC:   FF            rst       38h
DCAD:   FF            rst       38h
DCAE:   FF            rst       38h
DCAF:   FF            rst       38h
DCB0:   FF            rst       38h
DCB1:   FF            rst       38h
DCB2:   FF            rst       38h
DCB3:   FF            rst       38h
DCB4:   FF            rst       38h
DCB5:   FF            rst       38h
DCB6:   FF            rst       38h
DCB7:   FF            rst       38h
DCB8:   FF            rst       38h
DCB9:   FF            rst       38h
DCBA:   FF            rst       38h
DCBB:   FF            rst       38h
DCBC:   FF            rst       38h
DCBD:   FF            rst       38h
DCBE:   FF            rst       38h
DCBF:   FF            rst       38h
DCC0:   FF            rst       38h
DCC1:   FF            rst       38h
DCC2:   FF            rst       38h
DCC3:   FF            rst       38h
DCC4:   FF            rst       38h
DCC5:   FF            rst       38h
DCC6:   FF            rst       38h
DCC7:   FF            rst       38h
DCC8:   FF            rst       38h
DCC9:   FF            rst       38h
DCCA:   FF            rst       38h
DCCB:   FF            rst       38h
DCCC:   FF            rst       38h
DCCD:   FF            rst       38h
DCCE:   FF            rst       38h
DCCF:   FF            rst       38h
DCD0:   FF            rst       38h
DCD1:   FF            rst       38h
DCD2:   FF            rst       38h
DCD3:   FF            rst       38h
DCD4:   FF            rst       38h
DCD5:   FF            rst       38h
DCD6:   FF            rst       38h
DCD7:   FF            rst       38h
DCD8:   FF            rst       38h
DCD9:   FF            rst       38h
DCDA:   FF            rst       38h
DCDB:   FF            rst       38h
DCDC:   FF            rst       38h
DCDD:   FF            rst       38h
DCDE:   FF            rst       38h
DCDF:   FF            rst       38h
DCE0:   FF            rst       38h
DCE1:   FF            rst       38h
DCE2:   FF            rst       38h
DCE3:   FF            rst       38h
DCE4:   FF            rst       38h
DCE5:   FF            rst       38h
DCE6:   FF            rst       38h
DCE7:   FF            rst       38h
DCE8:   FF            rst       38h
DCE9:   FF            rst       38h
DCEA:   FF            rst       38h
DCEB:   FF            rst       38h
DCEC:   FF            rst       38h
DCED:   FF            rst       38h
DCEE:   FF            rst       38h
DCEF:   FF            rst       38h
DCF0:   FF            rst       38h
DCF1:   FF            rst       38h
DCF2:   FF            rst       38h
DCF3:   FF            rst       38h
DCF4:   FF            rst       38h
DCF5:   FF            rst       38h
DCF6:   FF            rst       38h
DCF7:   FF            rst       38h
DCF8:   FF            rst       38h
DCF9:   FF            rst       38h
DCFA:   FF            rst       38h
DCFB:   FF            rst       38h
DCFC:   FF            rst       38h
DCFD:   FF            rst       38h
DCFE:   FF            rst       38h
DCFF:   FF            rst       38h
DD00:   FF            rst       38h
DD01:   FF            rst       38h
DD02:   FF            rst       38h
DD03:   FF            rst       38h
DD04:   FF            rst       38h
DD05:   FF            rst       38h
DD06:   FF            rst       38h
DD07:   FF            rst       38h
DD08:   FF            rst       38h
DD09:   FF            rst       38h
DD0A:   FF            rst       38h
DD0B:   FF            rst       38h
DD0C:   FF            rst       38h
DD0D:   FF            rst       38h
DD0E:   FF            rst       38h
DD0F:   FF            rst       38h
DD10:   FF            rst       38h
DD11:   FF            rst       38h
DD12:   FF            rst       38h
DD13:   FF            rst       38h
DD14:   FF            rst       38h
DD15:   FF            rst       38h
DD16:   FF            rst       38h
DD17:   FF            rst       38h
DD18:   FF            rst       38h
DD19:   FF            rst       38h
DD1A:   FF            rst       38h
DD1B:   FF            rst       38h
DD1C:   FF            rst       38h
DD1D:   FF            rst       38h
DD1E:   FF            rst       38h
DD1F:   FF            rst       38h
DD20:   FF            rst       38h
DD21:   FF            rst       38h
DD22:   FF            rst       38h
DD23:   FF            rst       38h
DD24:   FF            rst       38h
DD25:   FF            rst       38h
DD26:   FF            rst       38h
DD27:   FF            rst       38h
DD28:   FF            rst       38h
DD29:   FF            rst       38h
DD2A:   FF            rst       38h
DD2B:   FF            rst       38h
DD2C:   FF            rst       38h
DD2D:   FF            rst       38h
DD2E:   FF            rst       38h
DD2F:   FF            rst       38h
DD30:   FF            rst       38h
DD31:   FF            rst       38h
DD32:   FF            rst       38h
DD33:   FF            rst       38h
DD34:   FF            rst       38h
DD35:   FF            rst       38h
DD36:   FF            rst       38h
DD37:   FF            rst       38h
DD38:   FF            rst       38h
DD39:   FF            rst       38h
DD3A:   FF            rst       38h
DD3B:   FF            rst       38h
DD3C:   FF            rst       38h
DD3D:   FF            rst       38h
DD3E:   FF            rst       38h
DD3F:   FF            rst       38h
DD40:   FF            rst       38h
DD41:   FF            rst       38h
DD42:   FF            rst       38h
DD43:   FF            rst       38h
DD44:   FF            rst       38h
DD45:   FF            rst       38h
DD46:   FF            rst       38h
DD47:   FF            rst       38h
DD48:   FF            rst       38h
DD49:   FF            rst       38h
DD4A:   FF            rst       38h
DD4B:   FF            rst       38h
DD4C:   FF            rst       38h
DD4D:   FF            rst       38h
DD4E:   FF            rst       38h
DD4F:   FF            rst       38h
DD50:   FF            rst       38h
DD51:   FF            rst       38h
DD52:   FF            rst       38h
DD53:   FF            rst       38h
DD54:   FF            rst       38h
DD55:   FF            rst       38h
DD56:   FF            rst       38h
DD57:   FF            rst       38h
DD58:   FF            rst       38h
DD59:   FF            rst       38h
DD5A:   FF            rst       38h
DD5B:   FF            rst       38h
DD5C:   FF            rst       38h
DD5D:   FF            rst       38h
DD5E:   FF            rst       38h
DD5F:   FF            rst       38h
DD60:   FF            rst       38h
DD61:   FF            rst       38h
DD62:   FF            rst       38h
DD63:   FF            rst       38h
DD64:   FF            rst       38h
DD65:   FF            rst       38h
DD66:   FF            rst       38h
DD67:   FF            rst       38h
DD68:   FF            rst       38h
DD69:   FF            rst       38h
DD6A:   FF            rst       38h
DD6B:   FF            rst       38h
DD6C:   FF            rst       38h
DD6D:   FF            rst       38h
DD6E:   FF            rst       38h
DD6F:   FF            rst       38h
DD70:   FF            rst       38h
DD71:   FF            rst       38h
DD72:   FF            rst       38h
DD73:   FF            rst       38h
DD74:   FF            rst       38h
DD75:   FF            rst       38h
DD76:   FF            rst       38h
DD77:   FF            rst       38h
DD78:   FF            rst       38h
DD79:   FF            rst       38h
DD7A:   FF            rst       38h
DD7B:   FF            rst       38h
DD7C:   FF            rst       38h
DD7D:   FF            rst       38h
DD7E:   FF            rst       38h
DD7F:   FF            rst       38h
DD80:   FF            rst       38h
DD81:   FF            rst       38h
DD82:   FF            rst       38h
DD83:   FF            rst       38h
DD84:   FF            rst       38h
DD85:   FF            rst       38h
DD86:   FF            rst       38h
DD87:   FF            rst       38h
DD88:   FF            rst       38h
DD89:   FF            rst       38h
DD8A:   FF            rst       38h
DD8B:   FF            rst       38h
DD8C:   FF            rst       38h
DD8D:   FF            rst       38h
DD8E:   FF            rst       38h
DD8F:   FF            rst       38h
DD90:   FF            rst       38h
DD91:   FF            rst       38h
DD92:   FF            rst       38h
DD93:   FF            rst       38h
DD94:   FF            rst       38h
DD95:   FF            rst       38h
DD96:   FF            rst       38h
DD97:   FF            rst       38h
DD98:   FF            rst       38h
DD99:   FF            rst       38h
DD9A:   FF            rst       38h
DD9B:   FF            rst       38h
DD9C:   FF            rst       38h
DD9D:   FF            rst       38h
DD9E:   FF            rst       38h
DD9F:   FF            rst       38h
DDA0:   FF            rst       38h
DDA1:   FF            rst       38h
DDA2:   FF            rst       38h
DDA3:   FF            rst       38h
DDA4:   FF            rst       38h
DDA5:   FF            rst       38h
DDA6:   FF            rst       38h
DDA7:   FF            rst       38h
DDA8:   FF            rst       38h
DDA9:   FF            rst       38h
DDAA:   FF            rst       38h
DDAB:   FF            rst       38h
DDAC:   FF            rst       38h
DDAD:   FF            rst       38h
DDAE:   FF            rst       38h
DDAF:   FF            rst       38h
DDB0:   FF            rst       38h
DDB1:   FF            rst       38h
DDB2:   FF            rst       38h
DDB3:   FF            rst       38h
DDB4:   FF            rst       38h
DDB5:   FF            rst       38h
DDB6:   FF            rst       38h
DDB7:   FF            rst       38h
DDB8:   FF            rst       38h
DDB9:   FF            rst       38h
DDBA:   FF            rst       38h
DDBB:   FF            rst       38h
DDBC:   FF            rst       38h
DDBD:   FF            rst       38h
DDBE:   FF            rst       38h
DDBF:   FF            rst       38h
DDC0:   FF            rst       38h
DDC1:   FF            rst       38h
DDC2:   FF            rst       38h
DDC3:   FF            rst       38h
DDC4:   FF            rst       38h
DDC5:   FF            rst       38h
DDC6:   FF            rst       38h
DDC7:   FF            rst       38h
DDC8:   FF            rst       38h
DDC9:   FF            rst       38h
DDCA:   FF            rst       38h
DDCB:   FF            rst       38h
DDCC:   FF            rst       38h
DDCD:   FF            rst       38h
DDCE:   FF            rst       38h
DDCF:   FF            rst       38h
DDD0:   FF            rst       38h
DDD1:   FF            rst       38h
DDD2:   FF            rst       38h
DDD3:   FF            rst       38h
DDD4:   FF            rst       38h
DDD5:   FF            rst       38h
DDD6:   FF            rst       38h
DDD7:   FF            rst       38h
DDD8:   FF            rst       38h
DDD9:   FF            rst       38h
DDDA:   FF            rst       38h
DDDB:   FF            rst       38h
DDDC:   FF            rst       38h
DDDD:   FF            rst       38h
DDDE:   FF            rst       38h
DDDF:   FF            rst       38h
DDE0:   FF            rst       38h
DDE1:   FF            rst       38h
DDE2:   FF            rst       38h
DDE3:   FF            rst       38h
DDE4:   FF            rst       38h
DDE5:   FF            rst       38h
DDE6:   FF            rst       38h
DDE7:   FF            rst       38h
DDE8:   FF            rst       38h
DDE9:   FF            rst       38h
DDEA:   FF            rst       38h
DDEB:   FF            rst       38h
DDEC:   FF            rst       38h
DDED:   FF            rst       38h
DDEE:   FF            rst       38h
DDEF:   FF            rst       38h
DDF0:   FF            rst       38h
DDF1:   FF            rst       38h
DDF2:   FF            rst       38h
DDF3:   FF            rst       38h
DDF4:   FF            rst       38h
DDF5:   FF            rst       38h
DDF6:   FF            rst       38h
DDF7:   FF            rst       38h
DDF8:   FF            rst       38h
DDF9:   FF            rst       38h
DDFA:   FF            rst       38h
DDFB:   FF            rst       38h
DDFC:   FF            rst       38h
DDFD:   FF            rst       38h
DDFE:   FF            rst       38h
DDFF:   FF            rst       38h
DE00:   FF            rst       38h
DE01:   FF            rst       38h
DE02:   FF            rst       38h
DE03:   FF            rst       38h
DE04:   FF            rst       38h
DE05:   FF            rst       38h
DE06:   FF            rst       38h
DE07:   FF            rst       38h
DE08:   FF            rst       38h
DE09:   FF            rst       38h
DE0A:   FF            rst       38h
DE0B:   FF            rst       38h
DE0C:   FF            rst       38h
DE0D:   FF            rst       38h
DE0E:   FF            rst       38h
DE0F:   FF            rst       38h
DE10:   FF            rst       38h
DE11:   FF            rst       38h
DE12:   FF            rst       38h
DE13:   FF            rst       38h
DE14:   FF            rst       38h
DE15:   FF            rst       38h
DE16:   FF            rst       38h
DE17:   FF            rst       38h
DE18:   FF            rst       38h
DE19:   FF            rst       38h
DE1A:   FF            rst       38h
DE1B:   FF            rst       38h
DE1C:   FF            rst       38h
DE1D:   FF            rst       38h
DE1E:   FF            rst       38h
DE1F:   FF            rst       38h
DE20:   FF            rst       38h
DE21:   FF            rst       38h
DE22:   FF            rst       38h
DE23:   FF            rst       38h
DE24:   FF            rst       38h
DE25:   FF            rst       38h
DE26:   FF            rst       38h
DE27:   FF            rst       38h
DE28:   FF            rst       38h
DE29:   FF            rst       38h
DE2A:   FF            rst       38h
DE2B:   FF            rst       38h
DE2C:   FF            rst       38h
DE2D:   FF            rst       38h
DE2E:   FF            rst       38h
DE2F:   FF            rst       38h
DE30:   FF            rst       38h
DE31:   FF            rst       38h
DE32:   FF            rst       38h
DE33:   FF            rst       38h
DE34:   FF            rst       38h
DE35:   FF            rst       38h
DE36:   FF            rst       38h
DE37:   FF            rst       38h
DE38:   FF            rst       38h
DE39:   FF            rst       38h
DE3A:   FF            rst       38h
DE3B:   FF            rst       38h
DE3C:   FF            rst       38h
DE3D:   FF            rst       38h
DE3E:   FF            rst       38h
DE3F:   FF            rst       38h
DE40:   FF            rst       38h
DE41:   FF            rst       38h
DE42:   FF            rst       38h
DE43:   FF            rst       38h
DE44:   FF            rst       38h
DE45:   FF            rst       38h
DE46:   FF            rst       38h
DE47:   FF            rst       38h
DE48:   FF            rst       38h
DE49:   FF            rst       38h
DE4A:   FF            rst       38h
DE4B:   FF            rst       38h
DE4C:   FF            rst       38h
DE4D:   FF            rst       38h
DE4E:   FF            rst       38h
DE4F:   FF            rst       38h
DE50:   FF            rst       38h
DE51:   FF            rst       38h
DE52:   FF            rst       38h
DE53:   FF            rst       38h
DE54:   FF            rst       38h
DE55:   FF            rst       38h
DE56:   FF            rst       38h
DE57:   FF            rst       38h
DE58:   FF            rst       38h
DE59:   FF            rst       38h
DE5A:   FF            rst       38h
DE5B:   FF            rst       38h
DE5C:   FF            rst       38h
DE5D:   FF            rst       38h
DE5E:   FF            rst       38h
DE5F:   FF            rst       38h
DE60:   FF            rst       38h
DE61:   FF            rst       38h
DE62:   FF            rst       38h
DE63:   FF            rst       38h
DE64:   FF            rst       38h
DE65:   FF            rst       38h
DE66:   FF            rst       38h
DE67:   FF            rst       38h
DE68:   FF            rst       38h
DE69:   FF            rst       38h
DE6A:   FF            rst       38h
DE6B:   FF            rst       38h
DE6C:   FF            rst       38h
DE6D:   FF            rst       38h
DE6E:   FF            rst       38h
DE6F:   FF            rst       38h
DE70:   FF            rst       38h
DE71:   FF            rst       38h
DE72:   FF            rst       38h
DE73:   FF            rst       38h
DE74:   FF            rst       38h
DE75:   FF            rst       38h
DE76:   FF            rst       38h
DE77:   FF            rst       38h
DE78:   FF            rst       38h
DE79:   FF            rst       38h
DE7A:   FF            rst       38h
DE7B:   FF            rst       38h
DE7C:   FF            rst       38h
DE7D:   FF            rst       38h
DE7E:   FF            rst       38h
DE7F:   FF            rst       38h
DE80:   FF            rst       38h
DE81:   FF            rst       38h
DE82:   FF            rst       38h
DE83:   FF            rst       38h
DE84:   FF            rst       38h
DE85:   FF            rst       38h
DE86:   FF            rst       38h
DE87:   FF            rst       38h
DE88:   FF            rst       38h
DE89:   FF            rst       38h
DE8A:   FF            rst       38h
DE8B:   FF            rst       38h
DE8C:   FF            rst       38h
DE8D:   FF            rst       38h
DE8E:   FF            rst       38h
DE8F:   FF            rst       38h
DE90:   FF            rst       38h
DE91:   FF            rst       38h
DE92:   FF            rst       38h
DE93:   FF            rst       38h
DE94:   FF            rst       38h
DE95:   FF            rst       38h
DE96:   FF            rst       38h
DE97:   FF            rst       38h
DE98:   FF            rst       38h
DE99:   FF            rst       38h
DE9A:   FF            rst       38h
DE9B:   FF            rst       38h
DE9C:   FF            rst       38h
DE9D:   FF            rst       38h
DE9E:   FF            rst       38h
DE9F:   FF            rst       38h
DEA0:   FF            rst       38h
DEA1:   FF            rst       38h
DEA2:   FF            rst       38h
DEA3:   FF            rst       38h
DEA4:   FF            rst       38h
DEA5:   FF            rst       38h
DEA6:   FF            rst       38h
DEA7:   FF            rst       38h
DEA8:   FF            rst       38h
DEA9:   FF            rst       38h
DEAA:   FF            rst       38h
DEAB:   FF            rst       38h
DEAC:   FF            rst       38h
DEAD:   FF            rst       38h
DEAE:   FF            rst       38h
DEAF:   FF            rst       38h
DEB0:   FF            rst       38h
DEB1:   FF            rst       38h
DEB2:   FF            rst       38h
DEB3:   FF            rst       38h
DEB4:   FF            rst       38h
DEB5:   FF            rst       38h
DEB6:   FF            rst       38h
DEB7:   FF            rst       38h
DEB8:   FF            rst       38h
DEB9:   FF            rst       38h
DEBA:   FF            rst       38h
DEBB:   FF            rst       38h
DEBC:   FF            rst       38h
DEBD:   FF            rst       38h
DEBE:   FF            rst       38h
DEBF:   FF            rst       38h
DEC0:   FF            rst       38h
DEC1:   FF            rst       38h
DEC2:   FF            rst       38h
DEC3:   FF            rst       38h
DEC4:   FF            rst       38h
DEC5:   FF            rst       38h
DEC6:   FF            rst       38h
DEC7:   FF            rst       38h
DEC8:   FF            rst       38h
DEC9:   FF            rst       38h
DECA:   FF            rst       38h
DECB:   FF            rst       38h
DECC:   FF            rst       38h
DECD:   FF            rst       38h
DECE:   FF            rst       38h
DECF:   FF            rst       38h
DED0:   FF            rst       38h
DED1:   FF            rst       38h
DED2:   FF            rst       38h
DED3:   FF            rst       38h
DED4:   FF            rst       38h
DED5:   FF            rst       38h
DED6:   FF            rst       38h
DED7:   FF            rst       38h
DED8:   FF            rst       38h
DED9:   FF            rst       38h
DEDA:   FF            rst       38h
DEDB:   FF            rst       38h
DEDC:   FF            rst       38h
DEDD:   FF            rst       38h
DEDE:   FF            rst       38h
DEDF:   FF            rst       38h
DEE0:   FF            rst       38h
DEE1:   FF            rst       38h
DEE2:   FF            rst       38h
DEE3:   FF            rst       38h
DEE4:   FF            rst       38h
DEE5:   FF            rst       38h
DEE6:   FF            rst       38h
DEE7:   FF            rst       38h
DEE8:   FF            rst       38h
DEE9:   FF            rst       38h
DEEA:   FF            rst       38h
DEEB:   FF            rst       38h
DEEC:   FF            rst       38h
DEED:   FF            rst       38h
DEEE:   FF            rst       38h
DEEF:   FF            rst       38h
DEF0:   FF            rst       38h
DEF1:   FF            rst       38h
DEF2:   FF            rst       38h
DEF3:   FF            rst       38h
DEF4:   FF            rst       38h
DEF5:   FF            rst       38h
DEF6:   FF            rst       38h
DEF7:   FF            rst       38h
DEF8:   FF            rst       38h
DEF9:   FF            rst       38h
DEFA:   FF            rst       38h
DEFB:   FF            rst       38h
DEFC:   FF            rst       38h
DEFD:   FF            rst       38h
DEFE:   FF            rst       38h
DEFF:   FF            rst       38h
DF00:   FF            rst       38h
DF01:   FF            rst       38h
DF02:   FF            rst       38h
DF03:   FF            rst       38h
DF04:   FF            rst       38h
DF05:   FF            rst       38h
DF06:   FF            rst       38h
DF07:   FF            rst       38h
DF08:   FF            rst       38h
DF09:   FF            rst       38h
DF0A:   FF            rst       38h
DF0B:   FF            rst       38h
DF0C:   FF            rst       38h
DF0D:   FF            rst       38h
DF0E:   FF            rst       38h
DF0F:   FF            rst       38h
DF10:   FF            rst       38h
DF11:   FF            rst       38h
DF12:   FF            rst       38h
DF13:   FF            rst       38h
DF14:   FF            rst       38h
DF15:   FF            rst       38h
DF16:   FF            rst       38h
DF17:   FF            rst       38h
DF18:   FF            rst       38h
DF19:   FF            rst       38h
DF1A:   FF            rst       38h
DF1B:   FF            rst       38h
DF1C:   FF            rst       38h
DF1D:   FF            rst       38h
DF1E:   FF            rst       38h
DF1F:   FF            rst       38h
DF20:   FF            rst       38h
DF21:   FF            rst       38h
DF22:   FF            rst       38h
DF23:   FF            rst       38h
DF24:   FF            rst       38h
DF25:   FF            rst       38h
DF26:   FF            rst       38h
DF27:   FF            rst       38h
DF28:   FF            rst       38h
DF29:   FF            rst       38h
DF2A:   FF            rst       38h
DF2B:   FF            rst       38h
DF2C:   FF            rst       38h
DF2D:   FF            rst       38h
DF2E:   FF            rst       38h
DF2F:   FF            rst       38h
DF30:   FF            rst       38h
DF31:   FF            rst       38h
DF32:   FF            rst       38h
DF33:   FF            rst       38h
DF34:   FF            rst       38h
DF35:   FF            rst       38h
DF36:   FF            rst       38h
DF37:   FF            rst       38h
DF38:   FF            rst       38h
DF39:   FF            rst       38h
DF3A:   FF            rst       38h
DF3B:   FF            rst       38h
DF3C:   FF            rst       38h
DF3D:   FF            rst       38h
DF3E:   FF            rst       38h
DF3F:   FF            rst       38h
DF40:   FF            rst       38h
DF41:   FF            rst       38h
DF42:   FF            rst       38h
DF43:   FF            rst       38h
DF44:   FF            rst       38h
DF45:   FF            rst       38h
DF46:   FF            rst       38h
DF47:   FF            rst       38h
DF48:   FF            rst       38h
DF49:   FF            rst       38h
DF4A:   FF            rst       38h
DF4B:   FF            rst       38h
DF4C:   FF            rst       38h
DF4D:   FF            rst       38h
DF4E:   FF            rst       38h
DF4F:   FF            rst       38h
DF50:   FF            rst       38h
DF51:   FF            rst       38h
DF52:   FF            rst       38h
DF53:   FF            rst       38h
DF54:   FF            rst       38h
DF55:   FF            rst       38h
DF56:   FF            rst       38h
DF57:   FF            rst       38h
DF58:   FF            rst       38h
DF59:   FF            rst       38h
DF5A:   FF            rst       38h
DF5B:   FF            rst       38h
DF5C:   FF            rst       38h
DF5D:   FF            rst       38h
DF5E:   FF            rst       38h
DF5F:   FF            rst       38h
DF60:   FF            rst       38h
DF61:   FF            rst       38h
DF62:   FF            rst       38h
DF63:   FF            rst       38h
DF64:   FF            rst       38h
DF65:   FF            rst       38h
DF66:   FF            rst       38h
DF67:   FF            rst       38h
DF68:   FF            rst       38h
DF69:   FF            rst       38h
DF6A:   FF            rst       38h
DF6B:   FF            rst       38h
DF6C:   FF            rst       38h
DF6D:   FF            rst       38h
DF6E:   FF            rst       38h
DF6F:   FF            rst       38h
DF70:   FF            rst       38h
DF71:   FF            rst       38h
DF72:   FF            rst       38h
DF73:   FF            rst       38h
DF74:   FF            rst       38h
DF75:   FF            rst       38h
DF76:   FF            rst       38h
DF77:   FF            rst       38h
DF78:   FF            rst       38h
DF79:   FF            rst       38h
DF7A:   FF            rst       38h
DF7B:   FF            rst       38h
DF7C:   FF            rst       38h
DF7D:   FF            rst       38h
DF7E:   FF            rst       38h
DF7F:   FF            rst       38h
DF80:   FF            rst       38h
DF81:   FF            rst       38h
DF82:   FF            rst       38h
DF83:   FF            rst       38h
DF84:   FF            rst       38h
DF85:   FF            rst       38h
DF86:   FF            rst       38h
DF87:   FF            rst       38h
DF88:   FF            rst       38h
DF89:   FF            rst       38h
DF8A:   FF            rst       38h
DF8B:   FF            rst       38h
DF8C:   FF            rst       38h
DF8D:   FF            rst       38h
DF8E:   FF            rst       38h
DF8F:   FF            rst       38h
DF90:   FF            rst       38h
DF91:   FF            rst       38h
DF92:   FF            rst       38h
DF93:   FF            rst       38h
DF94:   FF            rst       38h
DF95:   FF            rst       38h
DF96:   FF            rst       38h
DF97:   FF            rst       38h
DF98:   FF            rst       38h
DF99:   FF            rst       38h
DF9A:   FF            rst       38h
DF9B:   FF            rst       38h
DF9C:   FF            rst       38h
DF9D:   FF            rst       38h
DF9E:   FF            rst       38h
DF9F:   FF            rst       38h
DFA0:   FF            rst       38h
DFA1:   FF            rst       38h
DFA2:   FF            rst       38h
DFA3:   FF            rst       38h
DFA4:   FF            rst       38h
DFA5:   FF            rst       38h
DFA6:   FF            rst       38h
DFA7:   FF            rst       38h
DFA8:   FF            rst       38h
DFA9:   FF            rst       38h
DFAA:   FF            rst       38h
DFAB:   FF            rst       38h
DFAC:   FF            rst       38h
DFAD:   FF            rst       38h
DFAE:   FF            rst       38h
DFAF:   FF            rst       38h
DFB0:   FF            rst       38h
DFB1:   FF            rst       38h
DFB2:   FF            rst       38h
DFB3:   FF            rst       38h
DFB4:   FF            rst       38h
DFB5:   FF            rst       38h
DFB6:   FF            rst       38h
DFB7:   FF            rst       38h
DFB8:   FF            rst       38h
DFB9:   FF            rst       38h
DFBA:   FF            rst       38h
DFBB:   FF            rst       38h
DFBC:   FF            rst       38h
DFBD:   FF            rst       38h
DFBE:   FF            rst       38h
DFBF:   FF            rst       38h
DFC0:   FF            rst       38h
DFC1:   FF            rst       38h
DFC2:   FF            rst       38h
DFC3:   FF            rst       38h
DFC4:   FF            rst       38h
DFC5:   FF            rst       38h
DFC6:   FF            rst       38h
DFC7:   FF            rst       38h
DFC8:   FF            rst       38h
DFC9:   FF            rst       38h
DFCA:   FF            rst       38h
DFCB:   FF            rst       38h
DFCC:   FF            rst       38h
DFCD:   FF            rst       38h
DFCE:   FF            rst       38h
DFCF:   FF            rst       38h
DFD0:   FF            rst       38h
DFD1:   FF            rst       38h
DFD2:   FF            rst       38h
DFD3:   FF            rst       38h
DFD4:   FF            rst       38h
DFD5:   FF            rst       38h
DFD6:   FF            rst       38h
DFD7:   FF            rst       38h
DFD8:   FF            rst       38h
DFD9:   FF            rst       38h
DFDA:   FF            rst       38h
DFDB:   FF            rst       38h
DFDC:   FF            rst       38h
DFDD:   FF            rst       38h
DFDE:   FF            rst       38h
DFDF:   FF            rst       38h
DFE0:   FF            rst       38h
DFE1:   FF            rst       38h
DFE2:   FF            rst       38h
DFE3:   FF            rst       38h
DFE4:   FF            rst       38h
DFE5:   FF            rst       38h
DFE6:   FF            rst       38h
DFE7:   FF            rst       38h
DFE8:   FF            rst       38h
DFE9:   FF            rst       38h
DFEA:   FF            rst       38h
DFEB:   FF            rst       38h
DFEC:   FF            rst       38h
DFED:   FF            rst       38h
DFEE:   FF            rst       38h
DFEF:   FF            rst       38h
DFF0:   FF            rst       38h
DFF1:   FF            rst       38h
DFF2:   FF            rst       38h
DFF3:   FF            rst       38h
DFF4:   FF            rst       38h
DFF5:   FF            rst       38h
DFF6:   FF            rst       38h
DFF7:   FF            rst       38h
DFF8:   FF            rst       38h
DFF9:   FF            rst       38h
DFFA:   FF            rst       38h
DFFB:   FF            rst       38h
DFFC:   FF            rst       38h
DFFD:   FF            rst       38h
DFFE:   FF            rst       38h
DFFF:   FF            rst       38h
E000:   C3BEF2        jp        label_F2BE
                    label_E003:
E003:   ED7B3101      ld        sp, (loc_0131)
E007:   CD6CEF        call      label_EF6C
E00A:   CD0FED        call      label_ED0F
                    label_E00D:
E00D:   00            nop
E00E:   00            nop
E00F:   CD8AEC        call      label_EC8A
E012:   2140AB        ld        hl, AB40
E015:   362D          ld        (hl), 2D
E017:   54            ld        d, h
E018:   5D            ld        e, l
E019:   013F00        ld        bc, 003F
E01C:   13            inc       de
E01D:   C3DFF1        jp        label_F1DF
                    label_E020:
E020:   C3D9F1        jp        label_F1D9
E023:   CD8AEC        call      label_EC8A
E026:   11A7A9        ld        de, A9A7
E029:   21C7E0        ld        hl, E0C7
E02C:   CDC0E0        call      label_E0C0
E02F:   C33FED        jp        label_ED3F
E032:   CD8AEC        call      label_EC8A
E035:   CD8BE1        call      label_E18B
E038:   21BB00        ld        hl, 00BB
E03B:   010C00        ld        bc, 000C
E03E:   CD72E1        call      label_E172
E041:   CD44E1        call      label_E144
E044:   21C700        ld        hl, 00C7
E047:   BE            cp        (hl)
E048:   2805          jr        z, label_E04F
                    label_E04A:
E04A:   CDDFE0        call      label_E0DF
E04D:   18D1          jr        label_E020
                    label_E04F:
E04F:   2AC100        ld        hl, (loc_00C1)
E052:   ED4BBD00      ld        bc, (loc_00BD)
E056:   CD72E1        call      label_E172
E059:   2AC300        ld        hl, (loc_00C3)
E05C:   ED4BBF00      ld        bc, (loc_00BF)
E060:   CD72E1        call      label_E172
E063:   CD44E1        call      label_E144
E066:   21C700        ld        hl, 00C7
E069:   BE            cp        (hl)
E06A:   20DE          jr        nz, label_E04A
E06C:   21F5E0        ld        hl, E0F5
E06F:   CDE2E0        call      label_E0E2
E072:   2AC500        ld        hl, (loc_00C5)
E075:   AF            xor       a
E076:   85            add       a, l
E077:   2003          jr        nz, label_E07C
E079:   84            add       a, h
E07A:   28A4          jr        z, label_E020
                    label_E07C:
E07C:   2199E0        ld        hl, E099
E07F:   CDBDE0        call      label_E0BD
E082:   CD5BE3        call      label_E35B
E085:   3AD5AB        ld        a, (loc_ABD5)
E088:   FE59          cp        59
E08A:   2081          jr        nz, label_E00D
E08C:   CD8AEC        call      label_EC8A
E08F:   CD6FEC        call      label_EC6F
E092:   CD8AEC        call      label_EC8A
E095:   2AC500        ld        hl, (loc_00C5)
E098:   E9            jp        (hl)
E099:   45            ld        b, l
E09A:   58            ld        e, b
E09B:   45            ld        b, l
E09C:   43            ld        b, e
E09D:   55            ld        d, l
E09E:   54            ld        d, h
E09F:   45            ld        b, l
E0A0:   203F          jr        nz, label_E0E1
E0A2:   2028          jr        nz, label_E0CC
E0A4:   59            ld        e, c
E0A5:   2F            cpl
E0A6:   4E            ld        c, (hl)
E0A7:   29            add       hl, hl
E0A8:   20A0          jr        nz, label_E04A
E0AA:   54            ld        d, h
E0AB:   41            ld        b, c
E0AC:   50            ld        d, b
E0AD:   45            ld        b, l
E0AE:   204F          jr        nz, label_E0FF
E0B0:   52            ld        d, d
E0B1:   204D          jr        nz, label_E100
E0B3:   4F            ld        c, a
E0B4:   4E            ld        c, (hl)
E0B5:   49            ld        c, c
E0B6:   54            ld        d, h
E0B7:   4F            ld        c, a
E0B8:   52            ld        d, d
E0B9:   203F          jr        nz, label_E0FA
E0BB:   20A0          jr        nz, label_E05D
                    label_E0BD:
E0BD:   11C5AB        ld        de, ABC5
                    label_E0C0:
E0C0:   CB7E          bit       7, (hl)
E0C2:   C0            ret       nz
E0C3:   EDA0          ldi
E0C5:   18F9          jr        label_E0C0
E0C7:   4D            ld        c, l
E0C8:   4F            ld        c, a
E0C9:   4E            ld        c, (hl)
E0CA:   49            ld        c, c
E0CB:   54            ld        d, h
                    label_E0CC:
E0CC:   4F            ld        c, a
E0CD:   52            ld        d, d
E0CE:   2052          jr        nz, label_E122
E0D0:   45            ld        b, l
E0D1:   41            ld        b, c
E0D2:   44            ld        b, h
E0D3:   59            ld        e, c
E0D4:   A0            and       b
E0D5:   52            ld        d, d
E0D6:   45            ld        b, l
E0D7:   41            ld        b, c
E0D8:   44            ld        b, h
E0D9:   2045          jr        nz, label_E120
E0DB:   52            ld        d, d
E0DC:   52            ld        d, d
E0DD:   4F            ld        c, a
E0DE:   52            ld        d, d
                    label_E0DF:
E0DF:   21D5E0        ld        hl, E0D5
                    label_E0E2:
E0E2:   010A00        ld        bc, 000A
E0E5:   3E07          ld        a, 07
E0E7:   D3DB          out       (DB), a
E0E9:   11A7A9        ld        de, A9A7
E0EC:   EDB0          ldir
E0EE:   21A0A0        ld        hl, A0A0
E0F1:   CDBEE1        call      label_E1BE
E0F4:   C9            ret
E0F5:   45            ld        b, l
E0F6:   4E            ld        c, (hl)
E0F7:   44            ld        b, h
E0F8:   2052          jr        nz, label_E14C
                    label_E0FA:
E0FA:   45            ld        b, l
E0FB:   41            ld        b, c
E0FC:   44            ld        b, h
E0FD:   2020          jr        nz, label_E11F
                    label_E0FF:
E0FF:   F5            push      af
                    label_E100:
E100:   3ACA00        ld        a, (loc_00CA)
E103:   3C            inc       a
E104:   32CA00        ld        (loc_00CA), a
E107:   F1            pop       af
E108:   FB            ei
E109:   ED4D          reti
E10B:   F5            push      af
E10C:   3E01          ld        a, 01
E10E:   32C900        ld        (loc_00C9), a
E111:   F1            pop       af
E112:   FB            ei
E113:   ED4D          reti
                    label_E115:
E115:   3ACA00        ld        a, (loc_00CA)
E118:   FE46          cp        46
E11A:   FA15E1        jp        m, label_E115
E11D:   210BE1        ld        hl, E10B
                    label_E120:
E120:   227200        ld        (loc_0072), hl
                    label_E123:
E123:   AF            xor       a
E124:   32CA00        ld        (loc_00CA), a
E127:   32C900        ld        (loc_00C9), a
                    label_E12A:
E12A:   3ACA00        ld        a, (loc_00CA)
E12D:   3C            inc       a
E12E:   32CA00        ld        (loc_00CA), a
E131:   CDF5E2        call      label_E2F5
E134:   3AC900        ld        a, (loc_00C9)
E137:   FE00          cp        00
E139:   28EF          jr        z, label_E12A
E13B:   3ACA00        ld        a, (loc_00CA)
E13E:   FE40          cp        40
E140:   FA23E1        jp        m, label_E123
E143:   C9            ret
                    label_E144:
E144:   0608          ld        b, 08
E146:   0E00          ld        c, 00
                    label_E148:
E148:   AF            xor       a
E149:   32CA00        ld        (loc_00CA), a
                    label_E14C:
E14C:   32C900        ld        (loc_00C9), a
E14F:   CB09          rrc       c
E151:   C5            push      bc
                    label_E152:
E152:   3ACA00        ld        a, (loc_00CA)
E155:   3C            inc       a
E156:   32CA00        ld        (loc_00CA), a
E159:   CDF5E2        call      label_E2F5
E15C:   3AC900        ld        a, (loc_00C9)
E15F:   FE00          cp        00
E161:   28EF          jr        z, label_E152
E163:   C1            pop       bc
E164:   3ACA00        ld        a, (loc_00CA)
E167:   FE08          cp        08
E169:   FA6EE1        jp        m, label_E16E
E16C:   CBF9          set       7, c
                    label_E16E:
E16E:   10D8          djnz      label_E148
E170:   79            ld        a, c
E171:   C9            ret
                    label_E172:
E172:   AF            xor       a
E173:   B8            cp        b
E174:   2002          jr        nz, label_E178
E176:   B9            cp        c
E177:   C8            ret       z
                    label_E178:
E178:   C5            push      bc
E179:   E5            push      hl
E17A:   CD44E1        call      label_E144
E17D:   E1            pop       hl
E17E:   C1            pop       bc
E17F:   77            ld        (hl), a
E180:   3AC700        ld        a, (loc_00C7)
E183:   86            add       a, (hl)
E184:   32C700        ld        (loc_00C7), a
E187:   23            inc       hl
E188:   0B            dec       bc
E189:   18E7          jr        label_E172
                    label_E18B:
E18B:   3EFF          ld        a, FF
E18D:   D3DB          out       (DB), a
E18F:   3E55          ld        a, 55
E191:   D3DB          out       (DB), a
E193:   21FFE0        ld        hl, E0FF
E196:   227200        ld        (loc_0072), hl
E199:   3E72          ld        a, 72
E19B:   D3DB          out       (DB), a
E19D:   3E97          ld        a, 97
E19F:   D3DB          out       (DB), a
E1A1:   3EFE          ld        a, FE
E1A3:   D3DB          out       (DB), a
E1A5:   21A0A0        ld        hl, A0A0
E1A8:   3E20          ld        a, 20
E1AA:   CDC8E1        call      label_E1C8
E1AD:   210101        ld        hl, 0101
E1B0:   22B200        ld        (loc_00B2), hl
E1B3:   AF            xor       a
E1B4:   32C700        ld        (loc_00C7), a
E1B7:   32CA00        ld        (loc_00CA), a
E1BA:   CD15E1        call      label_E115
E1BD:   C9            ret
                    label_E1BE:
E1BE:   22B200        ld        (loc_00B2), hl
E1C1:   CDF5E2        call      label_E2F5
E1C4:   AF            xor       a
E1C5:   D3D9          out       (D9), a
E1C7:   C9            ret
                    label_E1C8:
E1C8:   22B200        ld        (loc_00B2), hl
E1CB:   D3D9          out       (D9), a
E1CD:   CDF5E2        call      label_E2F5
E1D0:   C9            ret
                    label_E1D1:
E1D1:   3EFF          ld        a, FF
E1D3:   D3DB          out       (DB), a
E1D5:   3E55          ld        a, 55
E1D7:   D3DB          out       (DB), a
E1D9:   3E07          ld        a, 07
E1DB:   D3DB          out       (DB), a
E1DD:   21B0B0        ld        hl, B0B0
E1E0:   3E08          ld        a, 08
E1E2:   CDC8E1        call      label_E1C8
E1E5:   3E01          ld        a, 01
E1E7:   32B300        ld        (loc_00B3), a
E1EA:   0650          ld        b, 50
E1EC:   3E50          ld        a, 50
E1EE:   32CB00        ld        (loc_00CB), a
E1F1:   CD3DE2        call      label_E23D
E1F4:   3EA0          ld        a, A0
E1F6:   32CB00        ld        (loc_00CB), a
E1F9:   0601          ld        b, 01
E1FB:   CD3DE2        call      label_E23D
E1FE:   AF            xor       a
E1FF:   32C700        ld        (loc_00C7), a
E202:   C9            ret
                    label_E203:
E203:   21BB00        ld        hl, 00BB
E206:   060C          ld        b, 0C
                    label_E208:
E208:   E5            push      hl
E209:   C5            push      bc
E20A:   CD70E2        call      label_E270
E20D:   C1            pop       bc
E20E:   E1            pop       hl
E20F:   23            inc       hl
E210:   10F6          djnz      label_E208
E212:   21C700        ld        hl, 00C7
E215:   CD77E2        call      label_E277
E218:   ED4BBD00      ld        bc, (loc_00BD)
E21C:   2AC100        ld        hl, (loc_00C1)
E21F:   CD5FE2        call      label_E25F
E222:   ED4BBF00      ld        bc, (loc_00BF)
E226:   2AC300        ld        hl, (loc_00C3)
E229:   CD5FE2        call      label_E25F
E22C:   21C700        ld        hl, 00C7
E22F:   CD77E2        call      label_E277
E232:   0650          ld        b, 50
E234:   3E50          ld        a, 50
E236:   32CB00        ld        (loc_00CB), a
E239:   CD3DE2        call      label_E23D
E23C:   C9            ret
                    label_E23D:
E23D:   C5            push      bc
E23E:   3ACB00        ld        a, (loc_00CB)
E241:   32B200        ld        (loc_00B2), a
E244:   CDF5E2        call      label_E2F5
E247:   DBD9          in        a, (D9)
E249:   F602          or        02
E24B:   D3D9          out       (D9), a
E24D:   3E01          ld        a, 01
E24F:   32B200        ld        (loc_00B2), a
E252:   CDF5E2        call      label_E2F5
E255:   DBD9          in        a, (D9)
E257:   E6FD          and       FD
E259:   D3D9          out       (D9), a
E25B:   C1            pop       bc
E25C:   10DF          djnz      label_E23D
E25E:   C9            ret
                    label_E25F:
E25F:   AF            xor       a
E260:   B8            cp        b
E261:   2002          jr        nz, label_E265
E263:   B9            cp        c
E264:   C8            ret       z
                    label_E265:
E265:   E5            push      hl
E266:   C5            push      bc
E267:   CD70E2        call      label_E270
E26A:   C1            pop       bc
E26B:   E1            pop       hl
E26C:   23            inc       hl
E26D:   0B            dec       bc
E26E:   18EF          jr        label_E25F
                    label_E270:
E270:   3AC700        ld        a, (loc_00C7)
E273:   86            add       a, (hl)
E274:   32C700        ld        (loc_00C7), a
                    label_E277:
E277:   7E            ld        a, (hl)
E278:   32C800        ld        (loc_00C8), a
E27B:   0608          ld        b, 08
                    label_E27D:
E27D:   C5            push      bc
E27E:   3E12          ld        a, 12
E280:   32CB00        ld        (loc_00CB), a
E283:   3AC800        ld        a, (loc_00C8)
E286:   0F            rrca
E287:   32C800        ld        (loc_00C8), a
E28A:   CB7F          bit       7, a
E28C:   2005          jr        nz, label_E293
E28E:   3E06          ld        a, 06
E290:   32CB00        ld        (loc_00CB), a
                    label_E293:
E293:   0601          ld        b, 01
E295:   CD3DE2        call      label_E23D
E298:   C1            pop       bc
E299:   10E2          djnz      label_E27D
E29B:   C9            ret
E29C:   CD8AEC        call      label_EC8A
E29F:   21E6E2        ld        hl, E2E6
E2A2:   CDBDE0        call      label_E0BD
E2A5:   CD5BE3        call      label_E35B
E2A8:   3AD4AB        ld        a, (loc_ABD4)
E2AB:   FE20          cp        20
E2AD:   2811          jr        z, label_E2C0
E2AF:   44            ld        b, h
E2B0:   4D            ld        c, l
E2B1:   22BF00        ld        (loc_00BF), hl
E2B4:   1146A8        ld        de, A846
E2B7:   ED53C300      ld        (loc_00C3), de
E2BB:   21D4AB        ld        hl, ABD4
E2BE:   EDB0          ldir
                    label_E2C0:
E2C0:   CD4BEC        call      label_EC4B
E2C3:   CDD1E1        call      label_E1D1
E2C6:   CD03E2        call      label_E203
E2C9:   21DDE2        ld        hl, E2DD
E2CC:   010900        ld        bc, 0009
                    label_E2CF:
E2CF:   11A7A9        ld        de, A9A7
E2D2:   EDB0          ldir
E2D4:   21B0B0        ld        hl, B0B0
E2D7:   CDBEE1        call      label_E1BE
E2DA:   C3D9F1        jp        label_F1D9
E2DD:   45            ld        b, l
E2DE:   4E            ld        c, (hl)
E2DF:   44            ld        b, h
E2E0:   2057          jr        nz, label_E339
E2E2:   52            ld        d, d
E2E3:   49            ld        c, c
E2E4:   54            ld        d, h
E2E5:   45            ld        b, l
E2E6:   50            ld        d, b
E2E7:   52            ld        d, d
E2E8:   4F            ld        c, a
E2E9:   47            ld        b, a
E2EA:   52            ld        d, d
E2EB:   41            ld        b, c
E2EC:   4D            ld        c, l
E2ED:   204E          jr        nz, label_E33D
E2EF:   41            ld        b, c
E2F0:   4D            ld        c, l
E2F1:   45            ld        b, l
E2F2:   203F          jr        nz, label_E333
E2F4:   20D9          jr        nz, label_E2CF
E2F6:   ED5BB200      ld        de, (loc_00B2)
E2FA:   1C            inc       e
                    label_E2FB:
E2FB:   1D            dec       e
E2FC:   2002          jr        nz, label_E300
E2FE:   D9            exx
E2FF:   C9            ret
                    label_E300:
E300:   3AB300        ld        a, (loc_00B3)
E303:   57            ld        d, a
E304:   14            inc       d
                    label_E305:
E305:   15            dec       d
E306:   28F3          jr        z, label_E2FB
E308:   CD0DE3        call      label_E30D
E30B:   18F8          jr        label_E305
                    label_E30D:
E30D:   0604          ld        b, 04
                    label_E30F:
E30F:   10FE          djnz      label_E30F
E311:   C9            ret
                    label_E312:
E312:   AF            xor       a
                    label_E313:
E313:   1A            ld        a, (de)
E314:   8E            adc       a, (hl)
E315:   27            daa
E316:   12            ld        (de), a
E317:   1001          djnz      label_E31A
E319:   C9            ret
                    label_E31A:
E31A:   0D            dec       c
E31B:   2007          jr        nz, label_E324
E31D:   0C            inc       c
E31E:   2147E1        ld        hl, E147
E321:   1B            dec       de
E322:   18EF          jr        label_E313
                    label_E324:
E324:   1B            dec       de
E325:   2B            dec       hl
E326:   18EB          jr        label_E313
                    label_E328:
E328:   AF            xor       a
                    label_E329:
E329:   1A            ld        a, (de)
E32A:   9E            sbc       a, (hl)
E32B:   27            daa
E32C:   12            ld        (de), a
E32D:   1001          djnz      label_E330
E32F:   C9            ret
                    label_E330:
E330:   0D            dec       c
E331:   2007          jr        nz, label_E33A
                    label_E333:
E333:   0C            inc       c
E334:   2147E1        ld        hl, E147
E337:   1B            dec       de
E338:   18EF          jr        label_E329
                    label_E33A:
E33A:   1B            dec       de
E33B:   2B            dec       hl
E33C:   18EB          jr        label_E329
                    label_E33E:
E33E:   1A            ld        a, (de)
E33F:   E60F          and       0F
E341:   C0            ret       nz
E342:   3E20          ld        a, 20
E344:   12            ld        (de), a
E345:   13            inc       de
E346:   10F6          djnz      label_E33E
E348:   C9            ret
                    label_E349:
E349:   1A            ld        a, (de)
E34A:   BE            cp        (hl)
E34B:   C0            ret       nz
E34C:   23            inc       hl
E34D:   13            inc       de
E34E:   10F9          djnz      label_E349
E350:   C9            ret
                    label_E351:
E351:   ED52          sbc       hl, de
E353:   C0            ret       nz
E354:   210100        ld        hl, 0001
E357:   C9            ret
                    label_E358:
E358:   11C4AB        ld        de, ABC4
                    label_E35B:
E35B:   21FCAB        ld        hl, ABFC
                    label_E35E:
E35E:   ED53B700      ld        (loc_00B7), de
E362:   A7            and       a
E363:   ED52          sbc       hl, de
E365:   7D            ld        a, l
E366:   32B900        ld        (loc_00B9), a
                    label_E369:
E369:   3AB900        ld        a, (loc_00B9)
E36C:   47            ld        b, a
E36D:   2AB700        ld        hl, (loc_00B7)
E370:   AF            xor       a
E371:   32B600        ld        (loc_00B6), a
                    label_E374:
E374:   CBFE          set       7, (hl)
E376:   CD98EC        call      label_EC98
E379:   E5            push      hl
E37A:   C5            push      bc
E37B:   21E8E3        ld        hl, E3E8
E37E:   011800        ld        bc, 0018
E381:   EDB1          cpir
E383:   C1            pop       bc
E384:   E1            pop       hl
E385:   2005          jr        nz, label_E38C
E387:   32B600        ld        (loc_00B6), a
E38A:   1838          jr        label_E3C4
                    label_E38C:
E38C:   FE1A          cp        1A
E38E:   200E          jr        nz, label_E39E
E390:   CBBE          res       7, (hl)
E392:   2AB700        ld        hl, (loc_00B7)
E395:   3AB900        ld        a, (loc_00B9)
E398:   47            ld        b, a
E399:   CDD3E3        call      label_E3D3
E39C:   18CB          jr        label_E369
                    label_E39E:
E39E:   FE0D          cp        0D
E3A0:   2822          jr        z, label_E3C4
E3A2:   FE7F          cp        7F
E3A4:   2835          jr        z, label_E3DB
E3A6:   FE3C          cp        3C
E3A8:   280E          jr        z, label_E3B8
E3AA:   1002          djnz      label_E3AE
E3AC:   1813          jr        label_E3C1
                    label_E3AE:
E3AE:   FE3E          cp        3E
E3B0:   2801          jr        z, label_E3B3
E3B2:   77            ld        (hl), a
                    label_E3B3:
E3B3:   CBBE          res       7, (hl)
E3B5:   23            inc       hl
E3B6:   18BC          jr        label_E374
                    label_E3B8:
E3B8:   3AB900        ld        a, (loc_00B9)
E3BB:   B8            cp        b
E3BC:   28B6          jr        z, label_E374
E3BE:   CBBE          res       7, (hl)
E3C0:   2B            dec       hl
                    label_E3C1:
E3C1:   04            inc       b
E3C2:   18B0          jr        label_E374
                    label_E3C4:
E3C4:   E5            push      hl
E3C5:   CDD1E3        call      label_E3D1
E3C8:   E1            pop       hl
E3C9:   ED5BB700      ld        de, (loc_00B7)
E3CD:   A7            and       a
E3CE:   C351E3        jp        label_E351
                    label_E3D1:
E3D1:   CBBE          res       7, (hl)
                    label_E3D3:
E3D3:   1001          djnz      label_E3D6
E3D5:   C9            ret
                    label_E3D6:
E3D6:   3620          ld        (hl), 20
E3D8:   23            inc       hl
E3D9:   18F8          jr        label_E3D3
                    label_E3DB:
E3DB:   3AB900        ld        a, (loc_00B9)
E3DE:   B8            cp        b
E3DF:   2893          jr        z, label_E374
E3E1:   CBBE          res       7, (hl)
E3E3:   2B            dec       hl
E3E4:   36A0          ld        (hl), A0
E3E6:   18D9          jr        label_E3C1
E3E8:   010203        ld        bc, 0302
E3EB:   04            inc       b
E3EC:   05            dec       b
E3ED:   0607          ld        b, 07
E3EF:   08            ex        af, af'
E3F0:   09            add       hl, bc
E3F1:   0A            ld        a, (bc)
E3F2:   0B            dec       bc
E3F3:   0C            inc       c
E3F4:   0E0F          ld        c, 0F
E3F6:   1011          djnz      label_E409
E3F8:   12            ld        (de), a
E3F9:   13            inc       de
E3FA:   14            inc       d
E3FB:   15            dec       d
E3FC:   1617          ld        d, 17
E3FE:   1819          jr        label_E419
                    label_E400:
E400:   7E            ld        a, (hl)
E401:   E63F          and       3F
E403:   4F            ld        c, a
E404:   CB76          bit       6, (hl)
E406:   2802          jr        z, label_E40A
E408:   CBA9          res       5, c
                    label_E40A:
E40A:   0600          ld        b, 00
E40C:   0C            inc       c
E40D:   09            add       hl, bc
E40E:   EB            ex        de, hl
E40F:   C9            ret
                    label_E410:
E410:   CBAE          res       5, (hl)
E412:   EB            ex        de, hl
E413:   CB6E          bit       5, (hl)
E415:   EB            ex        de, hl
E416:   2802          jr        z, label_E41A
E418:   CBEE          set       5, (hl)
                    label_E41A:
E41A:   CD00E4        call      label_E400
E41D:   CD00E4        call      label_E400
E420:   41            ld        b, c
E421:   C9            ret
                    label_E422:
E422:   CD10E4        call      label_E410
                    label_E425:
E425:   1A            ld        a, (de)
E426:   77            ld        (hl), a
E427:   2B            dec       hl
E428:   CB76          bit       6, (hl)
E42A:   C0            ret       nz
E42B:   1B            dec       de
E42C:   10F7          djnz      label_E425
E42E:   C9            ret
                    label_E42F:
E42F:   CD10E4        call      label_E410
                    label_E432:
E432:   1A            ld        a, (de)
E433:   E60F          and       0F
E435:   1002          djnz      label_E439
E437:   1814          jr        label_E44D
                    label_E439:
E439:   1B            dec       de
E43A:   4F            ld        c, a
E43B:   1A            ld        a, (de)
E43C:   E60F          and       0F
E43E:   07            rlca
E43F:   07            rlca
E440:   07            rlca
E441:   07            rlca
E442:   B1            or        c
E443:   77            ld        (hl), a
E444:   2B            dec       hl
E445:   CB76          bit       6, (hl)
E447:   C0            ret       nz
E448:   1B            dec       de
E449:   10E7          djnz      label_E432
E44B:   1801          jr        label_E44E
                    label_E44D:
E44D:   77            ld        (hl), a
                    label_E44E:
E44E:   C9            ret
                    label_E44F:
E44F:   CD10E4        call      label_E410
                    label_E452:
E452:   3E01          ld        a, 01
E454:   32CE00        ld        (loc_00CE), a
E457:   1A            ld        a, (de)
E458:   4F            ld        c, a
                    label_E459:
E459:   E60F          and       0F
E45B:   B6            or        (hl)
E45C:   77            ld        (hl), a
E45D:   2B            dec       hl
E45E:   CB76          bit       6, (hl)
E460:   C0            ret       nz
E461:   3ACE00        ld        a, (loc_00CE)
E464:   FE00          cp        00
E466:   280B          jr        z, label_E473
E468:   AF            xor       a
E469:   32CE00        ld        (loc_00CE), a
E46C:   79            ld        a, c
E46D:   0F            rrca
E46E:   0F            rrca
E46F:   0F            rrca
E470:   0F            rrca
E471:   18E6          jr        label_E459
                    label_E473:
E473:   1B            dec       de
E474:   10DC          djnz      label_E452
E476:   C9            ret
                    label_E477:
E477:   E5            push      hl
E478:   7E            ld        a, (hl)
E479:   E63F          and       3F
E47B:   47            ld        b, a
E47C:   04            inc       b
E47D:   CB7E          bit       7, (hl)
E47F:   2014          jr        nz, label_E495
E481:   CB76          bit       6, (hl)
E483:   2004          jr        nz, label_E489
E485:   3E20          ld        a, 20
E487:   1806          jr        label_E48F
                    label_E489:
E489:   3E30          ld        a, 30
                    label_E48B:
E48B:   CBA8          res       5, b
E48D:   CBAE          res       5, (hl)
                    label_E48F:
E48F:   23            inc       hl
E490:   77            ld        (hl), a
E491:   10FC          djnz      label_E48F
E493:   E1            pop       hl
E494:   C9            ret
                    label_E495:
E495:   AF            xor       a
E496:   CB76          bit       6, (hl)
E498:   28F5          jr        z, label_E48F
E49A:   18EF          jr        label_E48B
                    label_E49C:
E49C:   1A            ld        a, (de)
E49D:   BE            cp        (hl)
E49E:   FAA2E4        jp        m, label_E4A2
E4A1:   7E            ld        a, (hl)
                    label_E4A2:
E4A2:   0600          ld        b, 00
E4A4:   4F            ld        c, a
E4A5:   03            inc       bc
E4A6:   13            inc       de
E4A7:   23            inc       hl
E4A8:   EB            ex        de, hl
E4A9:   EDB0          ldir
E4AB:   C9            ret
                    label_E4AC:
E4AC:   EB            ex        de, hl
E4AD:   CD77E4        call      label_E477
E4B0:   7E            ld        a, (hl)
E4B1:   E6C0          and       C0
E4B3:   4F            ld        c, a
E4B4:   1A            ld        a, (de)
E4B5:   E6C0          and       C0
E4B7:   0F            rrca
E4B8:   0F            rrca
E4B9:   B1            or        c
E4BA:   28E0          jr        z, label_E49C
E4BC:   FE50          cp        50
                    label_E4BE:
E4BE:   CA22E4        jp        z, label_E422
E4C1:   FEF0          cp        F0
E4C3:   28F9          jr        z, label_E4BE
E4C5:   FE70          cp        70
E4C7:   2886          jr        z, label_E44F
E4C9:   FED0          cp        D0
E4CB:   CA2FE4        jp        z, label_E42F
E4CE:   C9            ret
                    label_E4CF:
E4CF:   E5            push      hl
E4D0:   CD00E4        call      label_E400
E4D3:   EB            ex        de, hl
E4D4:   E1            pop       hl
E4D5:   03            inc       bc
E4D6:   EDB0          ldir
E4D8:   C9            ret
                    label_E4D9:
E4D9:   CD00E4        call      label_E400
E4DC:   D5            push      de
E4DD:   51            ld        d, c
E4DE:   CD00E4        call      label_E400
E4E1:   41            ld        b, c
E4E2:   4C            ld        c, h
E4E3:   E1            pop       hl
E4E4:   C9            ret
                    label_E4E5:
E4E5:   CB76          bit       6, (hl)
E4E7:   2032          jr        nz, label_E51B
E4E9:   3E20          ld        a, 20
E4EB:   CB7E          bit       7, (hl)
E4ED:   2801          jr        z, label_E4F0
E4EF:   AF            xor       a
                    label_E4F0:
E4F0:   32CD00        ld        (loc_00CD), a
E4F3:   D5            push      de
E4F4:   E5            push      hl
E4F5:   CD00E4        call      label_E400
E4F8:   C5            push      bc
E4F9:   CD00E4        call      label_E400
E4FC:   41            ld        b, c
E4FD:   E1            pop       hl
E4FE:   4D            ld        c, l
E4FF:   E1            pop       hl
E500:   D1            pop       de
                    label_E501:
E501:   23            inc       hl
E502:   13            inc       de
E503:   1A            ld        a, (de)
E504:   BE            cp        (hl)
E505:   C0            ret       nz
E506:   0D            dec       c
E507:   2808          jr        z, label_E511
E509:   10F6          djnz      label_E501
E50B:   11CC00        ld        de, 00CC
E50E:   04            inc       b
E50F:   18F0          jr        label_E501
                    label_E511:
E511:   1002          djnz      label_E515
E513:   BF            cp        a
E514:   C9            ret
                    label_E515:
E515:   21CC00        ld        hl, 00CC
E518:   0C            inc       c
E519:   18E6          jr        label_E501
                    label_E51B:
E51B:   1A            ld        a, (de)
E51C:   E620          and       20
E51E:   4F            ld        c, a
E51F:   7E            ld        a, (hl)
E520:   E620          and       20
E522:   B9            cp        c
E523:   C0            ret       nz
E524:   CB6E          bit       5, (hl)
E526:   2801          jr        z, label_E529
E528:   EB            ex        de, hl
                    label_E529:
E529:   AF            xor       a
E52A:   32F500        ld        (loc_00F5), a
E52D:   CB7E          bit       7, (hl)
E52F:   2002          jr        nz, label_E533
E531:   3E30          ld        a, 30
                    label_E533:
E533:   32CD00        ld        (loc_00CD), a
E536:   1A            ld        a, (de)
E537:   E61F          and       1F
E539:   3C            inc       a
E53A:   47            ld        b, a
E53B:   7E            ld        a, (hl)
E53C:   E61F          and       1F
E53E:   3C            inc       a
E53F:   4F            ld        c, a
                    label_E540:
E540:   79            ld        a, c
E541:   B8            cp        b
E542:   2811          jr        z, label_E555
E544:   FA89E5        jp        m, label_E589
E547:   EB            ex        de, hl
E548:   22F300        ld        (loc_00F3), hl
E54B:   21F500        ld        hl, 00F5
E54E:   CBFE          set       7, (hl)
E550:   21CC00        ld        hl, 00CC
E553:   EB            ex        de, hl
E554:   04            inc       b
                    label_E555:
E555:   13            inc       de
E556:   23            inc       hl
E557:   3ACD00        ld        a, (loc_00CD)
E55A:   FE00          cp        00
E55C:   1A            ld        a, (de)
E55D:   2804          jr        z, label_E563
E55F:   96            sub       (hl)
E560:   280C          jr        z, label_E56E
E562:   C9            ret
                    label_E563:
E563:   96            sub       (hl)
E564:   27            daa
E565:   2807          jr        z, label_E56E
E567:   3E00          ld        a, 00
E569:   3C            inc       a
E56A:   D0            ret       nc
E56B:   3D            dec       a
E56C:   3D            dec       a
E56D:   C9            ret
                    label_E56E:
E56E:   05            dec       b
E56F:   0D            dec       c
E570:   C8            ret       z
E571:   3AF500        ld        a, (loc_00F5)
E574:   CB7F          bit       7, a
E576:   2804          jr        z, label_E57C
E578:   ED5BF300      ld        de, (loc_00F3)
                    label_E57C:
E57C:   CB77          bit       6, a
E57E:   2803          jr        z, label_E583
E580:   2AF100        ld        hl, (loc_00F1)
                    label_E583:
E583:   AF            xor       a
E584:   32F500        ld        (loc_00F5), a
E587:   18B7          jr        label_E540
                    label_E589:
E589:   22F100        ld        (loc_00F1), hl
E58C:   21F500        ld        hl, 00F5
E58F:   CBF6          set       6, (hl)
E591:   21CC00        ld        hl, 00CC
E594:   0C            inc       c
E595:   18BE          jr        label_E555
                    label_E597:
E597:   3E01          ld        a, 01
E599:   32CF00        ld        (loc_00CF), a
E59C:   7E            ld        a, (hl)
E59D:   EE20          xor       20
E59F:   1805          jr        label_E5A6
                    label_E5A1:
E5A1:   AF            xor       a
E5A2:   32CF00        ld        (loc_00CF), a
E5A5:   7E            ld        a, (hl)
                    label_E5A6:
E5A6:   E620          and       20
E5A8:   47            ld        b, a
E5A9:   1A            ld        a, (de)
E5AA:   E620          and       20
E5AC:   B8            cp        b
E5AD:   2006          jr        nz, label_E5B5
E5AF:   CDD9E4        call      label_E4D9
E5B2:   C312E3        jp        label_E312
                    label_E5B5:
E5B5:   E5            push      hl
E5B6:   D5            push      de
E5B7:   CD29E5        call      label_E529
E5BA:   D1            pop       de
E5BB:   E1            pop       hl
E5BC:   2809          jr        z, label_E5C7
E5BE:   FACBE5        jp        m, label_E5CB
E5C1:   CDD9E4        call      label_E4D9
E5C4:   C328E3        jp        label_E328
                    label_E5C7:
E5C7:   EB            ex        de, hl
E5C8:   C377E4        jp        label_E477
                    label_E5CB:
E5CB:   D5            push      de
E5CC:   11D000        ld        de, 00D0
E5CF:   D5            push      de
E5D0:   CDCFE4        call      label_E4CF
E5D3:   E1            pop       hl
E5D4:   D1            pop       de
E5D5:   3ACF00        ld        a, (loc_00CF)
E5D8:   FE00          cp        00
E5DA:   2808          jr        z, label_E5E4
E5DC:   CB6E          bit       5, (hl)
E5DE:   CBEE          set       5, (hl)
E5E0:   2802          jr        z, label_E5E4
E5E2:   CBAE          res       5, (hl)
                    label_E5E4:
E5E4:   EB            ex        de, hl
E5E5:   E5            push      hl
E5E6:   D5            push      de
E5E7:   CDD9E4        call      label_E4D9
E5EA:   CD28E3        call      label_E328
E5ED:   E1            pop       hl
E5EE:   D1            pop       de
E5EF:   C3ACE4        jp        label_E4AC
                    label_E5F2:
E5F2:   7E            ld        a, (hl)
E5F3:   4F            ld        c, a
E5F4:   CB81          res       0, c
E5F6:   E61F          and       1F
E5F8:   47            ld        b, a
E5F9:   04            inc       b
E5FA:   1B            dec       de
                    label_E5FB:
E5FB:   23            inc       hl
E5FC:   13            inc       de
                    label_E5FD:
E5FD:   7E            ld        a, (hl)
E5FE:   CB41          bit       0, c
E600:   2006          jr        nz, label_E608
E602:   FE30          cp        30
E604:   200D          jr        nz, label_E613
E606:   CBA7          res       4, a
                    label_E608:
E608:   12            ld        (de), a
E609:   10F0          djnz      label_E5FB
                    label_E60B:
E60B:   CB69          bit       5, c
E60D:   C8            ret       z
E60E:   3E2D          ld        a, 2D
E610:   13            inc       de
E611:   12            ld        (de), a
E612:   C9            ret
                    label_E613:
E613:   CBC1          set       0, c
E615:   18F1          jr        label_E608
                    label_E617:
E617:   7E            ld        a, (hl)
E618:   4F            ld        c, a
E619:   CB81          res       0, c
E61B:   E61F          and       1F
E61D:   47            ld        b, a
E61E:   04            inc       b
E61F:   1B            dec       de
                    label_E620:
E620:   23            inc       hl
E621:   13            inc       de
                    label_E622:
E622:   7E            ld        a, (hl)
E623:   CB41          bit       0, c
E625:   2006          jr        nz, label_E62D
E627:   FE30          cp        30
E629:   2807          jr        z, label_E632
E62B:   CBC1          set       0, c
                    label_E62D:
E62D:   12            ld        (de), a
                    label_E62E:
E62E:   10F0          djnz      label_E620
E630:   18D9          jr        label_E60B
                    label_E632:
E632:   1B            dec       de
E633:   18F9          jr        label_E62E
                    label_E635:
E635:   E5            push      hl
E636:   54            ld        d, h
E637:   5D            ld        e, l
E638:   C5            push      bc
E639:   CDA1E5        call      label_E5A1
E63C:   C1            pop       bc
E63D:   E1            pop       hl
                    label_E63E:
E63E:   10F5          djnz      label_E635
E640:   C9            ret
                    label_E641:
E641:   21F900        ld        hl, 00F9
E644:   3601          ld        (hl), 01
E646:   2B            dec       hl
E647:   AF            xor       a
E648:   77            ld        (hl), a
E649:   2B            dec       hl
E64A:   77            ld        (hl), a
E64B:   2B            dec       hl
E64C:   36C2          ld        (hl), C2
E64E:   41            ld        b, c
E64F:   18ED          jr        label_E63E
                    label_E651:
E651:   7E            ld        a, (hl)
E652:   E6E0          and       E0
E654:   FEC0          cp        C0
E656:   C0            ret       nz
E657:   D5            push      de
E658:   E5            push      hl
E659:   0E11          ld        c, 11
E65B:   CD41E6        call      label_E641
E65E:   D1            pop       de
E65F:   D5            push      de
E660:   C5            push      bc
E661:   CDE5E4        call      label_E4E5
E664:   C1            pop       bc
E665:   E1            pop       hl
E666:   D1            pop       de
E667:   C8            ret       z
E668:   F0            ret       p
E669:   D5            push      de
E66A:   C5            push      bc
E66B:   11D000        ld        de, 00D0
E66E:   CDCFE4        call      label_E4CF
E671:   C1            pop       bc
E672:   D1            pop       de
E673:   AF            xor       a
E674:   12            ld        (de), a
E675:   13            inc       de
E676:   12            ld        (de), a
E677:   CD7BE6        call      label_E67B
E67A:   1B            dec       de
                    label_E67B:
E67B:   0608          ld        b, 08
                    label_E67D:
E67D:   0D            dec       c
E67E:   C5            push      bc
E67F:   D5            push      de
E680:   CD41E6        call      label_E641
E683:   E5            push      hl
E684:   11D000        ld        de, 00D0
E687:   CDE5E4        call      label_E4E5
E68A:   E1            pop       hl
E68B:   FA9EE6        jp        m, label_E69E
E68E:   11D000        ld        de, 00D0
E691:   CD97E5        call      label_E597
E694:   D1            pop       de
E695:   1A            ld        a, (de)
E696:   07            rlca
E697:   CBC7          set       0, a
                    label_E699:
E699:   12            ld        (de), a
E69A:   C1            pop       bc
E69B:   10E0          djnz      label_E67D
E69D:   C9            ret
                    label_E69E:
E69E:   D1            pop       de
E69F:   1A            ld        a, (de)
E6A0:   07            rlca
E6A1:   18F6          jr        label_E699
                    label_E6A3:
E6A3:   EB            ex        de, hl
E6A4:   CD77E4        call      label_E477
E6A7:   E5            push      hl
E6A8:   0E01          ld        c, 01
E6AA:   CD41E6        call      label_E641
E6AD:   1A            ld        a, (de)
E6AE:   47            ld        b, a
E6AF:   13            inc       de
E6B0:   1A            ld        a, (de)
E6B1:   4F            ld        c, a
E6B2:   78            ld        a, b
E6B3:   D1            pop       de
E6B4:   CDB8E6        call      label_E6B8
E6B7:   79            ld        a, c
                    label_E6B8:
E6B8:   0608          ld        b, 08
                    label_E6BA:
E6BA:   C5            push      bc
E6BB:   F5            push      af
E6BC:   CB47          bit       0, a
E6BE:   2807          jr        z, label_E6C7
E6C0:   D5            push      de
E6C1:   E5            push      hl
E6C2:   CDA1E5        call      label_E5A1
E6C5:   E1            pop       hl
E6C6:   D1            pop       de
                    label_E6C7:
E6C7:   0601          ld        b, 01
E6C9:   D5            push      de
E6CA:   CD35E6        call      label_E635
E6CD:   D1            pop       de
E6CE:   F1            pop       af
E6CF:   C1            pop       bc
E6D0:   0F            rrca
E6D1:   10E7          djnz      label_E6BA
E6D3:   C9            ret
                    label_E6D4:
E6D4:   3A0201        ld        a, (loc_0102)
E6D7:   CB47          bit       0, a
E6D9:   2005          jr        nz, label_E6E0
E6DB:   2A0001        ld        hl, (loc_0100)
E6DE:   36FF          ld        (hl), FF
                    label_E6E0:
E6E0:   CDD1E1        call      label_E1D1
E6E3:   2AFA00        ld        hl, (loc_00FA)
E6E6:   ED4BFC00      ld        bc, (loc_00FC)
E6EA:   CD5FE2        call      label_E25F
E6ED:   21C700        ld        hl, 00C7
E6F0:   CD77E2        call      label_E277
E6F3:   0650          ld        b, 50
E6F5:   78            ld        a, b
E6F6:   32CB00        ld        (loc_00CB), a
E6F9:   CD3DE2        call      label_E23D
E6FC:   21B0B0        ld        hl, B0B0
                    label_E6FF:
E6FF:   C3BEE1        jp        label_E1BE
                    label_E702:
E702:   2AFA00        ld        hl, (loc_00FA)
E705:   ED5BFC00      ld        de, (loc_00FC)
E709:   19            add       hl, de
E70A:   3A0201        ld        a, (loc_0102)
E70D:   CB47          bit       0, a
E70F:   282D          jr        z, label_E73E
E711:   ED5B0001      ld        de, (loc_0100)
E715:   A7            and       a
E716:   ED52          sbc       hl, de
E718:   2819          jr        z, label_E733
                    label_E71A:
E71A:   2A0301        ld        hl, (loc_0103)
E71D:   ED5B0001      ld        de, (loc_0100)
E721:   ED4BFE00      ld        bc, (loc_00FE)
E725:   EDB0          ldir
E727:   ED530001      ld        (loc_0100), de
E72B:   2A0501        ld        hl, (loc_0105)
E72E:   23            inc       hl
E72F:   220501        ld        (loc_0105), hl
E732:   C9            ret
                    label_E733:
E733:   CDE0E6        call      label_E6E0
E736:   2AFA00        ld        hl, (loc_00FA)
E739:   220001        ld        (loc_0100), hl
E73C:   18DC          jr        label_E71A
                    label_E73E:
E73E:   ED4BFE00      ld        bc, (loc_00FE)
E742:   ED5B0001      ld        de, (loc_0100)
E746:   A7            and       a
E747:   ED52          sbc       hl, de
E749:   37            scf
E74A:   ED42          sbc       hl, bc
E74C:   28CC          jr        z, label_E71A
E74E:   F21AE7        jp        p, label_E71A
E751:   2A0001        ld        hl, (loc_0100)
E754:   36FF          ld        (hl), FF
E756:   18DB          jr        label_E733
                    label_E758:
E758:   CD8BE1        call      label_E18B
E75B:   2A0701        ld        hl, (loc_0107)
E75E:   ED4B0901      ld        bc, (loc_0109)
E762:   CD72E1        call      label_E172
E765:   CD44E1        call      label_E144
E768:   21C700        ld        hl, 00C7
E76B:   BE            cp        (hl)
E76C:   2A1401        ld        hl, (loc_0114)
E76F:   2802          jr        z, label_E773
E771:   D1            pop       de
E772:   E5            push      hl
                    label_E773:
E773:   21A0A0        ld        hl, A0A0
E776:   1887          jr        label_E6FF
                    label_E778:
E778:   2A0D01        ld        hl, (loc_010D)
E77B:   010000        ld        bc, 0000
E77E:   A7            and       a
E77F:   ED42          sbc       hl, bc
E781:   2009          jr        nz, label_E78C
E783:   CD58E7        call      label_E758
E786:   2A0701        ld        hl, (loc_0107)
E789:   220D01        ld        (loc_010D), hl
                    label_E78C:
E78C:   2A0D01        ld        hl, (loc_010D)
E78F:   ED5B1001      ld        de, (loc_0110)
E793:   3A0F01        ld        a, (loc_010F)
E796:   CB47          bit       0, a
E798:   2027          jr        nz, label_E7C1
E79A:   CBBE          res       7, (hl)
                    label_E79C:
E79C:   EDA0          ldi
E79E:   CB7E          bit       7, (hl)
E7A0:   28FA          jr        z, label_E79C
E7A2:   EB            ex        de, hl
E7A3:   ED4B1001      ld        bc, (loc_0110)
E7A7:   A7            and       a
E7A8:   ED42          sbc       hl, bc
E7AA:   220B01        ld        (loc_010B), hl
E7AD:   EB            ex        de, hl
E7AE:   7E            ld        a, (hl)
E7AF:   FEFF          cp        FF
                    label_E7B1:
E7B1:   2003          jr        nz, label_E7B6
E7B3:   210000        ld        hl, 0000
                    label_E7B6:
E7B6:   220D01        ld        (loc_010D), hl
E7B9:   2A1201        ld        hl, (loc_0112)
E7BC:   23            inc       hl
E7BD:   221201        ld        (loc_0112), hl
E7C0:   C9            ret
                    label_E7C1:
E7C1:   ED4B0B01      ld        bc, (loc_010B)
E7C5:   EDB0          ldir
E7C7:   EB            ex        de, hl
E7C8:   2A0701        ld        hl, (loc_0107)
E7CB:   ED4B0901      ld        bc, (loc_0109)
E7CF:   09            add       hl, bc
E7D0:   A7            and       a
E7D1:   ED52          sbc       hl, de
E7D3:   EB            ex        de, hl
E7D4:   18DB          jr        label_E7B1
                    label_E7D6:
E7D6:   211601        ld        hl, 0116
E7D9:   010006        ld        bc, 0600
                    label_E7DC:
E7DC:   7E            ld        a, (hl)
E7DD:   FE20          cp        20
E7DF:   280B          jr        z, label_E7EC
E7E1:   E60F          and       0F
E7E3:   5F            ld        e, a
E7E4:   79            ld        a, c
E7E5:   07            rlca
E7E6:   07            rlca
E7E7:   07            rlca
E7E8:   07            rlca
E7E9:   B3            or        e
E7EA:   D3DF          out       (DF), a
                    label_E7EC:
E7EC:   0C            inc       c
E7ED:   23            inc       hl
E7EE:   10EC          djnz      label_E7DC
E7F0:   18E4          jr        label_E7D6
E7F2:   211601        ld        hl, 0116
E7F5:   010500        ld        bc, 0005
                    label_E7F8:
E7F8:   54            ld        d, h
E7F9:   5D            ld        e, l
E7FA:   13            inc       de
E7FB:   3620          ld        (hl), 20
E7FD:   EDB0          ldir
E7FF:   C9            ret
                    label_E800:
E800:   CBAE          res       5, (hl)
E802:   EB            ex        de, hl
E803:   CBAE          res       5, (hl)
E805:   1843          jr        label_E84A
                    label_E807:
E807:   7E            ld        a, (hl)
E808:   E6C0          and       C0
E80A:   FEC0          cp        C0
E80C:   C0            ret       nz
E80D:   1A            ld        a, (de)
E80E:   E6C0          and       C0
E810:   FEC0          cp        C0
E812:   C0            ret       nz
E813:   7E            ld        a, (hl)
E814:   E61F          and       1F
E816:   3C            inc       a
E817:   CB27          sla       a
E819:   32B400        ld        (loc_00B4), a
E81C:   ED53F800      ld        (loc_00F8), de
E820:   22F600        ld        (loc_00F6), hl
E823:   EB            ex        de, hl
E824:   11D000        ld        de, 00D0
E827:   CDCFE4        call      label_E4CF
E82A:   2AF800        ld        hl, (loc_00F8)
E82D:   CD77E4        call      label_E477
E830:   2AF600        ld        hl, (loc_00F6)
E833:   7E            ld        a, (hl)
E834:   E620          and       20
E836:   47            ld        b, a
E837:   3AD000        ld        a, (loc_00D0)
E83A:   E620          and       20
E83C:   B8            cp        b
E83D:   11D000        ld        de, 00D0
E840:   2AF800        ld        hl, (loc_00F8)
E843:   28BB          jr        z, label_E800
E845:   CBEE          set       5, (hl)
E847:   EB            ex        de, hl
E848:   CBEE          set       5, (hl)
                    label_E84A:
E84A:   2AF600        ld        hl, (loc_00F6)
E84D:   0600          ld        b, 00
E84F:   3AB400        ld        a, (loc_00B4)
E852:   CB3F          srl       a
E854:   4F            ld        c, a
E855:   09            add       hl, bc
E856:   22F600        ld        (loc_00F6), hl
E859:   AF            xor       a
E85A:   32B500        ld        (loc_00B5), a
                    label_E85D:
E85D:   3AB400        ld        a, (loc_00B4)
E860:   FE00          cp        00
E862:   C8            ret       z
E863:   3D            dec       a
E864:   32B400        ld        (loc_00B4), a
E867:   ED5BF600      ld        de, (loc_00F6)
E86B:   1A            ld        a, (de)
E86C:   21B500        ld        hl, 00B5
E86F:   CB7E          bit       7, (hl)
E871:   2838          jr        z, label_E8AB
E873:   CBBE          res       7, (hl)
E875:   CB3F          srl       a
E877:   CB3F          srl       a
E879:   CB3F          srl       a
E87B:   CB3F          srl       a
E87D:   1B            dec       de
E87E:   ED53F600      ld        (loc_00F6), de
                    label_E882:
E882:   FE00          cp        00
E884:   280F          jr        z, label_E895
E886:   47            ld        b, a
                    label_E887:
E887:   C5            push      bc
E888:   21D000        ld        hl, 00D0
E88B:   ED5BF800      ld        de, (loc_00F8)
E88F:   CDA1E5        call      label_E5A1
E892:   C1            pop       bc
E893:   10F2          djnz      label_E887
                    label_E895:
E895:   3AD000        ld        a, (loc_00D0)
E898:   E61F          and       1F
E89A:   3C            inc       a
E89B:   4F            ld        c, a
E89C:   0600          ld        b, 00
E89E:   21D200        ld        hl, 00D2
E8A1:   09            add       hl, bc
E8A2:   41            ld        b, c
E8A3:   AF            xor       a
                    label_E8A4:
E8A4:   2B            dec       hl
E8A5:   ED6F          rld
E8A7:   10FB          djnz      label_E8A4
E8A9:   18B2          jr        label_E85D
                    label_E8AB:
E8AB:   CBFE          set       7, (hl)
E8AD:   E60F          and       0F
E8AF:   18D1          jr        label_E882
                    label_E8B1:
E8B1:   0A            ld        a, (bc)
E8B2:   E6C0          and       C0
E8B4:   FEC0          cp        C0
E8B6:   C0            ret       nz
E8B7:   7E            ld        a, (hl)
E8B8:   E6C0          and       C0
E8BA:   FEC0          cp        C0
E8BC:   C0            ret       nz
E8BD:   1A            ld        a, (de)
E8BE:   E6C0          and       C0
E8C0:   FEC0          cp        C0
E8C2:   C0            ret       nz
E8C3:   22F600        ld        (loc_00F6), hl
E8C6:   ED53F800      ld        (loc_00F8), de
E8CA:   ED43B000      ld        (loc_00B0), bc
E8CE:   1A            ld        a, (de)
E8CF:   CB27          sla       a
E8D1:   E640          and       40
E8D3:   5F            ld        e, a
E8D4:   7E            ld        a, (hl)
E8D5:   CB27          sla       a
E8D7:   CB27          sla       a
E8D9:   E680          and       80
E8DB:   B3            or        e
E8DC:   32B500        ld        (loc_00B5), a
E8DF:   CBAE          res       5, (hl)
E8E1:   2AF800        ld        hl, (loc_00F8)
E8E4:   CBAE          res       5, (hl)
E8E6:   60            ld        h, b
E8E7:   69            ld        l, c
E8E8:   CD77E4        call      label_E477
E8EB:   AF            xor       a
E8EC:   5F            ld        e, a
                    label_E8ED:
E8ED:   47            ld        b, a
E8EE:   2AF800        ld        hl, (loc_00F8)
E8F1:   7E            ld        a, (hl)
E8F2:   E61F          and       1F
E8F4:   4F            ld        c, a
E8F5:   AF            xor       a
E8F6:   0C            inc       c
E8F7:   23            inc       hl
E8F8:   ED6F          rld
E8FA:   200D          jr        nz, label_E909
E8FC:   ED67          rrd
E8FE:   09            add       hl, bc
E8FF:   41            ld        b, c
                    label_E900:
E900:   2B            dec       hl
E901:   ED6F          rld
E903:   10FB          djnz      label_E900
E905:   1C            inc       e
E906:   AF            xor       a
E907:   18E4          jr        label_E8ED
                    label_E909:
E909:   ED67          rrd
E90B:   7B            ld        a, e
E90C:   32B400        ld        (loc_00B4), a
                    label_E90F:
E90F:   ED5BF600      ld        de, (loc_00F6)
E913:   2AF800        ld        hl, (loc_00F8)
E916:   CD97E5        call      label_E597
E919:   2AF600        ld        hl, (loc_00F6)
E91C:   CB6E          bit       5, (hl)
E91E:   202B          jr        nz, label_E94B
E920:   3AB400        ld        a, (loc_00B4)
E923:   47            ld        b, a
E924:   21D100        ld        hl, 00D1
E927:   3E01          ld        a, 01
E929:   CB40          bit       0, b
E92B:   2802          jr        z, label_E92F
E92D:   3E10          ld        a, 10
                    label_E92F:
E92F:   77            ld        (hl), a
E930:   CB38          srl       b
E932:   48            ld        c, b
E933:   04            inc       b
                    label_E934:
E934:   23            inc       hl
E935:   3600          ld        (hl), 00
E937:   10FB          djnz      label_E934
E939:   3EC0          ld        a, C0
E93B:   B1            or        c
E93C:   32D000        ld        (loc_00D0), a
E93F:   21D000        ld        hl, 00D0
E942:   ED5BB000      ld        de, (loc_00B0)
E946:   CDA1E5        call      label_E5A1
E949:   18C4          jr        label_E90F
                    label_E94B:
E94B:   2AF800        ld        hl, (loc_00F8)
E94E:   ED5BF600      ld        de, (loc_00F6)
E952:   CDA1E5        call      label_E5A1
E955:   3AB400        ld        a, (loc_00B4)
E958:   FE00          cp        00
E95A:   2814          jr        z, label_E970
E95C:   3D            dec       a
E95D:   32B400        ld        (loc_00B4), a
E960:   2AF800        ld        hl, (loc_00F8)
E963:   7E            ld        a, (hl)
E964:   E61F          and       1F
E966:   3C            inc       a
E967:   47            ld        b, a
E968:   AF            xor       a
                    label_E969:
E969:   23            inc       hl
E96A:   ED67          rrd
E96C:   10FB          djnz      label_E969
E96E:   189F          jr        label_E90F
                    label_E970:
E970:   3AB500        ld        a, (loc_00B5)
E973:   47            ld        b, a
E974:   CB78          bit       7, b
E976:   2805          jr        z, label_E97D
E978:   2AF600        ld        hl, (loc_00F6)
E97B:   CBEE          set       5, (hl)
                    label_E97D:
E97D:   CB70          bit       6, b
E97F:   2805          jr        z, label_E986
E981:   2AF800        ld        hl, (loc_00F8)
E984:   CBEE          set       5, (hl)
                    label_E986:
E986:   78            ld        a, b
E987:   E6C0          and       C0
E989:   C8            ret       z
E98A:   FEC0          cp        C0
E98C:   C8            ret       z
E98D:   2AB000        ld        hl, (loc_00B0)
E990:   CBEE          set       5, (hl)
E992:   C9            ret
                    label_E993:
E993:   1A            ld        a, (de)
E994:   E61F          and       1F
E996:   3C            inc       a
E997:   4F            ld        c, a
E998:   0600          ld        b, 00
E99A:   EB            ex        de, hl
E99B:   09            add       hl, bc
E99C:   EB            ex        de, hl
E99D:   3E20          ld        a, 20
                    label_E99F:
E99F:   BE            cp        (hl)
E9A0:   2003          jr        nz, label_E9A5
E9A2:   2B            dec       hl
E9A3:   18FA          jr        label_E99F
                    label_E9A5:
E9A5:   EDA8          ldd
E9A7:   E2B8E9        jp        po, label_E9B8
E9AA:   BE            cp        (hl)
E9AB:   20F8          jr        nz, label_E9A5
E9AD:   21A5EC        ld        hl, ECA5
                    label_E9B0:
E9B0:   EDA8          ldd
E9B2:   E2B8E9        jp        po, label_E9B8
E9B5:   23            inc       hl
E9B6:   18F8          jr        label_E9B0
                    label_E9B8:
E9B8:   EB            ex        de, hl
E9B9:   C9            ret
                    label_E9BA:
E9BA:   2A1C01        ld        hl, (loc_011C)
E9BD:   CBFE          set       7, (hl)
E9BF:   3ECE          ld        a, CE
E9C1:   BE            cp        (hl)
E9C2:   200A          jr        nz, label_E9CE
E9C4:   3631          ld        (hl), 31
E9C6:   3A2301        ld        a, (loc_0123)
E9C9:   FE00          cp        00
E9CB:   C43AEA        call      nz, label_EA3A
                    label_E9CE:
E9CE:   2A1C01        ld        hl, (loc_011C)
E9D1:   0600          ld        b, 00
E9D3:   3A2001        ld        a, (loc_0120)
E9D6:   4F            ld        c, a
E9D7:   3E20          ld        a, 20
E9D9:   09            add       hl, bc
                    label_E9DA:
E9DA:   2B            dec       hl
E9DB:   0B            dec       bc
E9DC:   BE            cp        (hl)
E9DD:   28FB          jr        z, label_E9DA
E9DF:   CB7E          bit       7, (hl)
E9E1:   2801          jr        z, label_E9E4
E9E3:   03            inc       bc
                    label_E9E4:
E9E4:   41            ld        b, c
E9E5:   2A1C01        ld        hl, (loc_011C)
                    label_E9E8:
E9E8:   23            inc       hl
E9E9:   7E            ld        a, (hl)
E9EA:   C5            push      bc
E9EB:   E5            push      hl
E9EC:   CD58EA        call      label_EA58
E9EF:   E1            pop       hl
E9F0:   C1            pop       bc
E9F1:   10F5          djnz      label_E9E8
E9F3:   3E0D          ld        a, 0D
E9F5:   CD58EA        call      label_EA58
E9F8:   2A1C01        ld        hl, (loc_011C)
E9FB:   7E            ld        a, (hl)
E9FC:   E60F          and       0F
E9FE:   47            ld        b, a
E9FF:   CD21EA        call      label_EA21
EA02:   212401        ld        hl, 0124
EA05:   CB7E          bit       7, (hl)
EA07:   2812          jr        z, label_EA1B
                    label_EA09:
EA09:   2A1C01        ld        hl, (loc_011C)
EA0C:   23            inc       hl
EA0D:   3620          ld        (hl), 20
EA0F:   54            ld        d, h
EA10:   5D            ld        e, l
EA11:   13            inc       de
EA12:   3A2001        ld        a, (loc_0120)
EA15:   4F            ld        c, a
EA16:   0600          ld        b, 00
EA18:   0B            dec       bc
EA19:   EDB0          ldir
                    label_EA1B:
EA1B:   2A1C01        ld        hl, (loc_011C)
EA1E:   3631          ld        (hl), 31
EA20:   C9            ret
                    label_EA21:
EA21:   04            inc       b
                    label_EA22:
EA22:   1001          djnz      label_EA25
EA24:   C9            ret
                    label_EA25:
EA25:   C5            push      bc
EA26:   3E0A          ld        a, 0A
EA28:   CD58EA        call      label_EA58
EA2B:   3A2301        ld        a, (loc_0123)
EA2E:   3C            inc       a
EA2F:   322301        ld        (loc_0123), a
EA32:   C1            pop       bc
EA33:   57            ld        d, a
EA34:   3A2201        ld        a, (loc_0122)
EA37:   BA            cp        d
EA38:   20E8          jr        nz, label_EA22
                    label_EA3A:
EA3A:   3A2301        ld        a, (loc_0123)
EA3D:   47            ld        b, a
EA3E:   3A2101        ld        a, (loc_0121)
EA41:   F5            push      af
EA42:   C5            push      bc
EA43:   3E0A          ld        a, 0A
EA45:   CD58EA        call      label_EA58
EA48:   3A2301        ld        a, (loc_0123)
EA4B:   3C            inc       a
EA4C:   322301        ld        (loc_0123), a
EA4F:   C1            pop       bc
EA50:   F1            pop       af
EA51:   90            sub       b
EA52:   20E6          jr        nz, label_EA3A
EA54:   322301        ld        (loc_0123), a
EA57:   C9            ret
                    label_EA58:
EA58:   212401        ld        hl, 0124
EA5B:   CB46          bit       0, (hl)
EA5D:   207E          jr        nz, label_EADD
EA5F:   FE0A          cp        0A
EA61:   CA40EC        jp        z, label_EC40
EA64:   FE07          cp        07
EA66:   2875          jr        z, label_EADD
EA68:   FE0D          cp        0D
EA6A:   200A          jr        nz, label_EA76
EA6C:   CD8DEA        call      label_EA8D
EA6F:   21C4AB        ld        hl, ABC4
EA72:   221E01        ld        (loc_011E), hl
EA75:   C9            ret
                    label_EA76:
EA76:   2A1E01        ld        hl, (loc_011E)
EA79:   57            ld        d, a
EA7A:   3EFA          ld        a, FA
EA7C:   BD            cp        l
EA7D:   7A            ld        a, d
EA7E:   2007          jr        nz, label_EA87
EA80:   2EC4          ld        l, C4
EA82:   E5            push      hl
EA83:   CD40EC        call      label_EC40
EA86:   E1            pop       hl
                    label_EA87:
EA87:   77            ld        (hl), a
EA88:   23            inc       hl
EA89:   221E01        ld        (loc_011E), hl
EA8C:   C9            ret
                    label_EA8D:
EA8D:   3E50          ld        a, 50
                    label_EA8F:
EA8F:   32B200        ld        (loc_00B2), a
                    label_EA92:
EA92:   219800        ld        hl, 0098
EA95:   CB7E          bit       7, (hl)
EA97:   2016          jr        nz, label_EAAF
EA99:   21F9AB        ld        hl, ABF9
EA9C:   CBFE          set       7, (hl)
EA9E:   E5            push      hl
EA9F:   3E30          ld        a, 30
EAA1:   32B300        ld        (loc_00B3), a
EAA4:   CDF5E2        call      label_E2F5
EAA7:   E1            pop       hl
EAA8:   CBBE          res       7, (hl)
EAAA:   CDF5E2        call      label_E2F5
EAAD:   18E3          jr        label_EA92
                    label_EAAF:
EAAF:   7E            ld        a, (hl)
EAB0:   CBBF          res       7, a
EAB2:   77            ld        (hl), a
EAB3:   E5            push      hl
EAB4:   21A6EC        ld        hl, ECA6
EAB7:   010900        ld        bc, 0009
EABA:   EDB1          cpir
EABC:   E1            pop       hl
EABD:   C0            ret       nz
EABE:   CBFE          set       7, (hl)
EAC0:   E60F          and       0F
EAC2:   CB27          sla       a
EAC4:   CB27          sla       a
EAC6:   CB27          sla       a
EAC8:   32B300        ld        (loc_00B3), a
EACB:   CDF5E2        call      label_E2F5
EACE:   C9            ret
                    label_EACF:
EACF:   F5            push      af
EAD0:   C5            push      bc
EAD1:   21060C        ld        hl, 0C06
EAD4:   22B200        ld        (loc_00B2), hl
EAD7:   CDF5E2        call      label_E2F5
EADA:   C1            pop       bc
EADB:   F1            pop       af
EADC:   C9            ret
                    label_EADD:
EADD:   CBFF          set       7, a
EADF:   32C800        ld        (loc_00C8), a
EAE2:   0609          ld        b, 09
EAE4:   DBD9          in        a, (D9)
EAE6:   CBFF          set       7, a
                    label_EAE8:
EAE8:   D3D9          out       (D9), a
EAEA:   CDCFEA        call      label_EACF
EAED:   21C800        ld        hl, 00C8
EAF0:   CB46          bit       0, (hl)
EAF2:   CBFF          set       7, a
EAF4:   2802          jr        z, label_EAF8
EAF6:   CBBF          res       7, a
                    label_EAF8:
EAF8:   CB0E          rrc       (hl)
EAFA:   10EC          djnz      label_EAE8
EAFC:   CBBF          res       7, a
EAFE:   D3D9          out       (D9), a
EB00:   CDCFEA        call      label_EACF
EB03:   C9            ret
                    label_EB04:
EB04:   E5            push      hl
EB05:   1B            dec       de
EB06:   DDE5          push      ix
EB08:   DD21C900      ld        ix, 00C9
EB0C:   DDCB0086      res       0, (ix + 00)
EB10:   7E            ld        a, (hl)
EB11:   E61F          and       1F
EB13:   3C            inc       a
EB14:   4F            ld        c, a
EB15:   0603          ld        b, 03
                    label_EB17:
EB17:   0C            inc       c
EB18:   90            sub       b
EB19:   2803          jr        z, label_EB1E
EB1B:   F217EB        jp        p, label_EB17
                    label_EB1E:
EB1E:   80            add       a, b
EB1F:   0D            dec       c
EB20:   47            ld        b, a
                    label_EB21:
EB21:   23            inc       hl
EB22:   13            inc       de
EB23:   7E            ld        a, (hl)
                    label_EB24:
EB24:   DDCB0046      bit       0, (ix + 00)
EB28:   2010          jr        nz, label_EB3A
EB2A:   FE30          cp        30
EB2C:   280A          jr        z, label_EB38
EB2E:   FE2E          cp        2E
EB30:   2806          jr        z, label_EB38
EB32:   DDCB00C6      set       0, (ix + 00)
EB36:   1802          jr        label_EB3A
                    label_EB38:
EB38:   3E20          ld        a, 20
                    label_EB3A:
EB3A:   12            ld        (de), a
EB3B:   0D            dec       c
EB3C:   2809          jr        z, label_EB47
EB3E:   10E1          djnz      label_EB21
EB40:   3E2E          ld        a, 2E
EB42:   0604          ld        b, 04
EB44:   13            inc       de
EB45:   18DD          jr        label_EB24
                    label_EB47:
EB47:   DDE1          pop       ix
EB49:   E1            pop       hl
EB4A:   13            inc       de
EB4B:   CB6E          bit       5, (hl)
EB4D:   C8            ret       z
EB4E:   3E2D          ld        a, 2D
EB50:   12            ld        (de), a
EB51:   C9            ret
                    label_EB52:
EB52:   21C4AB        ld        hl, ABC4
                    label_EB55:
EB55:   1100AC        ld        de, AC00
                    label_EB58:
EB58:   CBFE          set       7, (hl)
EB5A:   E5            push      hl
EB5B:   EB            ex        de, hl
EB5C:   3E20          ld        a, 20
                    label_EB5E:
EB5E:   2B            dec       hl
EB5F:   BE            cp        (hl)
EB60:   28FC          jr        z, label_EB5E
EB62:   CB7E          bit       7, (hl)
EB64:   0601          ld        b, 01
EB66:   2005          jr        nz, label_EB6D
EB68:   A7            and       a
EB69:   23            inc       hl
EB6A:   ED52          sbc       hl, de
EB6C:   45            ld        b, l
                    label_EB6D:
EB6D:   E1            pop       hl
EB6E:   CBBE          res       7, (hl)
EB70:   CD76EB        call      label_EB76
EB73:   C340EC        jp        label_EC40
                    label_EB76:
EB76:   2B            dec       hl
                    label_EB77:
EB77:   23            inc       hl
EB78:   7E            ld        a, (hl)
EB79:   E5            push      hl
EB7A:   C5            push      bc
EB7B:   CD58EA        call      label_EA58
EB7E:   C1            pop       bc
EB7F:   E1            pop       hl
EB80:   10F5          djnz      label_EB77
EB82:   3E0D          ld        a, 0D
EB84:   CD58EA        call      label_EA58
EB87:   3E0A          ld        a, 0A
EB89:   CD58EA        call      label_EA58
EB8C:   C9            ret
EB8D:   FF            rst       38h
EB8E:   FF            rst       38h
EB8F:   FF            rst       38h
EB90:   FF            rst       38h
EB91:   FF            rst       38h
EB92:   FF            rst       38h
EB93:   FF            rst       38h
EB94:   FF            rst       38h
EB95:   FF            rst       38h
EB96:   FF            rst       38h
EB97:   FF            rst       38h
EB98:   FF            rst       38h
EB99:   FF            rst       38h
EB9A:   FF            rst       38h
EB9B:   FF            rst       38h
EB9C:   FF            rst       38h
EB9D:   FF            rst       38h
EB9E:   FF            rst       38h
EB9F:   FF            rst       38h
EBA0:   FF            rst       38h
EBA1:   FF            rst       38h
EBA2:   FF            rst       38h
EBA3:   FF            rst       38h
EBA4:   FF            rst       38h
EBA5:   FF            rst       38h
EBA6:   FF            rst       38h
EBA7:   FF            rst       38h
EBA8:   FF            rst       38h
EBA9:   FF            rst       38h
EBAA:   FF            rst       38h
EBAB:   FF            rst       38h
EBAC:   FF            rst       38h
EBAD:   FF            rst       38h
EBAE:   FF            rst       38h
EBAF:   FF            rst       38h
EBB0:   FF            rst       38h
EBB1:   FF            rst       38h
EBB2:   FF            rst       38h
EBB3:   FF            rst       38h
EBB4:   FF            rst       38h
EBB5:   FF            rst       38h
EBB6:   FF            rst       38h
EBB7:   FF            rst       38h
EBB8:   FF            rst       38h
EBB9:   FF            rst       38h
EBBA:   FF            rst       38h
EBBB:   FF            rst       38h
EBBC:   FF            rst       38h
EBBD:   FF            rst       38h
EBBE:   FF            rst       38h
EBBF:   FF            rst       38h
EBC0:   FF            rst       38h
EBC1:   FF            rst       38h
EBC2:   FF            rst       38h
EBC3:   FF            rst       38h
EBC4:   FF            rst       38h
EBC5:   FF            rst       38h
EBC6:   FF            rst       38h
EBC7:   FF            rst       38h
EBC8:   FF            rst       38h
EBC9:   FF            rst       38h
EBCA:   FF            rst       38h
EBCB:   FF            rst       38h
EBCC:   FF            rst       38h
EBCD:   FF            rst       38h
EBCE:   FF            rst       38h
EBCF:   FF            rst       38h
EBD0:   FF            rst       38h
EBD1:   FF            rst       38h
EBD2:   FF            rst       38h
EBD3:   FF            rst       38h
EBD4:   FF            rst       38h
EBD5:   FF            rst       38h
EBD6:   FF            rst       38h
EBD7:   FF            rst       38h
EBD8:   FF            rst       38h
EBD9:   FF            rst       38h
EBDA:   FF            rst       38h
EBDB:   FF            rst       38h
EBDC:   FF            rst       38h
EBDD:   FF            rst       38h
EBDE:   FF            rst       38h
EBDF:   FF            rst       38h
EBE0:   FF            rst       38h
EBE1:   FF            rst       38h
EBE2:   FF            rst       38h
EBE3:   FF            rst       38h
EBE4:   FF            rst       38h
EBE5:   FF            rst       38h
EBE6:   FF            rst       38h
EBE7:   FF            rst       38h
EBE8:   FF            rst       38h
EBE9:   FF            rst       38h
EBEA:   FF            rst       38h
EBEB:   FF            rst       38h
EBEC:   FF            rst       38h
EBED:   FF            rst       38h
EBEE:   FF            rst       38h
EBEF:   FF            rst       38h
EBF0:   FF            rst       38h
EBF1:   FF            rst       38h
EBF2:   FF            rst       38h
EBF3:   FF            rst       38h
EBF4:   FF            rst       38h
EBF5:   FF            rst       38h
EBF6:   FF            rst       38h
EBF7:   FF            rst       38h
EBF8:   FF            rst       38h
EBF9:   FF            rst       38h
EBFA:   FF            rst       38h
EBFB:   FF            rst       38h
EBFC:   FF            rst       38h
EBFD:   FF            rst       38h
EBFE:   FF            rst       38h
EBFF:   FF            rst       38h
                    label_EC00:
EC00:   78            ld        a, b
EC01:   FE00          cp        00
EC03:   C8            ret       z
                    label_EC04:
EC04:   CD17EC        call      label_EC17
EC07:   17            rla
EC08:   17            rla
EC09:   17            rla
EC0A:   17            rla
EC0B:   E6F0          and       F0
EC0D:   4F            ld        c, a
EC0E:   CD17EC        call      label_EC17
EC11:   B1            or        c
EC12:   12            ld        (de), a
EC13:   13            inc       de
EC14:   10EE          djnz      label_EC04
EC16:   C9            ret
                    label_EC17:
EC17:   7E            ld        a, (hl)
EC18:   D630          sub       30
EC1A:   FE0A          cp        0A
EC1C:   3802          jr        c, label_EC20
EC1E:   D607          sub       07
                    label_EC20:
EC20:   23            inc       hl
EC21:   C9            ret
                    label_EC22:
EC22:   1A            ld        a, (de)
EC23:   1F            rra
EC24:   1F            rra
EC25:   1F            rra
EC26:   1F            rra
EC27:   CD34EC        call      label_EC34
EC2A:   23            inc       hl
EC2B:   1A            ld        a, (de)
EC2C:   CD34EC        call      label_EC34
EC2F:   23            inc       hl
EC30:   13            inc       de
EC31:   10EF          djnz      label_EC22
EC33:   C9            ret
                    label_EC34:
EC34:   E60F          and       0F
EC36:   FE0A          cp        0A
EC38:   3802          jr        c, label_EC3C
EC3A:   C607          add       a, 07
                    label_EC3C:
EC3C:   C630          add       a, 30
EC3E:   77            ld        (hl), a
EC3F:   C9            ret
                    label_EC40:
EC40:   2140A8        ld        hl, A840
EC43:   1100A8        ld        de, A800
EC46:   01C003        ld        bc, 03C0
EC49:   EDB0          ldir
                    label_EC4B:
EC4B:   21C0AB        ld        hl, ABC0
EC4E:   063F          ld        b, 3F
                    label_EC50:
EC50:   3620          ld        (hl), 20
EC52:   23            inc       hl
EC53:   10FB          djnz      label_EC50
EC55:   C9            ret
                    label_EC56:
EC56:   060C          ld        b, 0C
EC58:   DD217E00      ld        ix, 007E
                    label_EC5C:
EC5C:   DD23          inc       ix
EC5E:   DD23          inc       ix
                    label_EC60:
EC60:   DD7E00        ld        a, (ix + 00)
EC63:   DD4E01        ld        c, (ix + 01)
EC66:   DD7701        ld        (ix + 01), a
EC69:   DD7100        ld        (ix + 00), c
EC6C:   10EE          djnz      label_EC5C
EC6E:   C9            ret
                    label_EC6F:
EC6F:   2100A8        ld        hl, A800
EC72:   1100AC        ld        de, AC00
EC75:   0600          ld        b, 00
EC77:   CD80EC        call      label_EC80
EC7A:   CD80EC        call      label_EC80
EC7D:   CD80EC        call      label_EC80
                    label_EC80:
EC80:   4E            ld        c, (hl)
EC81:   1A            ld        a, (de)
EC82:   77            ld        (hl), a
EC83:   79            ld        a, c
EC84:   12            ld        (de), a
EC85:   23            inc       hl
EC86:   13            inc       de
EC87:   10F7          djnz      label_EC80
EC89:   C9            ret
                    label_EC8A:
EC8A:   2100A8        ld        hl, A800
EC8D:   1101A8        ld        de, A801
EC90:   3620          ld        (hl), 20
EC92:   01FF03        ld        bc, 03FF
EC95:   EDB0          ldir
EC97:   C9            ret
                    label_EC98:
EC98:   3A9800        ld        a, (loc_0098)
EC9B:   CB7F          bit       7, a
EC9D:   28F9          jr        z, label_EC98
EC9F:   CBBF          res       7, a
ECA1:   329800        ld        (loc_0098), a
ECA4:   C9            ret
ECA5:   3031          jr        nc, label_ECD8
ECA7:   323334        ld        (loc_3433), a
ECAA:   35            dec       (hl)
ECAB:   3637          ld        (hl), 37
ECAD:   3839          jr        c, label_ECE8
ECAF:   41            ld        b, c
ECB0:   42            ld        b, d
ECB1:   43            ld        b, e
ECB2:   44            ld        b, h
ECB3:   45            ld        b, l
ECB4:   46            ld        b, (hl)
ECB5:   F5            push      af
ECB6:   3A9800        ld        a, (loc_0098)
ECB9:   FE9B          cp        9B
ECBB:   280B          jr        z, label_ECC8
ECBD:   DBCD          in        a, (CD)
ECBF:   CBFF          set       7, a
ECC1:   FE9B          cp        9B
ECC3:   2807          jr        z, label_ECCC
                    label_ECC5:
ECC5:   329800        ld        (loc_0098), a
                    label_ECC8:
ECC8:   F1            pop       af
ECC9:   FB            ei
ECCA:   ED4D          reti
                    label_ECCC:
ECCC:   228A00        ld        (loc_008A), hl
ECCF:   E1            pop       hl
ECD0:   228400        ld        (loc_0084), hl
ECD3:   E1            pop       hl
ECD4:   228000        ld        (loc_0080), hl
ECD7:   ED738200      ld        (loc_0082), sp
ECDB:   21E3EC        ld        hl, ECE3
ECDE:   E5            push      hl
ECDF:   3B            dec       sp
ECE0:   3B            dec       sp
ECE1:   18E2          jr        label_ECC5
ECE3:   ED438600      ld        (loc_0086), bc
ECE7:   ED538800      ld        (loc_0088), de
ECEB:   08            ex        af, af'
ECEC:   F5            push      af
ECED:   E1            pop       hl
ECEE:   229000        ld        (loc_0090), hl
ECF1:   08            ex        af, af'
ECF2:   D9            exx
ECF3:   ED439200      ld        (loc_0092), bc
ECF7:   ED539400      ld        (loc_0094), de
ECFB:   229600        ld        (loc_0096), hl
ECFE:   D9            exx
ECFF:   DD228C00      ld        (008C), ix
ED03:   FD228E00      ld        (008E), iy
ED07:   CD6FEC        call      label_EC6F
ED0A:   CD6CEF        call      label_EF6C
ED0D:   1833          jr        label_ED42
                    label_ED0F:
ED0F:   21B5EC        ld        hl, ECB5
ED12:   227000        ld        (loc_0070), hl
ED15:   219800        ld        hl, 0098
ED18:   3600          ld        (hl), 00
ED1A:   23            inc       hl
ED1B:   36C3          ld        (hl), C3
ED1D:   0614          ld        b, 14
ED1F:   23            inc       hl
ED20:   23            inc       hl
                    label_ED21:
ED21:   23            inc       hl
ED22:   3676          ld        (hl), 76
ED24:   10FB          djnz      label_ED21
ED26:   FB            ei
ED27:   ED5E          im        2
ED29:   3E4F          ld        a, 4F
ED2B:   D3CF          out       (CF), a
ED2D:   3E87          ld        a, 87
ED2F:   D3CF          out       (CF), a
ED31:   AF            xor       a
ED32:   ED47          ld        i, a
ED34:   3E70          ld        a, 70
ED36:   D3CF          out       (CF), a
ED38:   C9            ret
ED39:   CD0FED        call      label_ED0F
ED3C:   CD8AEC        call      label_EC8A
                    label_ED3F:
ED3F:   CD4BEC        call      label_EC4B
                    label_ED42:
ED42:   21C4AB        ld        hl, ABC4
                    label_ED45:
ED45:   0600          ld        b, 00
                    label_ED47:
ED47:   CBFE          set       7, (hl)
                    label_ED49:
ED49:   CD98EC        call      label_EC98
ED4C:   FE50          cp        50
ED4E:   CA58EE        jp        z, label_EE58
ED51:   FE54          cp        54
ED53:   CAA5EE        jp        z, label_EEA5
ED56:   FE4D          cp        4D
                    label_ED58:
ED58:   CA70EE        jp        z, label_EE70
ED5B:   FE48          cp        48
ED5D:   28F9          jr        z, label_ED58
ED5F:   FE4B          cp        4B
ED61:   CA03E0        jp        z, label_E003
ED64:   FE56          cp        56
ED66:   CA75EF        jp        z, label_EF75
ED69:   FE47          cp        47
ED6B:   CA70EE        jp        z, label_EE70
ED6E:   FE58          cp        58
ED70:   CA30EF        jp        z, label_EF30
ED73:   FE1B          cp        1B
ED75:   CAD6EE        jp        z, label_EED6
ED78:   FE0D          cp        0D
ED7A:   CA27EE        jp        z, label_EE27
ED7D:   FE3C          cp        3C
ED7F:   CA0CEE        jp        z, label_EE0C
ED82:   78            ld        a, b
ED83:   FE30          cp        30
ED85:   28C2          jr        z, label_ED49
ED87:   3A9800        ld        a, (loc_0098)
ED8A:   FE3E          cp        3E
ED8C:   CA15EE        jp        z, label_EE15
ED8F:   D9            exx
ED90:   21A5EC        ld        hl, ECA5
ED93:   011000        ld        bc, 0010
ED96:   EDB1          cpir
ED98:   D9            exx
ED99:   20AE          jr        nz, label_ED49
ED9B:   3AC4AB        ld        a, (loc_ABC4)
ED9E:   CB7F          bit       7, a
EDA0:   20A7          jr        nz, label_ED49
EDA2:   FE48          cp        48
EDA4:   3A9800        ld        a, (loc_0098)
EDA7:   202E          jr        nz, label_EDD7
EDA9:   D9            exx
EDAA:   21AFEC        ld        hl, ECAF
EDAD:   010600        ld        bc, 0006
EDB0:   EDB1          cpir
EDB2:   D9            exx
EDB3:   2894          jr        z, label_ED49
EDB5:   77            ld        (hl), a
EDB6:   E60F          and       0F
EDB8:   CB27          sla       a
EDBA:   119C00        ld        de, 009C
EDBD:   83            add       a, e
EDBE:   5F            ld        e, a
EDBF:   1A            ld        a, (de)
EDC0:   FE76          cp        76
EDC2:   C23FED        jp        nz, label_ED3F
EDC5:   2A9A00        ld        hl, (loc_009A)
EDC8:   7E            ld        a, (hl)
EDC9:   12            ld        (de), a
EDCA:   3676          ld        (hl), 76
EDCC:   13            inc       de
EDCD:   23            inc       hl
EDCE:   7E            ld        a, (hl)
EDCF:   12            ld        (de), a
EDD0:   3ACBAB        ld        a, (loc_ABCB)
EDD3:   77            ld        (hl), a
EDD4:   C31BEF        jp        label_EF1B
                    label_EDD7:
EDD7:   77            ld        (hl), a
EDD8:   04            inc       b
EDD9:   3AC4AB        ld        a, (loc_ABC4)
EDDC:   FE50          cp        50
EDDE:   2804          jr        z, label_EDE4
                    label_EDE0:
EDE0:   23            inc       hl
EDE1:   C347ED        jp        label_ED47
                    label_EDE4:
EDE4:   CB50          bit       2, b
EDE6:   28F8          jr        z, label_EDE0
EDE8:   013500        ld        bc, 0035
EDEB:   21CAAB        ld        hl, ABCA
EDEE:   11CBAB        ld        de, ABCB
EDF1:   3620          ld        (hl), 20
EDF3:   EDB0          ldir
EDF5:   119A00        ld        de, 009A
EDF8:   0602          ld        b, 02
EDFA:   21C6AB        ld        hl, ABC6
EDFD:   CD00EC        call      label_EC00
EE00:   0601          ld        b, 01
EE02:   DD219A00      ld        ix, 009A
EE06:   CD60EC        call      label_EC60
EE09:   C342ED        jp        label_ED42
                    label_EE0C:
EE0C:   05            dec       b
EE0D:   FA45ED        jp        m, label_ED45
EE10:   CBBE          res       7, (hl)
EE12:   2B            dec       hl
EE13:   180F          jr        label_EE24
                    label_EE15:
EE15:   CBBE          res       7, (hl)
EE17:   04            inc       b
EE18:   3AC4AB        ld        a, (loc_ABC4)
EE1B:   FE50          cp        50
EE1D:   20C1          jr        nz, label_EDE0
EE1F:   CB50          bit       2, b
EE21:   20BD          jr        nz, label_EDE0
EE23:   05            dec       b
                    label_EE24:
EE24:   C347ED        jp        label_ED47
                    label_EE27:
EE27:   3AC4AB        ld        a, (loc_ABC4)
EE2A:   FE54          cp        54
EE2C:   C23FED        jp        nz, label_ED3F
EE2F:   CB40          bit       0, b
EE31:   2801          jr        z, label_EE34
EE33:   2B            dec       hl
                    label_EE34:
EE34:   CB38          srl       b
EE36:   3EFF          ld        a, FF
EE38:   32FFAB        ld        (loc_ABFF), a
                    label_EE3B:
EE3B:   7E            ld        a, (hl)
EE3C:   FEFF          cp        FF
EE3E:   2805          jr        z, label_EE45
EE40:   3620          ld        (hl), 20
EE42:   23            inc       hl
EE43:   18F6          jr        label_EE3B
                    label_EE45:
EE45:   3620          ld        (hl), 20
EE47:   ED5B9A00      ld        de, (loc_009A)
EE4B:   21CBAB        ld        hl, ABCB
EE4E:   CD00EC        call      label_EC00
                    label_EE51:
EE51:   ED539A00      ld        (loc_009A), de
EE55:   C31BEF        jp        label_EF1B
                    label_EE58:
EE58:   CBBE          res       7, (hl)
EE5A:   21C6AB        ld        hl, ABC6
                    label_EE5D:
EE5D:   32C4AB        ld        (loc_ABC4), a
EE60:   FE4D          cp        4D
EE62:   C245ED        jp        nz, label_ED45
EE65:   ED5B9A00      ld        de, (loc_009A)
EE69:   0618          ld        b, 18
EE6B:   CD22EC        call      label_EC22
EE6E:   18E1          jr        label_EE51
                    label_EE70:
EE70:   0601          ld        b, 01
EE72:   DD219A00      ld        ix, 009A
EE76:   CD60EC        call      label_EC60
EE79:   0602          ld        b, 02
EE7B:   21C6AB        ld        hl, ABC6
EE7E:   119A00        ld        de, 009A
EE81:   CD22EC        call      label_EC22
EE84:   0601          ld        b, 01
EE86:   DD219A00      ld        ix, 009A
EE8A:   CD60EC        call      label_EC60
EE8D:   CBBE          res       7, (hl)
EE8F:   21CBAB        ld        hl, ABCB
EE92:   3A9800        ld        a, (loc_0098)
EE95:   FE47          cp        47
EE97:   20C4          jr        nz, label_EE5D
EE99:   32C4AB        ld        (loc_ABC4), a
EE9C:   CD40EC        call      label_EC40
EE9F:   CD6FEC        call      label_EC6F
EEA2:   C39900        jp        label_0099
                    label_EEA5:
EEA5:   3AC4AB        ld        a, (loc_ABC4)
EEA8:   FED0          cp        D0
EEAA:   3A9800        ld        a, (loc_0098)
EEAD:   28C1          jr        z, label_EE70
EEAF:   3A84AB        ld        a, (loc_AB84)
EEB2:   FE4D          cp        4D
EEB4:   3A9800        ld        a, (loc_0098)
EEB7:   20B7          jr        nz, label_EE70
EEB9:   E5            push      hl
EEBA:   111800        ld        de, 0018
EEBD:   2A9A00        ld        hl, (loc_009A)
EEC0:   ED52          sbc       hl, de
EEC2:   229A00        ld        (loc_009A), hl
EEC5:   C5            push      bc
EEC6:   218BAB        ld        hl, AB8B
EEC9:   11CBAB        ld        de, ABCB
EECC:   013600        ld        bc, 0036
EECF:   EDB0          ldir
EED1:   C1            pop       bc
EED2:   E1            pop       hl
EED3:   C370EE        jp        label_EE70
                    label_EED6:
EED6:   2A8000        ld        hl, (loc_0080)
EED9:   2B            dec       hl
EEDA:   7E            ld        a, (hl)
EEDB:   FE76          cp        76
EEDD:   2022          jr        nz, label_EF01
EEDF:   228000        ld        (loc_0080), hl
EEE2:   E5            push      hl
EEE3:   D1            pop       de
EEE4:   23            inc       hl
EEE5:   7E            ld        a, (hl)
EEE6:   32EAAB        ld        (loc_ABEA), a
EEE9:   E60F          and       0F
EEEB:   219C00        ld        hl, 009C
EEEE:   CB27          sla       a
EEF0:   85            add       a, l
EEF1:   6F            ld        l, a
EEF2:   0602          ld        b, 02
EEF4:   CD80EC        call      label_EC80
EEF7:   3E3D          ld        a, 3D
EEF9:   32E9AB        ld        (loc_ABE9), a
EEFC:   3E48          ld        a, 48
EEFE:   32E8AB        ld        (loc_ABE8), a
                    label_EF01:
EF01:   3E49          ld        a, 49
EF03:   32C4AB        ld        (loc_ABC4), a
EF06:   CD56EC        call      label_EC56
EF09:   118000        ld        de, 0080
EF0C:   CD21EF        call      label_EF21
EF0F:   CD40EC        call      label_EC40
EF12:   118C00        ld        de, 008C
EF15:   CD21EF        call      label_EF21
EF18:   CD56EC        call      label_EC56
                    label_EF1B:
EF1B:   CD40EC        call      label_EC40
                    label_EF1E:
EF1E:   C33FED        jp        label_ED3F
                    label_EF21:
EF21:   21C6AB        ld        hl, ABC6
                    label_EF24:
EF24:   7D            ld        a, l
EF25:   FEE4          cp        E4
EF27:   C8            ret       z
EF28:   0602          ld        b, 02
EF2A:   CD22EC        call      label_EC22
EF2D:   23            inc       hl
EF2E:   18F4          jr        label_EF24
                    label_EF30:
EF30:   08            ex        af, af'
EF31:   2A9000        ld        hl, (loc_0090)
EF34:   E5            push      hl
EF35:   F1            pop       af
EF36:   08            ex        af, af'
EF37:   D9            exx
EF38:   ED4B9200      ld        bc, (loc_0092)
EF3C:   ED5B9400      ld        de, (loc_0094)
EF40:   2A9600        ld        hl, (loc_0096)
EF43:   D9            exx
EF44:   CD6FEC        call      label_EC6F
EF47:   DD2A8C00      ld        ix, (008C)
EF4B:   FD2A8E00      ld        iy, (008E)
EF4F:   2A8400        ld        hl, (loc_0084)
EF52:   E5            push      hl
EF53:   F1            pop       af
EF54:   ED4B8600      ld        bc, (loc_0086)
EF58:   ED5B8800      ld        de, (loc_0088)
EF5C:   2A8000        ld        hl, (loc_0080)
EF5F:   229A00        ld        (loc_009A), hl
EF62:   ED7B8200      ld        sp, (loc_0082)
EF66:   2A8A00        ld        hl, (loc_008A)
EF69:   C39900        jp        label_0099
                    label_EF6C:
EF6C:   3E90          ld        a, 90
EF6E:   D3DF          out       (DF), a
EF70:   3EF0          ld        a, F0
EF72:   D3DF          out       (DF), a
EF74:   C9            ret
                    label_EF75:
EF75:   DD217E00      ld        ix, 007E
EF79:   21DBEF        ld        hl, EFDB
                    label_EF7C:
EF7C:   3E56          ld        a, 56
EF7E:   DD23          inc       ix
EF80:   DD23          inc       ix
EF82:   BE            cp        (hl)
EF83:   2899          jr        z, label_EF1E
EF85:   E5            push      hl
EF86:   CD4BEC        call      label_EC4B
EF89:   E1            pop       hl
EF8A:   32C4AB        ld        (loc_ABC4), a
EF8D:   11C6AB        ld        de, ABC6
EF90:   010300        ld        bc, 0003
EF93:   EDB0          ldir
EF95:   3E3D          ld        a, 3D
EF97:   12            ld        (de), a
EF98:   0604          ld        b, 04
EF9A:   13            inc       de
                    label_EF9B:
EF9B:   13            inc       de
EF9C:   3EA0          ld        a, A0
EF9E:   12            ld        (de), a
                    label_EF9F:
EF9F:   CD98EC        call      label_EC98
EFA2:   FE0D          cp        0D
EFA4:   CA3FED        jp        z, label_ED3F
EFA7:   FE20          cp        20
EFA9:   28D1          jr        z, label_EF7C
EFAB:   E5            push      hl
EFAC:   C5            push      bc
EFAD:   21A5EC        ld        hl, ECA5
EFB0:   011000        ld        bc, 0010
EFB3:   EDB1          cpir
EFB5:   C1            pop       bc
EFB6:   E1            pop       hl
EFB7:   20E6          jr        nz, label_EF9F
EFB9:   12            ld        (de), a
EFBA:   10DF          djnz      label_EF9B
EFBC:   E5            push      hl
EFBD:   21CBAB        ld        hl, ABCB
EFC0:   DDE5          push      ix
EFC2:   D1            pop       de
EFC3:   0602          ld        b, 02
EFC5:   CD00EC        call      label_EC00
EFC8:   DD7E00        ld        a, (ix + 00)
EFCB:   DD4601        ld        b, (ix + 01)
EFCE:   DD7701        ld        (ix + 01), a
EFD1:   78            ld        a, b
EFD2:   DD7700        ld        (ix + 00), a
EFD5:   CD40EC        call      label_EC40
EFD8:   E1            pop       hl
EFD9:   18A1          jr        label_EF7C
EFDB:   50            ld        d, b
EFDC:   43            ld        b, e
EFDD:   2053          jr        nz, label_F032
EFDF:   50            ld        d, b
EFE0:   2041          jr        nz, label_F023
EFE2:   46            ld        b, (hl)
EFE3:   2042          jr        nz, label_F027
EFE5:   43            ld        b, e
EFE6:   2044          jr        nz, label_F02C
EFE8:   45            ld        b, l
EFE9:   2048          jr        nz, label_F033
EFEB:   4C            ld        c, h
EFEC:   2049          jr        nz, label_F037
EFEE:   58            ld        e, b
EFEF:   2049          jr        nz, label_F03A
EFF1:   59            ld        e, c
EFF2:   2041          jr        nz, label_F035
EFF4:   46            ld        b, (hl)
EFF5:   27            daa
EFF6:   42            ld        b, d
EFF7:   43            ld        b, e
EFF8:   27            daa
EFF9:   44            ld        b, h
EFFA:   45            ld        b, l
EFFB:   27            daa
EFFC:   48            ld        c, b
EFFD:   4C            ld        c, h
EFFE:   27            daa
EFFF:   56            ld        d, (hl)
F000:   3031          jr        nc, label_F033
F002:   323334        ld        (loc_3433), a
F005:   35            dec       (hl)
F006:   3637          ld        (hl), 37
F008:   3839          jr        c, label_F043
F00A:   2D            dec       l
F00B:   FF            rst       38h
F00C:   FF            rst       38h
F00D:   FF            rst       38h
                    label_F00E:
F00E:   2A2F01        ld        hl, (loc_012F)
F011:   3EFF          ld        a, FF
F013:   BE            cp        (hl)
F014:   C8            ret       z
F015:   112501        ld        de, 0125
F018:   010600        ld        bc, 0006
F01B:   EDB0          ldir
F01D:   3A2501        ld        a, (loc_0125)
F020:   CB5F          bit       3, a
F022:   CD62F1        call      label_F162
F025:   CB67          bit       4, a
                    label_F027:
F027:   CD62F1        call      label_F162
F02A:   222F01        ld        (loc_012F), hl
F02D:   3E01          ld        a, 01
F02F:   B7            or        a
F030:   C9            ret
                    label_F031:
F031:   E1            pop       hl
                    label_F032:
F032:   E5            push      hl
                    label_F033:
F033:   222F01        ld        (loc_012F), hl
                    label_F036:
F036:   CD0EF0        call      label_F00E
F039:   2805          jr        z, label_F040
F03B:   CD4DF1        call      label_F14D
F03E:   18F6          jr        label_F036
                    label_F040:
F040:   E1            pop       hl
                    label_F041:
F041:   E5            push      hl
F042:   222F01        ld        (loc_012F), hl
                    label_F045:
F045:   CD0EF0        call      label_F00E
F048:   2002          jr        nz, label_F04C
F04A:   E1            pop       hl
F04B:   C9            ret
                    label_F04C:
F04C:   3A2501        ld        a, (loc_0125)
F04F:   CB47          bit       0, a
F051:   CA6CF1        jp        z, label_F16C
F054:   CB5F          bit       3, a
F056:   C285F1        jp        nz, label_F185
                    label_F059:
F059:   CD4DF1        call      label_F14D
F05C:   AF            xor       a
F05D:   32CF00        ld        (loc_00CF), a
F060:   2A2701        ld        hl, (loc_0127)
F063:   57            ld        d, a
F064:   3A2601        ld        a, (loc_0126)
F067:   5F            ld        e, a
                    label_F068:
F068:   36A0          ld        (hl), A0
F06A:   CD98EC        call      label_EC98
F06D:   CBBE          res       7, (hl)
F06F:   FE1A          cp        1A
F071:   28E6          jr        z, label_F059
F073:   FE01          cp        01
F075:   28BA          jr        z, label_F031
F077:   FE7F          cp        7F
F079:   2819          jr        z, label_F094
F07B:   FE0D          cp        0D
F07D:   CABFF0        jp        z, label_F0BF
F080:   47            ld        b, a
F081:   7B            ld        a, e
F082:   FE00          cp        00
F084:   28E2          jr        z, label_F068
F086:   3A2501        ld        a, (loc_0125)
F089:   CB4F          bit       1, a
F08B:   78            ld        a, b
F08C:   2012          jr        nz, label_F0A0
                    label_F08E:
F08E:   77            ld        (hl), a
F08F:   23            inc       hl
F090:   14            inc       d
F091:   1D            dec       e
F092:   18D4          jr        label_F068
                    label_F094:
F094:   AF            xor       a
F095:   32CF00        ld        (loc_00CF), a
F098:   82            add       a, d
F099:   28CD          jr        z, label_F068
F09B:   2B            dec       hl
F09C:   15            dec       d
F09D:   1C            inc       e
F09E:   18C8          jr        label_F068
                    label_F0A0:
F0A0:   47            ld        b, a
F0A1:   3ACF00        ld        a, (loc_00CF)
F0A4:   FE2D          cp        2D
F0A6:   78            ld        a, b
F0A7:   28BF          jr        z, label_F068
F0A9:   E5            push      hl
F0AA:   2100F0        ld        hl, F000
F0AD:   010A00        ld        bc, 000A
F0B0:   14            inc       d
F0B1:   15            dec       d
F0B2:   2801          jr        z, label_F0B5
F0B4:   03            inc       bc
                    label_F0B5:
F0B5:   EDB1          cpir
F0B7:   E1            pop       hl
F0B8:   20AE          jr        nz, label_F068
F0BA:   32CF00        ld        (loc_00CF), a
F0BD:   18CF          jr        label_F08E
                    label_F0BF:
F0BF:   3A2501        ld        a, (loc_0125)
F0C2:   CB4F          bit       1, a
F0C4:   CDCDF1        call      label_F1CD
F0C7:   2A2701        ld        hl, (loc_0127)
F0CA:   2008          jr        nz, label_F0D4
F0CC:   ED5B2901      ld        de, (loc_0129)
F0D0:   EDB0          ldir
F0D2:   185F          jr        label_F133
                    label_F0D4:
F0D4:   09            add       hl, bc
F0D5:   41            ld        b, c
                    label_F0D6:
F0D6:   2B            dec       hl
F0D7:   7E            ld        a, (hl)
F0D8:   FE20          cp        20
F0DA:   2002          jr        nz, label_F0DE
F0DC:   10F8          djnz      label_F0D6
                    label_F0DE:
F0DE:   11D000        ld        de, 00D0
F0E1:   CDEBF4        call      label_F4EB
F0E4:   EB            ex        de, hl
F0E5:   11DC00        ld        de, 00DC
F0E8:   CD7AF5        call      label_F57A
F0EB:   2A2901        ld        hl, (loc_0129)
F0EE:   EB            ex        de, hl
F0EF:   3A2501        ld        a, (loc_0125)
F0F2:   CB57          bit       2, a
F0F4:   2005          jr        nz, label_F0FB
F0F6:   CDACE4        call      label_E4AC
F0F9:   1808          jr        label_F103
                    label_F0FB:
F0FB:   21D000        ld        hl, 00D0
F0FE:   010600        ld        bc, 0006
F101:   EDB0          ldir
                    label_F103:
F103:   3A2501        ld        a, (loc_0125)
F106:   CB6F          bit       5, a
F108:   2829          jr        z, label_F133
F10A:   CD4DF1        call      label_F14D
F10D:   21EB00        ld        hl, 00EB
F110:   CDC9F1        call      label_F1C9
F113:   0B            dec       bc
F114:   B7            or        a
F115:   ED42          sbc       hl, bc
F117:   41            ld        b, c
F118:   CB77          bit       6, a
F11A:   280C          jr        z, label_F128
                    label_F11C:
F11C:   0D            dec       c
F11D:   0D            dec       c
F11E:   0D            dec       c
F11F:   2807          jr        z, label_F128
F121:   FA28F1        jp        m, label_F128
F124:   05            dec       b
F125:   23            inc       hl
F126:   18F4          jr        label_F11C
                    label_F128:
F128:   3ADC00        ld        a, (loc_00DC)
F12B:   E6E0          and       E0
F12D:   05            dec       b
F12E:   B0            or        b
F12F:   77            ld        (hl), a
F130:   CDBEF1        call      label_F1BE
                    label_F133:
F133:   3A2501        ld        a, (loc_0125)
F136:   CB67          bit       4, a
F138:   2810          jr        z, label_F14A
F13A:   2142F1        ld        hl, F142
F13D:   E5            push      hl
F13E:   2A2D01        ld        hl, (loc_012D)
F141:   E9            jp        (hl)
F142:   F5            push      af
F143:   DC4DF1        call      c, label_F14D
F146:   F1            pop       af
F147:   DA59F0        jp        c, label_F059
                    label_F14A:
F14A:   C345F0        jp        label_F045
                    label_F14D:
F14D:   F5            push      af
F14E:   2A2701        ld        hl, (loc_0127)
F151:   3620          ld        (hl), 20
F153:   54            ld        d, h
F154:   5D            ld        e, l
F155:   CDCDF1        call      label_F1CD
F158:   0B            dec       bc
F159:   AF            xor       a
F15A:   B9            cp        c
F15B:   2803          jr        z, label_F160
F15D:   13            inc       de
F15E:   EDB0          ldir
                    label_F160:
F160:   F1            pop       af
F161:   C9            ret
                    label_F162:
F162:   2805          jr        z, label_F169
F164:   EDA0          ldi
F166:   EDA0          ldi
F168:   C9            ret
                    label_F169:
F169:   13            inc       de
F16A:   13            inc       de
F16B:   C9            ret
                    label_F16C:
F16C:   CDB5F1        call      label_F1B5
F16F:   CB4F          bit       1, a
F171:   28D7          jr        z, label_F14A
F173:   CD98EC        call      label_EC98
F176:   FE0D          cp        0D
F178:   2805          jr        z, label_F17F
F17A:   CD4DF1        call      label_F14D
F17D:   18CB          jr        label_F14A
                    label_F17F:
F17F:   2A2B01        ld        hl, (loc_012B)
F182:   D1            pop       de
F183:   D1            pop       de
F184:   E9            jp        (hl)
                    label_F185:
F185:   215050        ld        hl, 5050
F188:   22B200        ld        (loc_00B2), hl
F18B:   2A2B01        ld        hl, (loc_012B)
F18E:   CDB8F1        call      label_F1B8
F191:   CDF5E2        call      label_E2F5
F194:   219800        ld        hl, 0098
F197:   CB7E          bit       7, (hl)
F199:   2812          jr        z, label_F1AD
F19B:   CBBE          res       7, (hl)
F19D:   7E            ld        a, (hl)
F19E:   FE01          cp        01
F1A0:   CA31F0        jp        z, label_F031
F1A3:   FE0D          cp        0D
F1A5:   CABFF0        jp        z, label_F0BF
F1A8:   FE1A          cp        1A
F1AA:   CA59F0        jp        z, label_F059
                    label_F1AD:
F1AD:   CD4DF1        call      label_F14D
F1B0:   CDF5E2        call      label_E2F5
F1B3:   18D0          jr        label_F185
                    label_F1B5:
F1B5:   2A2901        ld        hl, (loc_0129)
                    label_F1B8:
F1B8:   CDC9F1        call      label_F1C9
F1BB:   EDB0          ldir
F1BD:   C9            ret
                    label_F1BE:
F1BE:   3A2501        ld        a, (loc_0125)
F1C1:   CB77          bit       6, a
F1C3:   CAF2E5        jp        z, label_E5F2
F1C6:   C304EB        jp        label_EB04
                    label_F1C9:
F1C9:   ED5B2701      ld        de, (loc_0127)
                    label_F1CD:
F1CD:   ED4B2601      ld        bc, (loc_0126)
F1D1:   0600          ld        b, 00
F1D3:   C9            ret
F1D4:   FF            rst       38h
F1D5:   FF            rst       38h
F1D6:   FF            rst       38h
F1D7:   FF            rst       38h
F1D8:   FF            rst       38h
                    label_F1D9:
F1D9:   CD98EC        call      label_EC98
F1DC:   C303E0        jp        label_E003
                    label_F1DF:
F1DF:   EDB0          ldir
F1E1:   21F9F2        ld        hl, F2F9
F1E4:   CD41F0        call      label_F041
F1E7:   3A2401        ld        a, (loc_0124)
F1EA:   CD3DF2        call      label_F23D
F1ED:   21D200        ld        hl, 00D2
F1F0:   3644          ld        (hl), 44
F1F2:   21D800        ld        hl, 00D8
F1F5:   36C2          ld        (hl), C2
F1F7:   3A2101        ld        a, (loc_0121)
F1FA:   3C            inc       a
F1FB:   21DD00        ld        hl, 00DD
F1FE:   3600          ld        (hl), 00
F200:   2B            dec       hl
F201:   77            ld        (hl), a
F202:   11D800        ld        de, 00D8
F205:   D5            push      de
F206:   CDA3E6        call      label_E6A3
F209:   E1            pop       hl
F20A:   11D200        ld        de, 00D2
F20D:   CDACE4        call      label_E4AC
F210:   11A0AB        ld        de, ABA0
F213:   010003        ld        bc, 0300
F216:   21D500        ld        hl, 00D5
F219:   CDFDE5        call      label_E5FD
F21C:   11D800        ld        de, 00D8
F21F:   213101        ld        hl, 0131
F222:   D5            push      de
F223:   CDA3E6        call      label_E6A3
F226:   E1            pop       hl
F227:   11D200        ld        de, 00D2
F22A:   D5            push      de
F22B:   CDACE4        call      label_E4AC
F22E:   E1            pop       hl
F22F:   11B5AB        ld        de, ABB5
F232:   CD04EB        call      label_EB04
                    label_F235:
F235:   2154F3        ld        hl, F354
                    label_F238:
F238:   CD41F0        call      label_F041
F23B:   18F8          jr        label_F235
                    label_F23D:
F23D:   118FAB        ld        de, AB8F
F240:   010300        ld        bc, 0003
F243:   2164F4        ld        hl, F464
F246:   CB47          bit       0, a
F248:   2003          jr        nz, label_F24D
F24A:   2167F4        ld        hl, F467
                    label_F24D:
F24D:   EDB0          ldir
F24F:   C9            ret
F250:   3A2401        ld        a, (loc_0124)
F253:   EE01          xor       01
F255:   322401        ld        (loc_0124), a
F258:   CD3DF2        call      label_F23D
F25B:   2174F3        ld        hl, F374
F25E:   18D8          jr        label_F238
F260:   3A2101        ld        a, (loc_0121)
F263:   FE2F          cp        2F
F265:   280B          jr        z, label_F272
F267:   FE41          cp        41
F269:   2814          jr        z, label_F27F
F26B:   3E2F          ld        a, 2F
F26D:   213438        ld        hl, 3834
F270:   1805          jr        label_F277
                    label_F272:
F272:   3E41          ld        a, 41
F274:   213636        ld        hl, 3636
                    label_F277:
F277:   22A1AB        ld        (loc_ABA1), hl
F27A:   217CF3        ld        hl, F37C
F27D:   1814          jr        label_F293
                    label_F27F:
F27F:   3E47          ld        a, 47
F281:   213732        ld        hl, 3237
F284:   18F1          jr        label_F277
F286:   2179F4        ld        hl, F479
F289:   CD41F0        call      label_F041
F28C:   2184F3        ld        hl, F384
F28F:   3AF400        ld        a, (loc_00F4)
F292:   3D            dec       a
                    label_F293:
F293:   322101        ld        (loc_0121), a
F296:   D605          sub       05
F298:   322201        ld        (loc_0122), a
F29B:   189B          jr        label_F238
F29D:   3AF500        ld        a, (loc_00F5)
F2A0:   FE00          cp        00
F2A2:   37            scf
F2A3:   C0            ret       nz
F2A4:   3AF400        ld        a, (loc_00F4)
F2A7:   FE00          cp        00
F2A9:   37            scf
F2AA:   C8            ret       z
F2AB:   3F            ccf
F2AC:   C9            ret
F2AD:   CD8AEC        call      label_EC8A
F2B0:   2AC500        ld        hl, (loc_00C5)
F2B3:   AF            xor       a
F2B4:   BC            cp        h
F2B5:   2006          jr        nz, label_F2BD
F2B7:   BD            cp        l
F2B8:   2003          jr        nz, label_F2BD
F2BA:   C303E0        jp        label_E003
                    label_F2BD:
F2BD:   E9            jp        (hl)
                    label_F2BE:
F2BE:   210000        ld        hl, 0000
F2C1:   1155AA        ld        de, AA55
                    label_F2C4:
F2C4:   7A            ld        a, d
F2C5:   77            ld        (hl), a
F2C6:   BE            cp        (hl)
F2C7:   200A          jr        nz, label_F2D3
F2C9:   7B            ld        a, e
F2CA:   77            ld        (hl), a
F2CB:   BE            cp        (hl)
F2CC:   2005          jr        nz, label_F2D3
F2CE:   36FF          ld        (hl), FF
F2D0:   23            inc       hl
F2D1:   18F1          jr        label_F2C4
                    label_F2D3:
F2D3:   223101        ld        (loc_0131), hl
F2D6:   3E01          ld        a, 01
F2D8:   322401        ld        (loc_0124), a
F2DB:   3E2F          ld        a, 2F
F2DD:   322101        ld        (loc_0121), a
F2E0:   D605          sub       05
F2E2:   322201        ld        (loc_0122), a
F2E5:   213800        ld        hl, 0038
F2E8:   36C3          ld        (hl), C3
F2EA:   223900        ld        (loc_0039), hl
F2ED:   210000        ld        hl, 0000
F2F0:   22C500        ld        (loc_00C5), hl
F2F3:   C303E0        jp        label_E003
F2F6:   3D            dec       a
F2F7:   3D            dec       a
F2F8:   3E00          ld        a, 00
F2FA:   1A            ld        a, (de)
F2FB:   12            ld        (de), a
F2FC:   A8            xor       b
F2FD:   AD            xor       l
F2FE:   F3            di
F2FF:   00            nop
F300:   118AA8        ld        de, A88A
F303:   C7            rst       00h
F304:   F3            di
F305:   00            nop
F306:   10CA          djnz      label_F2D2
F308:   A8            xor       b
F309:   FF            rst       38h
F30A:   F3            di
F30B:   00            nop
F30C:   13            inc       de
F30D:   0A            ld        a, (bc)
F30E:   A9            xor       c
F30F:   D8            ret       c
F310:   F3            di
F311:   00            nop
F312:   14            inc       d
F313:   4A            ld        c, d
F314:   A9            xor       c
F315:   EB            ex        de, hl
F316:   F3            di
                    label_F317:
F317:   00            nop
F318:   0E8A          ld        c, 8A
F31A:   A9            xor       c
F31B:   22F400        ld        (loc_00F4), hl
F31E:   11CAA9        ld        de, A9CA
F321:   30F4          jr        nc, label_F317
F323:   00            nop
F324:   0F            rrca
F325:   0A            ld        a, (bc)
F326:   AA            xor       d
F327:   6A            ld        l, d
F328:   F4000C        call      p, label_0C00
F32B:   4A            ld        c, d
F32C:   AA            xor       d
F32D:   41            ld        b, c
F32E:   F40013        call      p, label_1300
F331:   8A            adc       a, d
F332:   AA            xor       d
F333:   0F            rrca
F334:   F4000C        call      p, label_0C00
F337:   CAAA82        jp        z, label_82AA
F33A:   F40008        call      p, label_0800
F33D:   86            add       a, (hl)
F33E:   AB            xor       e
F33F:   4D            ld        c, l
F340:   F40007        call      p, label_0700
F343:   99            sbc       a, c
F344:   AB            xor       e
F345:   55            ld        d, l
F346:   F40008        call      p, label_0800
F349:   AC            xor       h
F34A:   AB            xor       e
F34B:   5C            ld        e, h
F34C:   F4FFFF        call      p, label_FFFF
F34F:   FF            rst       38h
F350:   FF            rst       38h
F351:   FF            rst       38h
F352:   FF            rst       38h
F353:   FF            rst       38h
F354:   0A            ld        a, (bc)
F355:   03            inc       bc
F356:   86            add       a, (hl)
F357:   A8            xor       b
F358:   F6F2          or        F2
F35A:   32E00A        ld        (loc_0AE0), a
F35D:   03            inc       bc
F35E:   C6A8          add       a, A8
F360:   F6F2          or        F2
F362:   23            inc       hl
F363:   E0            ret       po
F364:   0A            ld        a, (bc)
F365:   03            inc       bc
F366:   06A9          ld        b, A9
F368:   F6F2          or        F2
F36A:   9C            sbc       a, h
F36B:   E20A03        jp        po, label_030A
F36E:   46            ld        b, (hl)
F36F:   A9            xor       c
F370:   F6F2          or        F2
F372:   AD            xor       l
F373:   F20A03        jp        p, label_030A
F376:   86            add       a, (hl)
F377:   A9            xor       c
F378:   F6F2          or        F2
F37A:   50            ld        d, b
F37B:   F20A03        jp        p, label_030A
F37E:   C6A9          add       a, A9
F380:   F6F2          or        F2
F382:   60            ld        h, b
F383:   F20A03        jp        p, label_030A
F386:   06AA          ld        b, AA
F388:   F6F2          or        F2
F38A:   86            add       a, (hl)
F38B:   F20A03        jp        p, label_030A
F38E:   46            ld        b, (hl)
F38F:   AA            xor       d
F390:   F6F2          or        F2
F392:   00            nop
F393:   E0            ret       po
F394:   0A            ld        a, (bc)
F395:   03            inc       bc
F396:   86            add       a, (hl)
F397:   AA            xor       d
F398:   F6F2          or        F2
F39A:   00            nop
F39B:   D0            ret       nc
F39C:   0A            ld        a, (bc)
F39D:   03            inc       bc
F39E:   C6AA          add       a, AA
F3A0:   F6F2          or        F2
F3A2:   74            ld        (hl), h
F3A3:   D8            ret       c
F3A4:   FF            rst       38h
F3A5:   FF            rst       38h
F3A6:   FF            rst       38h
F3A7:   FF            rst       38h
F3A8:   FF            rst       38h
F3A9:   FF            rst       38h
F3AA:   FF            rst       38h
F3AB:   FF            rst       38h
F3AC:   FF            rst       38h
F3AD:   53            ld        d, e
F3AE:   2055          jr        nz, label_F405
F3B0:   2050          jr        nz, label_F402
F3B2:   2045          jr        nz, label_F3F9
F3B4:   2052          jr        nz, label_F408
F3B6:   2020          jr        nz, label_F3D8
F3B8:   2020          jr        nz, label_F3DA
F3BA:   43            ld        b, e
F3BB:   2048          jr        nz, label_F405
F3BD:   2049          jr        nz, label_F408
F3BF:   204C          jr        nz, label_F40D
F3C1:   2044          jr        nz, label_F407
F3C3:   202F          jr        nz, label_F3F4
F3C5:   205A          jr        nz, label_F421
F3C7:   4C            ld        c, h
F3C8:   45            ld        b, l
F3C9:   54            ld        d, h
F3CA:   54            ld        d, h
F3CB:   55            ld        d, l
F3CC:   52            ld        d, d
F3CD:   41            ld        b, c
F3CE:   2050          jr        nz, label_F420
F3D0:   52            ld        d, d
F3D1:   4F            ld        c, a
F3D2:   47            ld        b, a
F3D3:   52            ld        d, d
F3D4:   41            ld        b, c
F3D5:   4D            ld        c, l
F3D6:   4D            ld        c, l
F3D7:   41            ld        b, c
                    label_F3D8:
F3D8:   53            ld        d, e
F3D9:   43            ld        b, e
                    label_F3DA:
F3DA:   52            ld        d, d
F3DB:   49            ld        c, c
F3DC:   54            ld        d, h
F3DD:   54            ld        d, h
F3DE:   55            ld        d, l
F3DF:   52            ld        d, d
F3E0:   41            ld        b, c
F3E1:   2050          jr        nz, label_F433
F3E3:   52            ld        d, d
F3E4:   4F            ld        c, a
F3E5:   47            ld        b, a
F3E6:   52            ld        d, d
F3E7:   41            ld        b, c
F3E8:   4D            ld        c, l
F3E9:   4D            ld        c, l
F3EA:   41            ld        b, c
F3EB:   45            ld        b, l
F3EC:   53            ld        d, e
F3ED:   45            ld        b, l
F3EE:   43            ld        b, e
F3EF:   55            ld        d, l
F3F0:   5A            ld        e, d
F3F1:   49            ld        c, c
F3F2:   4F            ld        c, a
F3F3:   4E            ld        c, (hl)
                    label_F3F4:
F3F4:   45            ld        b, l
F3F5:   2050          jr        nz, label_F447
F3F7:   52            ld        d, d
F3F8:   4F            ld        c, a
                    label_F3F9:
F3F9:   47            ld        b, a
F3FA:   52            ld        d, d
F3FB:   41            ld        b, c
F3FC:   4D            ld        c, l
F3FD:   4D            ld        c, l
F3FE:   41            ld        b, c
F3FF:   4D            ld        c, l
F400:   4F            ld        c, a
F401:   4E            ld        c, (hl)
                    label_F402:
F402:   49            ld        c, c
F403:   54            ld        d, h
F404:   4F            ld        c, a
                    label_F405:
F405:   52            ld        d, d
F406:   2D            dec       l
                    label_F407:
F407:   44            ld        b, h
                    label_F408:
F408:   45            ld        b, l
F409:   42            ld        b, d
F40A:   55            ld        d, l
F40B:   47            ld        b, a
F40C:   47            ld        b, a
                    label_F40D:
F40D:   45            ld        b, l
F40E:   52            ld        d, d
F40F:   54            ld        d, h
F410:   45            ld        b, l
F411:   58            ld        e, b
F412:   54            ld        d, h
F413:   2045          jr        nz, label_F45A
F415:   44            ld        b, h
F416:   49            ld        c, c
F417:   54            ld        d, h
F418:   4F            ld        c, a
F419:   52            ld        d, d
F41A:   2043          jr        nz, label_F45F
F41C:   4F            ld        c, a
F41D:   4E            ld        c, (hl)
F41E:   2049          jr        nz, label_F469
                    label_F420:
F420:   51            ld        d, c
                    label_F421:
F421:   46            ld        b, (hl)
F422:   50            ld        d, b
F423:   52            ld        d, d
F424:   49            ld        c, c
F425:   4E            ld        c, (hl)
F426:   54            ld        d, h
F427:   45            ld        b, l
F428:   52            ld        d, d
F429:   204F          jr        nz, label_F47A
F42B:   4E            ld        c, (hl)
F42C:   2F            cpl
F42D:   4F            ld        c, a
F42E:   46            ld        b, (hl)
F42F:   46            ld        b, (hl)
F430:   44            ld        b, h
F431:   49            ld        c, c
F432:   4D            ld        c, l
                    label_F433:
F433:   45            ld        b, l
F434:   4E            ld        c, (hl)
F435:   53            ld        d, e
F436:   49            ld        c, c
F437:   4F            ld        c, a
F438:   4E            ld        c, (hl)
F439:   45            ld        b, l
F43A:   204D          jr        nz, label_F489
F43C:   4F            ld        c, a
F43D:   44            ld        b, h
F43E:   55            ld        d, l
F43F:   4C            ld        c, h
F440:   4F            ld        c, a
F441:   53            ld        d, e
F442:   59            ld        e, c
F443:   53            ld        d, e
F444:   54            ld        d, h
F445:   45            ld        b, l
F446:   4D            ld        c, l
                    label_F447:
F447:   2052          jr        nz, label_F49B
F449:   45            ld        b, l
F44A:   53            ld        d, e
F44B:   45            ld        b, l
F44C:   54            ld        d, h
F44D:   50            ld        d, b
F44E:   52            ld        d, d
F44F:   49            ld        c, c
F450:   4E            ld        c, (hl)
F451:   54            ld        d, h
F452:   45            ld        b, l
F453:   52            ld        d, d
F454:   3A4D4F        ld        a, (loc_4F4D)
F457:   44            ld        b, h
F458:   55            ld        d, l
F459:   4C            ld        c, h
                    label_F45A:
F45A:   4F            ld        c, a
F45B:   3A4D45        ld        a, (loc_454D)
F45E:   4D            ld        c, l
                    label_F45F:
F45F:   4F            ld        c, a
F460:   52            ld        d, d
F461:   49            ld        c, c
F462:   41            ld        b, c
F463:   3A4F4E        ld        a, (loc_4E4F)
F466:   204F          jr        nz, label_F4B7
F468:   46            ld        b, (hl)
                    label_F469:
F469:   46            ld        b, (hl)
F46A:   4D            ld        c, l
F46B:   4F            ld        c, a
F46C:   44            ld        b, h
F46D:   55            ld        d, l
F46E:   4C            ld        c, h
F46F:   4F            ld        c, a
F470:   2053          jr        nz, label_F4C5
F472:   50            ld        d, b
F473:   45            ld        b, l
F474:   43            ld        b, e
F475:   49            ld        c, c
F476:   41            ld        b, c
F477:   4C            ld        c, h
F478:   45            ld        b, l
F479:   17            rla
                    label_F47A:
F47A:   03            inc       bc
F47B:   A1            and       c
F47C:   AB            xor       e
F47D:   F4009D        call      p, label_9D00
F480:   F2FF44        jp        p, label_44FF
F483:   55            ld        d, l
F484:   4D            ld        c, l
F485:   50            ld        d, b
F486:   2050          jr        nz, label_F4D8
F488:   52            ld        d, d
                    label_F489:
F489:   4F            ld        c, a
F48A:   47            ld        b, a
F48B:   52            ld        d, d
F48C:   41            ld        b, c
F48D:   4D            ld        c, l
F48E:   FF            rst       38h
F48F:   FF            rst       38h
F490:   FF            rst       38h
F491:   010000        ld        bc, 0000
F494:   00            nop
F495:   00            nop
F496:   00            nop
F497:   0A            ld        a, (bc)
F498:   00            nop
F499:   00            nop
F49A:   00            nop
                    label_F49B:
F49B:   00            nop
F49C:   00            nop
F49D:   64            ld        h, h
F49E:   00            nop
F49F:   00            nop
F4A0:   00            nop
F4A1:   00            nop
F4A2:   00            nop
F4A3:   E8            ret       pe
F4A4:   03            inc       bc
F4A5:   00            nop
F4A6:   00            nop
F4A7:   00            nop
F4A8:   00            nop
F4A9:   1027          djnz      label_F4D2
F4AB:   00            nop
F4AC:   00            nop
F4AD:   00            nop
F4AE:   00            nop
F4AF:   A0            and       b
F4B0:   86            add       a, (hl)
F4B1:   010000        ld        bc, 0000
F4B4:   00            nop
F4B5:   40            ld        b, b
F4B6:   42            ld        b, d
                    label_F4B7:
F4B7:   0F            rrca
F4B8:   00            nop
F4B9:   00            nop
F4BA:   00            nop
F4BB:   80            add       a, b
F4BC:   96            sub       (hl)
F4BD:   98            sbc       a, b
F4BE:   00            nop
F4BF:   00            nop
F4C0:   00            nop
F4C1:   00            nop
F4C2:   E1            pop       hl
F4C3:   F5            push      af
F4C4:   05            dec       b
                    label_F4C5:
F4C5:   00            nop
F4C6:   00            nop
F4C7:   00            nop
F4C8:   CA9A3B        jp        z, label_3B9A
F4CB:   00            nop
F4CC:   00            nop
F4CD:   00            nop
F4CE:   E40B54        call      po, label_540B
F4D1:   02            ld        (bc), a
                    label_F4D2:
F4D2:   00            nop
F4D3:   00            nop
F4D4:   E8            ret       pe
F4D5:   76            halt
F4D6:   48            ld        c, b
F4D7:   17            rla
                    label_F4D8:
F4D8:   00            nop
F4D9:   00            nop
F4DA:   10A5          djnz      label_F481
F4DC:   D4E800        call      nc, label_00E8
F4DF:   00            nop
F4E0:   A0            and       b
F4E1:   72            ld        (hl), d
F4E2:   4E            ld        c, (hl)
F4E3:   1809          jr        label_F4EE
F4E5:   00            nop
F4E6:   40            ld        b, b
F4E7:   7A            ld        a, d
F4E8:   10F3          djnz      label_F4DD
F4EA:   5A            ld        e, d
                    label_F4EB:
F4EB:   DDE5          push      ix
F4ED:   D5            push      de
                    label_F4EE:
F4EE:   E5            push      hl
F4EF:   7E            ld        a, (hl)
F4F0:   32EF00        ld        (loc_00EF), a
F4F3:   E5            push      hl
F4F4:   DDE1          pop       ix
F4F6:   DD23          inc       ix
F4F8:   3E10          ld        a, 10
F4FA:   32EE00        ld        (loc_00EE), a
F4FD:   62            ld        h, d
F4FE:   6B            ld        l, e
F4FF:   AF            xor       a
F500:   2B            dec       hl
F501:   0606          ld        b, 06
                    label_F503:
F503:   23            inc       hl
F504:   77            ld        (hl), a
F505:   10FC          djnz      label_F503
F507:   218BF4        ld        hl, F48B
                    label_F50A:
F50A:   3AEE00        ld        a, (loc_00EE)
F50D:   3D            dec       a
F50E:   200F          jr        nz, label_F51F
F510:   DDE1          pop       ix
                    label_F512:
F512:   3AEF00        ld        a, (loc_00EF)
F515:   FE2D          cp        2D
F517:   CC44F5        call      z, label_F544
F51A:   E1            pop       hl
F51B:   D1            pop       de
F51C:   DDE1          pop       ix
F51E:   C9            ret
                    label_F51F:
F51F:   32EE00        ld        (loc_00EE), a
F522:   010600        ld        bc, 0006
F525:   09            add       hl, bc
                    label_F526:
F526:   DD2B          dec       ix
F528:   DD7E00        ld        a, (ix + 00)
F52B:   FE2D          cp        2D
F52D:   28F7          jr        z, label_F526
F52F:   FE2E          cp        2E
F531:   28F3          jr        z, label_F526
F533:   FE20          cp        20
F535:   28DB          jr        z, label_F512
F537:   E60F          and       0F
F539:   28CF          jr        z, label_F50A
F53B:   4F            ld        c, a
                    label_F53C:
F53C:   CD5CF5        call      label_F55C
F53F:   0D            dec       c
F540:   20FA          jr        nz, label_F53C
F542:   18C6          jr        label_F50A
                    label_F544:
F544:   0606          ld        b, 06
F546:   D5            push      de
                    label_F547:
F547:   1A            ld        a, (de)
F548:   2F            cpl
F549:   12            ld        (de), a
F54A:   13            inc       de
F54B:   10FA          djnz      label_F547
F54D:   D1            pop       de
F54E:   D5            push      de
F54F:   1A            ld        a, (de)
F550:   3C            inc       a
F551:   12            ld        (de), a
F552:   0605          ld        b, 05
                    label_F554:
F554:   13            inc       de
F555:   1A            ld        a, (de)
F556:   CE00          adc       a, 00
F558:   10FA          djnz      label_F554
F55A:   D1            pop       de
F55B:   C9            ret
                    label_F55C:
F55C:   D5            push      de
F55D:   E5            push      hl
F55E:   0606          ld        b, 06
F560:   B7            or        a
                    label_F561:
F561:   1A            ld        a, (de)
F562:   8E            adc       a, (hl)
F563:   12            ld        (de), a
F564:   23            inc       hl
F565:   13            inc       de
F566:   10F9          djnz      label_F561
F568:   E1            pop       hl
F569:   D1            pop       de
F56A:   C9            ret
                    label_F56B:
F56B:   D5            push      de
F56C:   E5            push      hl
F56D:   0606          ld        b, 06
F56F:   B7            or        a
                    label_F570:
F570:   1A            ld        a, (de)
F571:   9E            sbc       a, (hl)
F572:   12            ld        (de), a
F573:   23            inc       hl
F574:   13            inc       de
F575:   10F9          djnz      label_F570
F577:   E1            pop       hl
F578:   D1            pop       de
F579:   C9            ret
                    label_F57A:
F57A:   DDE5          push      ix
F57C:   AF            xor       a
F57D:   32EE00        ld        (loc_00EE), a
F580:   D5            push      de
F581:   DDE1          pop       ix
F583:   E5            push      hl
F584:   D5            push      de
F585:   11D600        ld        de, 00D6
F588:   010600        ld        bc, 0006
F58B:   EDB0          ldir
F58D:   D1            pop       de
F58E:   D5            push      de
F58F:   21DB00        ld        hl, 00DB
F592:   CB7E          bit       7, (hl)
F594:   21D600        ld        hl, 00D6
F597:   EB            ex        de, hl
F598:   364E          ld        (hl), 4E
F59A:   2806          jr        z, label_F5A2
F59C:   CBEE          set       5, (hl)
F59E:   CD44F5        call      label_F544
F5A1:   AF            xor       a
                    label_F5A2:
F5A2:   060F          ld        b, 0F
                    label_F5A4:
F5A4:   23            inc       hl
F5A5:   77            ld        (hl), a
F5A6:   10FC          djnz      label_F5A4
F5A8:   21E5F4        ld        hl, F4E5
                    label_F5AB:
F5AB:   DD23          inc       ix
                    label_F5AD:
F5AD:   CD6BF5        call      label_F56B
F5B0:   3809          jr        c, label_F5BB
F5B2:   DD7E00        ld        a, (ix + 00)
F5B5:   3C            inc       a
F5B6:   DD7700        ld        (ix + 00), a
F5B9:   18F2          jr        label_F5AD
                    label_F5BB:
F5BB:   CD5CF5        call      label_F55C
F5BE:   010600        ld        bc, 0006
F5C1:   B7            or        a
F5C2:   ED42          sbc       hl, bc
F5C4:   3AEE00        ld        a, (loc_00EE)
F5C7:   3C            inc       a
F5C8:   32EE00        ld        (loc_00EE), a
F5CB:   FE0F          cp        0F
F5CD:   20DC          jr        nz, label_F5AB
F5CF:   060F          ld        b, 0F
F5D1:   DDE5          push      ix
F5D3:   E1            pop       hl
                    label_F5D4:
F5D4:   7E            ld        a, (hl)
F5D5:   F630          or        30
F5D7:   77            ld        (hl), a
F5D8:   2B            dec       hl
F5D9:   10F9          djnz      label_F5D4
F5DB:   D1            pop       de
F5DC:   E1            pop       hl
F5DD:   DDE1          pop       ix
F5DF:   C9            ret
                    label_F5E0:
F5E0:   22D400        ld        (loc_00D4), hl
F5E3:   ED53D200      ld        (loc_00D2), de
F5E7:   11DC00        ld        de, 00DC
F5EA:   010600        ld        bc, 0006
F5ED:   EDB0          ldir
F5EF:   2AD200        ld        hl, (loc_00D2)
F5F2:   11D600        ld        de, 00D6
F5F5:   010600        ld        bc, 0006
F5F8:   EDB0          ldir
F5FA:   AF            xor       a
F5FB:   32EF00        ld        (loc_00EF), a
F5FE:   21E200        ld        hl, 00E2
F601:   CDABF6        call      label_F6AB
F604:   3E30          ld        a, 30
F606:   32EE00        ld        (loc_00EE), a
F609:   21E100        ld        hl, 00E1
                    label_F60C:
F60C:   7E            ld        a, (hl)
F60D:   FE00          cp        00
F60F:   2029          jr        nz, label_F63A
F611:   2B            dec       hl
F612:   3AEE00        ld        a, (loc_00EE)
F615:   D608          sub       08
F617:   32EE00        ld        (loc_00EE), a
F61A:   20F0          jr        nz, label_F60C
F61C:   21D600        ld        hl, 00D6
F61F:   CDABF6        call      label_F6AB
F622:   ED5BD200      ld        de, (loc_00D2)
F626:   21D600        ld        hl, 00D6
F629:   010600        ld        bc, 0006
F62C:   EDB0          ldir
F62E:   C9            ret
                    label_F62F:
F62F:   CB7F          bit       7, a
F631:   2816          jr        z, label_F649
                    label_F633:
F633:   3E2D          ld        a, 2D
F635:   32EF00        ld        (loc_00EF), a
F638:   180F          jr        label_F649
                    label_F63A:
F63A:   21DB00        ld        hl, 00DB
F63D:   11E100        ld        de, 00E1
F640:   1A            ld        a, (de)
F641:   CB7E          bit       7, (hl)
F643:   28EA          jr        z, label_F62F
F645:   CB7F          bit       7, a
F647:   28EA          jr        z, label_F633
                    label_F649:
F649:   21DB00        ld        hl, 00DB
F64C:   11D600        ld        de, 00D6
F64F:   CB7E          bit       7, (hl)
F651:   C444F5        call      nz, label_F544
F654:   11DC00        ld        de, 00DC
F657:   21E100        ld        hl, 00E1
F65A:   CB7E          bit       7, (hl)
F65C:   C444F5        call      nz, label_F544
                    label_F65F:
F65F:   0606          ld        b, 06
F661:   21E100        ld        hl, 00E1
                    label_F664:
F664:   CB1E          rr        (hl)
F666:   2B            dec       hl
F667:   10FB          djnz      label_F664
F669:   3009          jr        nc, label_F674
F66B:   21D600        ld        hl, 00D6
F66E:   11E200        ld        de, 00E2
F671:   CD5CF5        call      label_F55C
                    label_F674:
F674:   21D600        ld        hl, 00D6
F677:   0606          ld        b, 06
F679:   B7            or        a
                    label_F67A:
F67A:   CB16          rl        (hl)
F67C:   23            inc       hl
F67D:   10FB          djnz      label_F67A
F67F:   3AEE00        ld        a, (loc_00EE)
F682:   3D            dec       a
F683:   32EE00        ld        (loc_00EE), a
F686:   20D7          jr        nz, label_F65F
F688:   3AEF00        ld        a, (loc_00EF)
F68B:   FE2D          cp        2D
F68D:   21E200        ld        hl, 00E2
F690:   CC44F5        call      z, label_F544
F693:   21E700        ld        hl, 00E7
F696:   CD0BF8        call      label_F80B
F699:   21E200        ld        hl, 00E2
F69C:   ED5BD200      ld        de, (loc_00D2)
F6A0:   D5            push      de
F6A1:   010600        ld        bc, 0006
F6A4:   EDB0          ldir
F6A6:   D1            pop       de
F6A7:   2AD400        ld        hl, (loc_00D4)
F6AA:   C9            ret
                    label_F6AB:
F6AB:   3600          ld        (hl), 00
F6AD:   54            ld        d, h
F6AE:   5D            ld        e, l
F6AF:   13            inc       de
F6B0:   010500        ld        bc, 0005
F6B3:   EDB0          ldir
F6B5:   C9            ret
                    label_F6B6:
F6B6:   ED53D200      ld        (loc_00D2), de
F6BA:   22D400        ld        (loc_00D4), hl
F6BD:   AF            xor       a
F6BE:   32EF00        ld        (loc_00EF), a
F6C1:   21DC00        ld        hl, 00DC
F6C4:   77            ld        (hl), a
F6C5:   54            ld        d, h
F6C6:   5D            ld        e, l
F6C7:   13            inc       de
F6C8:   011700        ld        bc, 0017
F6CB:   EDB0          ldir
F6CD:   2AD200        ld        hl, (loc_00D2)
F6D0:   010600        ld        bc, 0006
F6D3:   11D600        ld        de, 00D6
F6D6:   EDB0          ldir
F6D8:   EB            ex        de, hl
F6D9:   CBC6          set       0, (hl)
F6DB:   2AD400        ld        hl, (loc_00D4)
F6DE:   010600        ld        bc, 0006
F6E1:   11E200        ld        de, 00E2
F6E4:   EDB0          ldir
F6E6:   21DB00        ld        hl, 00DB
F6E9:   7E            ld        a, (hl)
F6EA:   32F000        ld        (loc_00F0), a
F6ED:   CB7E          bit       7, (hl)
F6EF:   21E700        ld        hl, 00E7
F6F2:   2875          jr        z, label_F769
F6F4:   CB7E          bit       7, (hl)
F6F6:   2875          jr        z, label_F76D
                    label_F6F8:
F6F8:   21DB00        ld        hl, 00DB
F6FB:   11D600        ld        de, 00D6
F6FE:   CB7E          bit       7, (hl)
F700:   C444F5        call      nz, label_F544
F703:   21E700        ld        hl, 00E7
F706:   11E200        ld        de, 00E2
F709:   CB7E          bit       7, (hl)
F70B:   C444F5        call      nz, label_F544
F70E:   21DB00        ld        hl, 00DB
F711:   CD74F7        call      label_F774
F714:   2874          jr        z, label_F78A
F716:   51            ld        d, c
F717:   21E700        ld        hl, 00E7
F71A:   CD74F7        call      label_F774
F71D:   286B          jr        z, label_F78A
F71F:   79            ld        a, c
F720:   92            sub       d
F721:   FA8AF7        jp        m, label_F78A
F724:   32EE00        ld        (loc_00EE), a
F727:   280F          jr        z, label_F738
F729:   4F            ld        c, a
                    label_F72A:
F72A:   B7            or        a
F72B:   060C          ld        b, 0C
F72D:   21DC00        ld        hl, 00DC
                    label_F730:
F730:   CB16          rl        (hl)
F732:   23            inc       hl
F733:   10FB          djnz      label_F730
F735:   0D            dec       c
F736:   20F2          jr        nz, label_F72A
                    label_F738:
F738:   21E200        ld        hl, 00E2
F73B:   11D600        ld        de, 00D6
F73E:   CD6BF5        call      label_F56B
F741:   380B          jr        c, label_F74E
F743:   21DC00        ld        hl, 00DC
F746:   11E800        ld        de, 00E8
F749:   CD5CF5        call      label_F55C
F74C:   18EA          jr        label_F738
                    label_F74E:
F74E:   CD5CF5        call      label_F55C
F751:   3AEE00        ld        a, (loc_00EE)
F754:   FE00          cp        00
F756:   2832          jr        z, label_F78A
F758:   3D            dec       a
F759:   32EE00        ld        (loc_00EE), a
F75C:   B7            or        a
F75D:   060C          ld        b, 0C
F75F:   21E700        ld        hl, 00E7
                    label_F762:
F762:   CB1E          rr        (hl)
F764:   2B            dec       hl
F765:   10FB          djnz      label_F762
F767:   18CF          jr        label_F738
                    label_F769:
F769:   CB7E          bit       7, (hl)
F76B:   288B          jr        z, label_F6F8
                    label_F76D:
F76D:   3E2D          ld        a, 2D
F76F:   32EF00        ld        (loc_00EF), a
F772:   1884          jr        label_F6F8
                    label_F774:
F774:   0E00          ld        c, 00
                    label_F776:
F776:   7E            ld        a, (hl)
F777:   FE00          cp        00
F779:   200A          jr        nz, label_F785
F77B:   2B            dec       hl
F77C:   79            ld        a, c
F77D:   C608          add       a, 08
F77F:   4F            ld        c, a
F780:   FE30          cp        30
F782:   C8            ret       z
F783:   18F1          jr        label_F776
                    label_F785:
F785:   17            rla
F786:   D8            ret       c
F787:   0C            inc       c
F788:   18FB          jr        label_F785
                    label_F78A:
F78A:   11D600        ld        de, 00D6
F78D:   21F000        ld        hl, 00F0
F790:   CB7E          bit       7, (hl)
F792:   C444F5        call      nz, label_F544
F795:   21DB00        ld        hl, 00DB
F798:   CD0BF8        call      label_F80B
F79B:   11E800        ld        de, 00E8
F79E:   3AEF00        ld        a, (loc_00EF)
F7A1:   FE2D          cp        2D
F7A3:   CC44F5        call      z, label_F544
F7A6:   21ED00        ld        hl, 00ED
F7A9:   CD0BF8        call      label_F80B
F7AC:   21E800        ld        hl, 00E8
F7AF:   ED5BD200      ld        de, (loc_00D2)
F7B3:   010600        ld        bc, 0006
F7B6:   EDB0          ldir
F7B8:   ED5BD400      ld        de, (loc_00D4)
F7BC:   21D600        ld        hl, 00D6
F7BF:   010600        ld        bc, 0006
F7C2:   EDB0          ldir
F7C4:   2AD400        ld        hl, (loc_00D4)
F7C7:   ED5BD200      ld        de, (loc_00D2)
F7CB:   C9            ret
                    label_F7CC:
F7CC:   22D400        ld        (loc_00D4), hl
F7CF:   ED53D200      ld        (loc_00D2), de
F7D3:   EB            ex        de, hl
F7D4:   11D600        ld        de, 00D6
F7D7:   010600        ld        bc, 0006
F7DA:   EDB0          ldir
F7DC:   11D600        ld        de, 00D6
F7DF:   2AD400        ld        hl, (loc_00D4)
F7E2:   CD6BF5        call      label_F56B
F7E5:   3ADB00        ld        a, (loc_00DB)
F7E8:   CB7F          bit       7, a
F7EA:   2015          jr        nz, label_F801
F7EC:   21D600        ld        hl, 00D6
F7EF:   AF            xor       a
F7F0:   0606          ld        b, 06
                    label_F7F2:
F7F2:   BE            cp        (hl)
F7F3:   2008          jr        nz, label_F7FD
F7F5:   23            inc       hl
F7F6:   10FA          djnz      label_F7F2
F7F8:   3E02          ld        a, 02
F7FA:   3D            dec       a
F7FB:   1805          jr        label_F802
                    label_F7FD:
F7FD:   3E02          ld        a, 02
F7FF:   1801          jr        label_F802
                    label_F801:
F801:   AF            xor       a
                    label_F802:
F802:   3D            dec       a
F803:   2AD400        ld        hl, (loc_00D4)
F806:   ED5BD200      ld        de, (loc_00D2)
F80A:   C9            ret
                    label_F80B:
F80B:   3EFF          ld        a, FF
F80D:   0605          ld        b, 05
                    label_F80F:
F80F:   BE            cp        (hl)
F810:   C0            ret       nz
F811:   2B            dec       hl
F812:   10FB          djnz      label_F80F
F814:   3C            inc       a
F815:   BE            cp        (hl)
F816:   C0            ret       nz
F817:   54            ld        d, h
F818:   5D            ld        e, l
F819:   13            inc       de
F81A:   77            ld        (hl), a
F81B:   010500        ld        bc, 0005
F81E:   EDB0          ldir
F820:   C9            ret
F821:   FF            rst       38h
F822:   FF            rst       38h
F823:   FF            rst       38h
F824:   FF            rst       38h
F825:   FF            rst       38h
F826:   FF            rst       38h
F827:   FF            rst       38h
F828:   FF            rst       38h
F829:   FF            rst       38h
F82A:   FF            rst       38h
F82B:   FF            rst       38h
F82C:   FF            rst       38h
F82D:   FF            rst       38h
F82E:   FF            rst       38h
F82F:   FF            rst       38h
F830:   FF            rst       38h
F831:   FF            rst       38h
F832:   FF            rst       38h
F833:   FF            rst       38h
F834:   FF            rst       38h
F835:   FF            rst       38h
F836:   FF            rst       38h
F837:   FF            rst       38h
F838:   FF            rst       38h
F839:   FF            rst       38h
F83A:   FF            rst       38h
F83B:   FF            rst       38h
F83C:   FF            rst       38h
F83D:   FF            rst       38h
F83E:   FF            rst       38h
F83F:   FF            rst       38h
F840:   FF            rst       38h
F841:   FF            rst       38h
F842:   FF            rst       38h
F843:   FF            rst       38h
F844:   FF            rst       38h
F845:   FF            rst       38h
F846:   FF            rst       38h
F847:   FF            rst       38h
F848:   FF            rst       38h
F849:   FF            rst       38h
F84A:   FF            rst       38h
F84B:   FF            rst       38h
F84C:   FF            rst       38h
F84D:   FF            rst       38h
F84E:   FF            rst       38h
F84F:   FF            rst       38h
F850:   FF            rst       38h
F851:   FF            rst       38h
F852:   FF            rst       38h
F853:   FF            rst       38h
F854:   FF            rst       38h
F855:   FF            rst       38h
F856:   FF            rst       38h
F857:   FF            rst       38h
F858:   FF            rst       38h
F859:   FF            rst       38h
F85A:   FF            rst       38h
F85B:   FF            rst       38h
F85C:   FF            rst       38h
F85D:   FF            rst       38h
F85E:   FF            rst       38h
F85F:   FF            rst       38h
F860:   FF            rst       38h
F861:   FF            rst       38h
F862:   FF            rst       38h
F863:   FF            rst       38h
F864:   FF            rst       38h
F865:   FF            rst       38h
F866:   FF            rst       38h
F867:   FF            rst       38h
F868:   FF            rst       38h
F869:   FF            rst       38h
F86A:   FF            rst       38h
F86B:   FF            rst       38h
F86C:   FF            rst       38h
F86D:   FF            rst       38h
F86E:   FF            rst       38h
F86F:   FF            rst       38h
F870:   FF            rst       38h
F871:   FF            rst       38h
F872:   FF            rst       38h
F873:   FF            rst       38h
F874:   FF            rst       38h
F875:   FF            rst       38h
F876:   FF            rst       38h
F877:   FF            rst       38h
F878:   FF            rst       38h
F879:   FF            rst       38h
F87A:   FF            rst       38h
F87B:   FF            rst       38h
F87C:   FF            rst       38h
F87D:   FF            rst       38h
F87E:   FF            rst       38h
F87F:   FF            rst       38h
F880:   FF            rst       38h
F881:   FF            rst       38h
F882:   FF            rst       38h
F883:   FF            rst       38h
F884:   FF            rst       38h
F885:   FF            rst       38h
F886:   FF            rst       38h
F887:   FF            rst       38h
F888:   FF            rst       38h
F889:   FF            rst       38h
F88A:   FF            rst       38h
F88B:   FF            rst       38h
F88C:   FF            rst       38h
F88D:   FF            rst       38h
F88E:   FF            rst       38h
F88F:   FF            rst       38h
F890:   FF            rst       38h
F891:   FF            rst       38h
F892:   FF            rst       38h
F893:   FF            rst       38h
F894:   FF            rst       38h
F895:   FF            rst       38h
F896:   FF            rst       38h
F897:   FF            rst       38h
F898:   FF            rst       38h
F899:   FF            rst       38h
F89A:   FF            rst       38h
F89B:   FF            rst       38h
F89C:   FF            rst       38h
F89D:   FF            rst       38h
F89E:   FF            rst       38h
F89F:   FF            rst       38h
F8A0:   FF            rst       38h
F8A1:   FF            rst       38h
F8A2:   FF            rst       38h
F8A3:   FF            rst       38h
F8A4:   FF            rst       38h
F8A5:   FF            rst       38h
F8A6:   FF            rst       38h
F8A7:   FF            rst       38h
F8A8:   FF            rst       38h
F8A9:   FF            rst       38h
F8AA:   FF            rst       38h
F8AB:   FF            rst       38h
F8AC:   FF            rst       38h
F8AD:   FF            rst       38h
F8AE:   FF            rst       38h
F8AF:   FF            rst       38h
F8B0:   FF            rst       38h
F8B1:   FF            rst       38h
F8B2:   FF            rst       38h
F8B3:   FF            rst       38h
F8B4:   FF            rst       38h
F8B5:   FF            rst       38h
F8B6:   FF            rst       38h
F8B7:   FF            rst       38h
F8B8:   FF            rst       38h
F8B9:   FF            rst       38h
F8BA:   FF            rst       38h
F8BB:   FF            rst       38h
F8BC:   FF            rst       38h
F8BD:   FF            rst       38h
F8BE:   FF            rst       38h
F8BF:   FF            rst       38h
F8C0:   FF            rst       38h
F8C1:   FF            rst       38h
F8C2:   FF            rst       38h
F8C3:   FF            rst       38h
F8C4:   FF            rst       38h
F8C5:   FF            rst       38h
F8C6:   FF            rst       38h
F8C7:   FF            rst       38h
F8C8:   FF            rst       38h
F8C9:   FF            rst       38h
F8CA:   FF            rst       38h
F8CB:   FF            rst       38h
F8CC:   FF            rst       38h
F8CD:   FF            rst       38h
F8CE:   FF            rst       38h
F8CF:   FF            rst       38h
F8D0:   FF            rst       38h
F8D1:   FF            rst       38h
F8D2:   FF            rst       38h
F8D3:   FF            rst       38h
F8D4:   FF            rst       38h
F8D5:   FF            rst       38h
F8D6:   FF            rst       38h
F8D7:   FF            rst       38h
F8D8:   FF            rst       38h
F8D9:   FF            rst       38h
F8DA:   FF            rst       38h
F8DB:   FF            rst       38h
F8DC:   FF            rst       38h
F8DD:   FF            rst       38h
F8DE:   FF            rst       38h
F8DF:   FF            rst       38h
F8E0:   FF            rst       38h
F8E1:   FF            rst       38h
F8E2:   FF            rst       38h
F8E3:   FF            rst       38h
F8E4:   FF            rst       38h
F8E5:   FF            rst       38h
F8E6:   FF            rst       38h
F8E7:   FF            rst       38h
F8E8:   FF            rst       38h
F8E9:   FF            rst       38h
F8EA:   FF            rst       38h
F8EB:   FF            rst       38h
F8EC:   FF            rst       38h
F8ED:   FF            rst       38h
F8EE:   FF            rst       38h
F8EF:   FF            rst       38h
F8F0:   FF            rst       38h
F8F1:   FF            rst       38h
F8F2:   FF            rst       38h
F8F3:   FF            rst       38h
F8F4:   FF            rst       38h
F8F5:   FF            rst       38h
F8F6:   FF            rst       38h
F8F7:   FF            rst       38h
F8F8:   FF            rst       38h
F8F9:   FF            rst       38h
F8FA:   FF            rst       38h
F8FB:   FF            rst       38h
F8FC:   FF            rst       38h
F8FD:   FF            rst       38h
F8FE:   FF            rst       38h
F8FF:   FF            rst       38h
F900:   FF            rst       38h
F901:   FF            rst       38h
F902:   FF            rst       38h
F903:   FF            rst       38h
F904:   FF            rst       38h
F905:   FF            rst       38h
F906:   FF            rst       38h
F907:   FF            rst       38h
F908:   FF            rst       38h
F909:   FF            rst       38h
F90A:   FF            rst       38h
F90B:   FF            rst       38h
F90C:   FF            rst       38h
F90D:   FF            rst       38h
F90E:   FF            rst       38h
F90F:   FF            rst       38h
F910:   FF            rst       38h
F911:   FF            rst       38h
F912:   FF            rst       38h
F913:   FF            rst       38h
F914:   FF            rst       38h
F915:   FF            rst       38h
F916:   FF            rst       38h
F917:   FF            rst       38h
F918:   FF            rst       38h
F919:   FF            rst       38h
F91A:   FF            rst       38h
F91B:   FF            rst       38h
F91C:   FF            rst       38h
F91D:   FF            rst       38h
F91E:   FF            rst       38h
F91F:   FF            rst       38h
F920:   FF            rst       38h
F921:   FF            rst       38h
F922:   FF            rst       38h
F923:   FF            rst       38h
F924:   FF            rst       38h
F925:   FF            rst       38h
F926:   FF            rst       38h
F927:   FF            rst       38h
F928:   FF            rst       38h
F929:   FF            rst       38h
F92A:   FF            rst       38h
F92B:   FF            rst       38h
F92C:   FF            rst       38h
F92D:   FF            rst       38h
F92E:   FF            rst       38h
F92F:   FF            rst       38h
F930:   FF            rst       38h
F931:   FF            rst       38h
F932:   FF            rst       38h
F933:   FF            rst       38h
F934:   FF            rst       38h
F935:   FF            rst       38h
F936:   FF            rst       38h
F937:   FF            rst       38h
F938:   FF            rst       38h
F939:   FF            rst       38h
F93A:   FF            rst       38h
F93B:   FF            rst       38h
F93C:   FF            rst       38h
F93D:   FF            rst       38h
F93E:   FF            rst       38h
F93F:   FF            rst       38h
F940:   FF            rst       38h
F941:   FF            rst       38h
F942:   FF            rst       38h
F943:   FF            rst       38h
F944:   FF            rst       38h
F945:   FF            rst       38h
F946:   FF            rst       38h
F947:   FF            rst       38h
F948:   FF            rst       38h
F949:   FF            rst       38h
F94A:   FF            rst       38h
F94B:   FF            rst       38h
F94C:   FF            rst       38h
F94D:   FF            rst       38h
F94E:   FF            rst       38h
F94F:   FF            rst       38h
F950:   FF            rst       38h
F951:   FF            rst       38h
F952:   FF            rst       38h
F953:   FF            rst       38h
F954:   FF            rst       38h
F955:   FF            rst       38h
F956:   FF            rst       38h
F957:   FF            rst       38h
F958:   FF            rst       38h
F959:   FF            rst       38h
F95A:   FF            rst       38h
F95B:   FF            rst       38h
F95C:   FF            rst       38h
F95D:   FF            rst       38h
F95E:   FF            rst       38h
F95F:   FF            rst       38h
F960:   FF            rst       38h
F961:   FF            rst       38h
F962:   FF            rst       38h
F963:   FF            rst       38h
F964:   FF            rst       38h
F965:   FF            rst       38h
F966:   FF            rst       38h
F967:   FF            rst       38h
F968:   FF            rst       38h
F969:   FF            rst       38h
F96A:   FF            rst       38h
F96B:   FF            rst       38h
F96C:   FF            rst       38h
F96D:   FF            rst       38h
F96E:   FF            rst       38h
F96F:   FF            rst       38h
F970:   FF            rst       38h
F971:   FF            rst       38h
F972:   FF            rst       38h
F973:   FF            rst       38h
F974:   FF            rst       38h
F975:   FF            rst       38h
F976:   FF            rst       38h
F977:   FF            rst       38h
F978:   FF            rst       38h
F979:   FF            rst       38h
F97A:   FF            rst       38h
F97B:   FF            rst       38h
F97C:   FF            rst       38h
F97D:   FF            rst       38h
F97E:   FF            rst       38h
F97F:   FF            rst       38h
F980:   FF            rst       38h
F981:   FF            rst       38h
F982:   FF            rst       38h
F983:   FF            rst       38h
F984:   FF            rst       38h
F985:   FF            rst       38h
F986:   FF            rst       38h
F987:   FF            rst       38h
F988:   FF            rst       38h
F989:   FF            rst       38h
F98A:   FF            rst       38h
F98B:   FF            rst       38h
F98C:   FF            rst       38h
F98D:   FF            rst       38h
F98E:   FF            rst       38h
F98F:   FF            rst       38h
F990:   FF            rst       38h
F991:   FF            rst       38h
F992:   FF            rst       38h
F993:   FF            rst       38h
F994:   FF            rst       38h
F995:   FF            rst       38h
F996:   FF            rst       38h
F997:   FF            rst       38h
F998:   FF            rst       38h
F999:   FF            rst       38h
F99A:   FF            rst       38h
F99B:   FF            rst       38h
F99C:   FF            rst       38h
F99D:   FF            rst       38h
F99E:   FF            rst       38h
F99F:   FF            rst       38h
F9A0:   FF            rst       38h
F9A1:   FF            rst       38h
F9A2:   FF            rst       38h
F9A3:   FF            rst       38h
F9A4:   FF            rst       38h
F9A5:   FF            rst       38h
F9A6:   FF            rst       38h
F9A7:   FF            rst       38h
F9A8:   FF            rst       38h
F9A9:   FF            rst       38h
F9AA:   FF            rst       38h
F9AB:   FF            rst       38h
F9AC:   FF            rst       38h
F9AD:   FF            rst       38h
F9AE:   FF            rst       38h
F9AF:   FF            rst       38h
F9B0:   FF            rst       38h
F9B1:   FF            rst       38h
F9B2:   FF            rst       38h
F9B3:   FF            rst       38h
F9B4:   FF            rst       38h
F9B5:   FF            rst       38h
F9B6:   FF            rst       38h
F9B7:   FF            rst       38h
F9B8:   FF            rst       38h
F9B9:   FF            rst       38h
F9BA:   FF            rst       38h
F9BB:   FF            rst       38h
F9BC:   FF            rst       38h
F9BD:   FF            rst       38h
F9BE:   FF            rst       38h
F9BF:   FF            rst       38h
F9C0:   FF            rst       38h
F9C1:   FF            rst       38h
F9C2:   FF            rst       38h
F9C3:   FF            rst       38h
F9C4:   FF            rst       38h
F9C5:   FF            rst       38h
F9C6:   FF            rst       38h
F9C7:   FF            rst       38h
F9C8:   FF            rst       38h
F9C9:   FF            rst       38h
F9CA:   FF            rst       38h
F9CB:   FF            rst       38h
F9CC:   FF            rst       38h
F9CD:   FF            rst       38h
F9CE:   FF            rst       38h
F9CF:   FF            rst       38h
F9D0:   FF            rst       38h
F9D1:   FF            rst       38h
F9D2:   FF            rst       38h
F9D3:   FF            rst       38h
F9D4:   FF            rst       38h
F9D5:   FF            rst       38h
F9D6:   FF            rst       38h
F9D7:   FF            rst       38h
F9D8:   FF            rst       38h
F9D9:   FF            rst       38h
F9DA:   FF            rst       38h
F9DB:   FF            rst       38h
F9DC:   FF            rst       38h
F9DD:   FF            rst       38h
F9DE:   FF            rst       38h
F9DF:   FF            rst       38h
F9E0:   FF            rst       38h
F9E1:   FF            rst       38h
F9E2:   FF            rst       38h
F9E3:   FF            rst       38h
F9E4:   FF            rst       38h
F9E5:   FF            rst       38h
F9E6:   FF            rst       38h
F9E7:   FF            rst       38h
F9E8:   FF            rst       38h
F9E9:   FF            rst       38h
F9EA:   FF            rst       38h
F9EB:   FF            rst       38h
F9EC:   FF            rst       38h
F9ED:   FF            rst       38h
F9EE:   FF            rst       38h
F9EF:   FF            rst       38h
F9F0:   FF            rst       38h
F9F1:   FF            rst       38h
F9F2:   FF            rst       38h
F9F3:   FF            rst       38h
F9F4:   FF            rst       38h
F9F5:   FF            rst       38h
F9F6:   FF            rst       38h
F9F7:   FF            rst       38h
F9F8:   FF            rst       38h
F9F9:   FF            rst       38h
F9FA:   FF            rst       38h
F9FB:   FF            rst       38h
F9FC:   FF            rst       38h
F9FD:   FF            rst       38h
F9FE:   FF            rst       38h
F9FF:   FF            rst       38h
FA00:   FF            rst       38h
FA01:   FF            rst       38h
FA02:   FF            rst       38h
FA03:   FF            rst       38h
FA04:   FF            rst       38h
FA05:   FF            rst       38h
FA06:   FF            rst       38h
FA07:   FF            rst       38h
FA08:   FF            rst       38h
FA09:   FF            rst       38h
FA0A:   FF            rst       38h
FA0B:   FF            rst       38h
FA0C:   FF            rst       38h
FA0D:   FF            rst       38h
FA0E:   FF            rst       38h
FA0F:   FF            rst       38h
FA10:   FF            rst       38h
FA11:   FF            rst       38h
FA12:   FF            rst       38h
FA13:   FF            rst       38h
FA14:   FF            rst       38h
FA15:   FF            rst       38h
FA16:   FF            rst       38h
FA17:   FF            rst       38h
FA18:   FF            rst       38h
FA19:   FF            rst       38h
FA1A:   FF            rst       38h
FA1B:   FF            rst       38h
FA1C:   FF            rst       38h
FA1D:   FF            rst       38h
FA1E:   FF            rst       38h
FA1F:   FF            rst       38h
FA20:   FF            rst       38h
FA21:   FF            rst       38h
FA22:   FF            rst       38h
FA23:   FF            rst       38h
FA24:   FF            rst       38h
FA25:   FF            rst       38h
FA26:   FF            rst       38h
FA27:   FF            rst       38h
FA28:   FF            rst       38h
FA29:   FF            rst       38h
FA2A:   FF            rst       38h
FA2B:   FF            rst       38h
FA2C:   FF            rst       38h
FA2D:   FF            rst       38h
FA2E:   FF            rst       38h
FA2F:   FF            rst       38h
FA30:   FF            rst       38h
FA31:   FF            rst       38h
FA32:   FF            rst       38h
FA33:   FF            rst       38h
FA34:   FF            rst       38h
FA35:   FF            rst       38h
FA36:   FF            rst       38h
FA37:   FF            rst       38h
FA38:   FF            rst       38h
FA39:   FF            rst       38h
FA3A:   FF            rst       38h
FA3B:   FF            rst       38h
FA3C:   FF            rst       38h
FA3D:   FF            rst       38h
FA3E:   FF            rst       38h
FA3F:   FF            rst       38h
FA40:   FF            rst       38h
FA41:   FF            rst       38h
FA42:   FF            rst       38h
FA43:   FF            rst       38h
FA44:   FF            rst       38h
FA45:   FF            rst       38h
FA46:   FF            rst       38h
FA47:   FF            rst       38h
FA48:   FF            rst       38h
FA49:   FF            rst       38h
FA4A:   FF            rst       38h
FA4B:   FF            rst       38h
FA4C:   FF            rst       38h
FA4D:   FF            rst       38h
FA4E:   FF            rst       38h
FA4F:   FF            rst       38h
FA50:   FF            rst       38h
FA51:   FF            rst       38h
FA52:   FF            rst       38h
FA53:   FF            rst       38h
FA54:   FF            rst       38h
FA55:   FF            rst       38h
FA56:   FF            rst       38h
FA57:   FF            rst       38h
FA58:   FF            rst       38h
FA59:   FF            rst       38h
FA5A:   FF            rst       38h
FA5B:   FF            rst       38h
FA5C:   FF            rst       38h
FA5D:   FF            rst       38h
FA5E:   FF            rst       38h
FA5F:   FF            rst       38h
FA60:   FF            rst       38h
FA61:   FF            rst       38h
FA62:   FF            rst       38h
FA63:   FF            rst       38h
FA64:   FF            rst       38h
FA65:   FF            rst       38h
FA66:   FF            rst       38h
FA67:   FF            rst       38h
FA68:   FF            rst       38h
FA69:   FF            rst       38h
FA6A:   FF            rst       38h
FA6B:   FF            rst       38h
FA6C:   FF            rst       38h
FA6D:   FF            rst       38h
FA6E:   FF            rst       38h
FA6F:   FF            rst       38h
FA70:   FF            rst       38h
FA71:   FF            rst       38h
FA72:   FF            rst       38h
FA73:   FF            rst       38h
FA74:   FF            rst       38h
FA75:   FF            rst       38h
FA76:   FF            rst       38h
FA77:   FF            rst       38h
FA78:   FF            rst       38h
FA79:   FF            rst       38h
FA7A:   FF            rst       38h
FA7B:   FF            rst       38h
FA7C:   FF            rst       38h
FA7D:   FF            rst       38h
FA7E:   FF            rst       38h
FA7F:   FF            rst       38h
FA80:   FF            rst       38h
FA81:   FF            rst       38h
FA82:   FF            rst       38h
FA83:   FF            rst       38h
FA84:   FF            rst       38h
FA85:   FF            rst       38h
FA86:   FF            rst       38h
FA87:   FF            rst       38h
FA88:   FF            rst       38h
FA89:   FF            rst       38h
FA8A:   FF            rst       38h
FA8B:   FF            rst       38h
FA8C:   FF            rst       38h
FA8D:   FF            rst       38h
FA8E:   FF            rst       38h
FA8F:   FF            rst       38h
FA90:   FF            rst       38h
FA91:   FF            rst       38h
FA92:   FF            rst       38h
FA93:   FF            rst       38h
FA94:   FF            rst       38h
FA95:   FF            rst       38h
FA96:   FF            rst       38h
FA97:   FF            rst       38h
FA98:   FF            rst       38h
FA99:   FF            rst       38h
FA9A:   FF            rst       38h
FA9B:   FF            rst       38h
FA9C:   FF            rst       38h
FA9D:   FF            rst       38h
FA9E:   FF            rst       38h
FA9F:   FF            rst       38h
FAA0:   FF            rst       38h
FAA1:   FF            rst       38h
FAA2:   FF            rst       38h
FAA3:   FF            rst       38h
FAA4:   FF            rst       38h
FAA5:   FF            rst       38h
FAA6:   FF            rst       38h
FAA7:   FF            rst       38h
FAA8:   FF            rst       38h
FAA9:   FF            rst       38h
FAAA:   FF            rst       38h
FAAB:   FF            rst       38h
FAAC:   FF            rst       38h
FAAD:   FF            rst       38h
FAAE:   FF            rst       38h
FAAF:   FF            rst       38h
FAB0:   FF            rst       38h
FAB1:   FF            rst       38h
FAB2:   FF            rst       38h
FAB3:   FF            rst       38h
FAB4:   FF            rst       38h
FAB5:   FF            rst       38h
FAB6:   FF            rst       38h
FAB7:   FF            rst       38h
FAB8:   FF            rst       38h
FAB9:   FF            rst       38h
FABA:   FF            rst       38h
FABB:   FF            rst       38h
FABC:   FF            rst       38h
FABD:   FF            rst       38h
FABE:   FF            rst       38h
FABF:   FF            rst       38h
FAC0:   FF            rst       38h
FAC1:   FF            rst       38h
FAC2:   FF            rst       38h
FAC3:   FF            rst       38h
FAC4:   FF            rst       38h
FAC5:   FF            rst       38h
FAC6:   FF            rst       38h
FAC7:   FF            rst       38h
FAC8:   FF            rst       38h
FAC9:   FF            rst       38h
FACA:   FF            rst       38h
FACB:   FF            rst       38h
FACC:   FF            rst       38h
FACD:   FF            rst       38h
FACE:   FF            rst       38h
FACF:   FF            rst       38h
FAD0:   FF            rst       38h
FAD1:   FF            rst       38h
FAD2:   FF            rst       38h
FAD3:   FF            rst       38h
FAD4:   FF            rst       38h
FAD5:   FF            rst       38h
FAD6:   FF            rst       38h
FAD7:   FF            rst       38h
FAD8:   FF            rst       38h
FAD9:   FF            rst       38h
FADA:   FF            rst       38h
FADB:   FF            rst       38h
FADC:   FF            rst       38h
FADD:   FF            rst       38h
FADE:   FF            rst       38h
FADF:   FF            rst       38h
FAE0:   FF            rst       38h
FAE1:   FF            rst       38h
FAE2:   FF            rst       38h
FAE3:   FF            rst       38h
FAE4:   FF            rst       38h
FAE5:   FF            rst       38h
FAE6:   FF            rst       38h
FAE7:   FF            rst       38h
FAE8:   FF            rst       38h
FAE9:   FF            rst       38h
FAEA:   FF            rst       38h
FAEB:   FF            rst       38h
FAEC:   FF            rst       38h
FAED:   FF            rst       38h
FAEE:   FF            rst       38h
FAEF:   FF            rst       38h
FAF0:   FF            rst       38h
FAF1:   FF            rst       38h
FAF2:   FF            rst       38h
FAF3:   FF            rst       38h
FAF4:   FF            rst       38h
FAF5:   FF            rst       38h
FAF6:   FF            rst       38h
FAF7:   FF            rst       38h
FAF8:   FF            rst       38h
FAF9:   FF            rst       38h
FAFA:   FF            rst       38h
FAFB:   FF            rst       38h
FAFC:   FF            rst       38h
FAFD:   FF            rst       38h
FAFE:   FF            rst       38h
FAFF:   FF            rst       38h
FB00:   FF            rst       38h
FB01:   FF            rst       38h
FB02:   FF            rst       38h
FB03:   FF            rst       38h
FB04:   FF            rst       38h
FB05:   FF            rst       38h
FB06:   FF            rst       38h
FB07:   FF            rst       38h
FB08:   FF            rst       38h
FB09:   FF            rst       38h
FB0A:   FF            rst       38h
FB0B:   FF            rst       38h
FB0C:   FF            rst       38h
FB0D:   FF            rst       38h
FB0E:   FF            rst       38h
FB0F:   FF            rst       38h
FB10:   FF            rst       38h
FB11:   FF            rst       38h
FB12:   FF            rst       38h
FB13:   FF            rst       38h
FB14:   FF            rst       38h
FB15:   FF            rst       38h
FB16:   FF            rst       38h
FB17:   FF            rst       38h
FB18:   FF            rst       38h
FB19:   FF            rst       38h
FB1A:   FF            rst       38h
FB1B:   FF            rst       38h
FB1C:   FF            rst       38h
FB1D:   FF            rst       38h
FB1E:   FF            rst       38h
FB1F:   FF            rst       38h
FB20:   FF            rst       38h
FB21:   FF            rst       38h
FB22:   FF            rst       38h
FB23:   FF            rst       38h
FB24:   FF            rst       38h
FB25:   FF            rst       38h
FB26:   FF            rst       38h
FB27:   FF            rst       38h
FB28:   FF            rst       38h
FB29:   FF            rst       38h
FB2A:   FF            rst       38h
FB2B:   FF            rst       38h
FB2C:   FF            rst       38h
FB2D:   FF            rst       38h
FB2E:   FF            rst       38h
FB2F:   FF            rst       38h
FB30:   FF            rst       38h
FB31:   FF            rst       38h
FB32:   FF            rst       38h
FB33:   FF            rst       38h
FB34:   FF            rst       38h
FB35:   FF            rst       38h
FB36:   FF            rst       38h
FB37:   FF            rst       38h
FB38:   FF            rst       38h
FB39:   FF            rst       38h
FB3A:   FF            rst       38h
FB3B:   FF            rst       38h
FB3C:   FF            rst       38h
FB3D:   FF            rst       38h
FB3E:   FF            rst       38h
FB3F:   FF            rst       38h
FB40:   FF            rst       38h
FB41:   FF            rst       38h
FB42:   FF            rst       38h
FB43:   FF            rst       38h
FB44:   FF            rst       38h
FB45:   FF            rst       38h
FB46:   FF            rst       38h
FB47:   FF            rst       38h
FB48:   FF            rst       38h
FB49:   FF            rst       38h
FB4A:   FF            rst       38h
FB4B:   FF            rst       38h
FB4C:   FF            rst       38h
FB4D:   FF            rst       38h
FB4E:   FF            rst       38h
FB4F:   FF            rst       38h
FB50:   FF            rst       38h
FB51:   FF            rst       38h
FB52:   FF            rst       38h
FB53:   FF            rst       38h
FB54:   FF            rst       38h
FB55:   FF            rst       38h
FB56:   FF            rst       38h
FB57:   FF            rst       38h
FB58:   FF            rst       38h
FB59:   FF            rst       38h
FB5A:   FF            rst       38h
FB5B:   FF            rst       38h
FB5C:   FF            rst       38h
FB5D:   FF            rst       38h
FB5E:   FF            rst       38h
FB5F:   FF            rst       38h
FB60:   FF            rst       38h
FB61:   FF            rst       38h
FB62:   FF            rst       38h
FB63:   FF            rst       38h
FB64:   FF            rst       38h
FB65:   FF            rst       38h
FB66:   FF            rst       38h
FB67:   FF            rst       38h
FB68:   FF            rst       38h
FB69:   FF            rst       38h
FB6A:   FF            rst       38h
FB6B:   FF            rst       38h
FB6C:   FF            rst       38h
FB6D:   FF            rst       38h
FB6E:   FF            rst       38h
FB6F:   FF            rst       38h
FB70:   FF            rst       38h
FB71:   FF            rst       38h
FB72:   FF            rst       38h
FB73:   FF            rst       38h
FB74:   FF            rst       38h
FB75:   FF            rst       38h
FB76:   FF            rst       38h
FB77:   FF            rst       38h
FB78:   FF            rst       38h
FB79:   FF            rst       38h
FB7A:   FF            rst       38h
FB7B:   FF            rst       38h
FB7C:   FF            rst       38h
FB7D:   FF            rst       38h
FB7E:   FF            rst       38h
FB7F:   FF            rst       38h
FB80:   FF            rst       38h
FB81:   FF            rst       38h
FB82:   FF            rst       38h
FB83:   FF            rst       38h
FB84:   FF            rst       38h
FB85:   FF            rst       38h
FB86:   FF            rst       38h
FB87:   FF            rst       38h
FB88:   FF            rst       38h
FB89:   FF            rst       38h
FB8A:   FF            rst       38h
FB8B:   FF            rst       38h
FB8C:   FF            rst       38h
FB8D:   FF            rst       38h
FB8E:   FF            rst       38h
FB8F:   FF            rst       38h
FB90:   FF            rst       38h
FB91:   FF            rst       38h
FB92:   FF            rst       38h
FB93:   FF            rst       38h
FB94:   FF            rst       38h
FB95:   FF            rst       38h
FB96:   FF            rst       38h
FB97:   FF            rst       38h
FB98:   FF            rst       38h
FB99:   FF            rst       38h
FB9A:   FF            rst       38h
FB9B:   FF            rst       38h
FB9C:   FF            rst       38h
FB9D:   FF            rst       38h
FB9E:   FF            rst       38h
FB9F:   FF            rst       38h
FBA0:   FF            rst       38h
FBA1:   FF            rst       38h
FBA2:   FF            rst       38h
FBA3:   FF            rst       38h
FBA4:   FF            rst       38h
FBA5:   FF            rst       38h
FBA6:   FF            rst       38h
FBA7:   FF            rst       38h
FBA8:   FF            rst       38h
FBA9:   FF            rst       38h
FBAA:   FF            rst       38h
FBAB:   FF            rst       38h
FBAC:   FF            rst       38h
FBAD:   FF            rst       38h
FBAE:   FF            rst       38h
FBAF:   FF            rst       38h
FBB0:   FF            rst       38h
FBB1:   FF            rst       38h
FBB2:   FF            rst       38h
FBB3:   FF            rst       38h
FBB4:   FF            rst       38h
FBB5:   FF            rst       38h
FBB6:   FF            rst       38h
FBB7:   FF            rst       38h
FBB8:   FF            rst       38h
FBB9:   FF            rst       38h
FBBA:   FF            rst       38h
FBBB:   FF            rst       38h
FBBC:   FF            rst       38h
FBBD:   FF            rst       38h
FBBE:   FF            rst       38h
FBBF:   FF            rst       38h
FBC0:   FF            rst       38h
FBC1:   FF            rst       38h
FBC2:   FF            rst       38h
FBC3:   FF            rst       38h
FBC4:   FF            rst       38h
FBC5:   FF            rst       38h
FBC6:   FF            rst       38h
FBC7:   FF            rst       38h
FBC8:   FF            rst       38h
FBC9:   FF            rst       38h
FBCA:   FF            rst       38h
FBCB:   FF            rst       38h
FBCC:   FF            rst       38h
FBCD:   FF            rst       38h
FBCE:   FF            rst       38h
FBCF:   FF            rst       38h
FBD0:   FF            rst       38h
FBD1:   FF            rst       38h
FBD2:   FF            rst       38h
FBD3:   FF            rst       38h
FBD4:   FF            rst       38h
FBD5:   FF            rst       38h
FBD6:   FF            rst       38h
FBD7:   FF            rst       38h
FBD8:   FF            rst       38h
FBD9:   FF            rst       38h
FBDA:   FF            rst       38h
FBDB:   FF            rst       38h
FBDC:   FF            rst       38h
FBDD:   FF            rst       38h
FBDE:   FF            rst       38h
FBDF:   FF            rst       38h
FBE0:   FF            rst       38h
FBE1:   FF            rst       38h
FBE2:   FF            rst       38h
FBE3:   FF            rst       38h
FBE4:   FF            rst       38h
FBE5:   FF            rst       38h
FBE6:   FF            rst       38h
FBE7:   FF            rst       38h
FBE8:   FF            rst       38h
FBE9:   FF            rst       38h
FBEA:   FF            rst       38h
FBEB:   FF            rst       38h
FBEC:   FF            rst       38h
FBED:   FF            rst       38h
FBEE:   FF            rst       38h
FBEF:   FF            rst       38h
FBF0:   FF            rst       38h
FBF1:   FF            rst       38h
FBF2:   FF            rst       38h
FBF3:   FF            rst       38h
FBF4:   FF            rst       38h
FBF5:   FF            rst       38h
FBF6:   FF            rst       38h
FBF7:   FF            rst       38h
FBF8:   FF            rst       38h
FBF9:   FF            rst       38h
FBFA:   FF            rst       38h
FBFB:   FF            rst       38h
FBFC:   FF            rst       38h
FBFD:   FF            rst       38h
FBFE:   FF            rst       38h
FBFF:   FF            rst       38h
FC00:   FF            rst       38h
FC01:   FF            rst       38h
FC02:   FF            rst       38h
FC03:   FF            rst       38h
FC04:   FF            rst       38h
FC05:   FF            rst       38h
FC06:   FF            rst       38h
FC07:   FF            rst       38h
FC08:   FF            rst       38h
FC09:   FF            rst       38h
FC0A:   FF            rst       38h
FC0B:   FF            rst       38h
FC0C:   FF            rst       38h
FC0D:   FF            rst       38h
FC0E:   FF            rst       38h
FC0F:   FF            rst       38h
FC10:   FF            rst       38h
FC11:   FF            rst       38h
FC12:   FF            rst       38h
FC13:   FF            rst       38h
FC14:   FF            rst       38h
FC15:   FF            rst       38h
FC16:   FF            rst       38h
FC17:   FF            rst       38h
FC18:   FF            rst       38h
FC19:   FF            rst       38h
FC1A:   FF            rst       38h
FC1B:   FF            rst       38h
FC1C:   FF            rst       38h
FC1D:   FF            rst       38h
FC1E:   FF            rst       38h
FC1F:   FF            rst       38h
FC20:   FF            rst       38h
FC21:   FF            rst       38h
FC22:   FF            rst       38h
FC23:   FF            rst       38h
FC24:   FF            rst       38h
FC25:   FF            rst       38h
FC26:   FF            rst       38h
FC27:   FF            rst       38h
FC28:   FF            rst       38h
FC29:   FF            rst       38h
FC2A:   FF            rst       38h
FC2B:   FF            rst       38h
FC2C:   FF            rst       38h
FC2D:   FF            rst       38h
FC2E:   FF            rst       38h
FC2F:   FF            rst       38h
FC30:   FF            rst       38h
FC31:   FF            rst       38h
FC32:   FF            rst       38h
FC33:   FF            rst       38h
FC34:   FF            rst       38h
FC35:   FF            rst       38h
FC36:   FF            rst       38h
FC37:   FF            rst       38h
FC38:   FF            rst       38h
FC39:   FF            rst       38h
FC3A:   FF            rst       38h
FC3B:   FF            rst       38h
FC3C:   FF            rst       38h
FC3D:   FF            rst       38h
FC3E:   FF            rst       38h
FC3F:   FF            rst       38h
FC40:   FF            rst       38h
FC41:   FF            rst       38h
FC42:   FF            rst       38h
FC43:   FF            rst       38h
FC44:   FF            rst       38h
FC45:   FF            rst       38h
FC46:   FF            rst       38h
FC47:   FF            rst       38h
FC48:   FF            rst       38h
FC49:   FF            rst       38h
FC4A:   FF            rst       38h
FC4B:   FF            rst       38h
FC4C:   FF            rst       38h
FC4D:   FF            rst       38h
FC4E:   FF            rst       38h
FC4F:   FF            rst       38h
FC50:   FF            rst       38h
FC51:   FF            rst       38h
FC52:   FF            rst       38h
FC53:   FF            rst       38h
FC54:   FF            rst       38h
FC55:   FF            rst       38h
FC56:   FF            rst       38h
FC57:   FF            rst       38h
FC58:   FF            rst       38h
FC59:   FF            rst       38h
FC5A:   FF            rst       38h
FC5B:   FF            rst       38h
FC5C:   FF            rst       38h
FC5D:   FF            rst       38h
FC5E:   FF            rst       38h
FC5F:   FF            rst       38h
FC60:   FF            rst       38h
FC61:   FF            rst       38h
FC62:   FF            rst       38h
FC63:   FF            rst       38h
FC64:   FF            rst       38h
FC65:   FF            rst       38h
FC66:   FF            rst       38h
FC67:   FF            rst       38h
FC68:   FF            rst       38h
FC69:   FF            rst       38h
FC6A:   FF            rst       38h
FC6B:   FF            rst       38h
FC6C:   FF            rst       38h
FC6D:   FF            rst       38h
FC6E:   FF            rst       38h
FC6F:   FF            rst       38h
FC70:   FF            rst       38h
FC71:   FF            rst       38h
FC72:   FF            rst       38h
FC73:   FF            rst       38h
FC74:   FF            rst       38h
FC75:   FF            rst       38h
FC76:   FF            rst       38h
FC77:   FF            rst       38h
FC78:   FF            rst       38h
FC79:   FF            rst       38h
FC7A:   FF            rst       38h
FC7B:   FF            rst       38h
FC7C:   FF            rst       38h
FC7D:   FF            rst       38h
FC7E:   FF            rst       38h
FC7F:   FF            rst       38h
FC80:   FF            rst       38h
FC81:   FF            rst       38h
FC82:   FF            rst       38h
FC83:   FF            rst       38h
FC84:   FF            rst       38h
FC85:   FF            rst       38h
FC86:   FF            rst       38h
FC87:   FF            rst       38h
FC88:   FF            rst       38h
FC89:   FF            rst       38h
FC8A:   FF            rst       38h
FC8B:   FF            rst       38h
FC8C:   FF            rst       38h
FC8D:   FF            rst       38h
FC8E:   FF            rst       38h
FC8F:   FF            rst       38h
FC90:   FF            rst       38h
FC91:   FF            rst       38h
FC92:   FF            rst       38h
FC93:   FF            rst       38h
FC94:   FF            rst       38h
FC95:   FF            rst       38h
FC96:   FF            rst       38h
FC97:   FF            rst       38h
FC98:   FF            rst       38h
FC99:   FF            rst       38h
FC9A:   FF            rst       38h
FC9B:   FF            rst       38h
FC9C:   FF            rst       38h
FC9D:   FF            rst       38h
FC9E:   FF            rst       38h
FC9F:   FF            rst       38h
FCA0:   FF            rst       38h
FCA1:   FF            rst       38h
FCA2:   FF            rst       38h
FCA3:   FF            rst       38h
FCA4:   FF            rst       38h
FCA5:   FF            rst       38h
FCA6:   FF            rst       38h
FCA7:   FF            rst       38h
FCA8:   FF            rst       38h
FCA9:   FF            rst       38h
FCAA:   FF            rst       38h
FCAB:   FF            rst       38h
FCAC:   FF            rst       38h
FCAD:   FF            rst       38h
FCAE:   FF            rst       38h
FCAF:   FF            rst       38h
FCB0:   FF            rst       38h
FCB1:   FF            rst       38h
FCB2:   FF            rst       38h
FCB3:   FF            rst       38h
FCB4:   FF            rst       38h
FCB5:   FF            rst       38h
FCB6:   FF            rst       38h
FCB7:   FF            rst       38h
FCB8:   FF            rst       38h
FCB9:   FF            rst       38h
FCBA:   FF            rst       38h
FCBB:   FF            rst       38h
FCBC:   FF            rst       38h
FCBD:   FF            rst       38h
FCBE:   FF            rst       38h
FCBF:   FF            rst       38h
FCC0:   FF            rst       38h
FCC1:   FF            rst       38h
FCC2:   FF            rst       38h
FCC3:   FF            rst       38h
FCC4:   FF            rst       38h
FCC5:   FF            rst       38h
FCC6:   FF            rst       38h
FCC7:   FF            rst       38h
FCC8:   FF            rst       38h
FCC9:   FF            rst       38h
FCCA:   FF            rst       38h
FCCB:   FF            rst       38h
FCCC:   FF            rst       38h
FCCD:   FF            rst       38h
FCCE:   FF            rst       38h
FCCF:   FF            rst       38h
FCD0:   FF            rst       38h
FCD1:   FF            rst       38h
FCD2:   FF            rst       38h
FCD3:   FF            rst       38h
FCD4:   FF            rst       38h
FCD5:   FF            rst       38h
FCD6:   FF            rst       38h
FCD7:   FF            rst       38h
FCD8:   FF            rst       38h
FCD9:   FF            rst       38h
FCDA:   FF            rst       38h
FCDB:   FF            rst       38h
FCDC:   FF            rst       38h
FCDD:   FF            rst       38h
FCDE:   FF            rst       38h
FCDF:   FF            rst       38h
FCE0:   FF            rst       38h
FCE1:   FF            rst       38h
FCE2:   FF            rst       38h
FCE3:   FF            rst       38h
FCE4:   FF            rst       38h
FCE5:   FF            rst       38h
FCE6:   FF            rst       38h
FCE7:   FF            rst       38h
FCE8:   FF            rst       38h
FCE9:   FF            rst       38h
FCEA:   FF            rst       38h
FCEB:   FF            rst       38h
FCEC:   FF            rst       38h
FCED:   FF            rst       38h
FCEE:   FF            rst       38h
FCEF:   FF            rst       38h
FCF0:   FF            rst       38h
FCF1:   FF            rst       38h
FCF2:   FF            rst       38h
FCF3:   FF            rst       38h
FCF4:   FF            rst       38h
FCF5:   FF            rst       38h
FCF6:   FF            rst       38h
FCF7:   FF            rst       38h
FCF8:   FF            rst       38h
FCF9:   FF            rst       38h
FCFA:   FF            rst       38h
FCFB:   FF            rst       38h
FCFC:   FF            rst       38h
FCFD:   FF            rst       38h
FCFE:   FF            rst       38h
FCFF:   FF            rst       38h
FD00:   FF            rst       38h
FD01:   FF            rst       38h
FD02:   FF            rst       38h
FD03:   FF            rst       38h
FD04:   FF            rst       38h
FD05:   FF            rst       38h
FD06:   FF            rst       38h
FD07:   FF            rst       38h
FD08:   FF            rst       38h
FD09:   FF            rst       38h
FD0A:   FF            rst       38h
FD0B:   FF            rst       38h
FD0C:   FF            rst       38h
FD0D:   FF            rst       38h
FD0E:   FF            rst       38h
FD0F:   FF            rst       38h
FD10:   FF            rst       38h
FD11:   FF            rst       38h
FD12:   FF            rst       38h
FD13:   FF            rst       38h
FD14:   FF            rst       38h
FD15:   FF            rst       38h
FD16:   FF            rst       38h
FD17:   FF            rst       38h
FD18:   FF            rst       38h
FD19:   FF            rst       38h
FD1A:   FF            rst       38h
FD1B:   FF            rst       38h
FD1C:   FF            rst       38h
FD1D:   FF            rst       38h
FD1E:   FF            rst       38h
FD1F:   FF            rst       38h
FD20:   FF            rst       38h
FD21:   FF            rst       38h
FD22:   FF            rst       38h
FD23:   FF            rst       38h
FD24:   FF            rst       38h
FD25:   FF            rst       38h
FD26:   FF            rst       38h
FD27:   FF            rst       38h
FD28:   FF            rst       38h
FD29:   FF            rst       38h
FD2A:   FF            rst       38h
FD2B:   FF            rst       38h
FD2C:   FF            rst       38h
FD2D:   FF            rst       38h
FD2E:   FF            rst       38h
FD2F:   FF            rst       38h
FD30:   FF            rst       38h
FD31:   FF            rst       38h
FD32:   FF            rst       38h
FD33:   FF            rst       38h
FD34:   FF            rst       38h
FD35:   FF            rst       38h
FD36:   FF            rst       38h
FD37:   FF            rst       38h
FD38:   FF            rst       38h
FD39:   FF            rst       38h
FD3A:   FF            rst       38h
FD3B:   FF            rst       38h
FD3C:   FF            rst       38h
FD3D:   FF            rst       38h
FD3E:   FF            rst       38h
FD3F:   FF            rst       38h
FD40:   FF            rst       38h
FD41:   FF            rst       38h
FD42:   FF            rst       38h
FD43:   FF            rst       38h
FD44:   FF            rst       38h
FD45:   FF            rst       38h
FD46:   FF            rst       38h
FD47:   FF            rst       38h
FD48:   FF            rst       38h
FD49:   FF            rst       38h
FD4A:   FF            rst       38h
FD4B:   FF            rst       38h
FD4C:   FF            rst       38h
FD4D:   FF            rst       38h
FD4E:   FF            rst       38h
FD4F:   FF            rst       38h
FD50:   FF            rst       38h
FD51:   FF            rst       38h
FD52:   FF            rst       38h
FD53:   FF            rst       38h
FD54:   FF            rst       38h
FD55:   FF            rst       38h
FD56:   FF            rst       38h
FD57:   FF            rst       38h
FD58:   FF            rst       38h
FD59:   FF            rst       38h
FD5A:   FF            rst       38h
FD5B:   FF            rst       38h
FD5C:   FF            rst       38h
FD5D:   FF            rst       38h
FD5E:   FF            rst       38h
FD5F:   FF            rst       38h
FD60:   FF            rst       38h
FD61:   FF            rst       38h
FD62:   FF            rst       38h
FD63:   FF            rst       38h
FD64:   FF            rst       38h
FD65:   FF            rst       38h
FD66:   FF            rst       38h
FD67:   FF            rst       38h
FD68:   FF            rst       38h
FD69:   FF            rst       38h
FD6A:   FF            rst       38h
FD6B:   FF            rst       38h
FD6C:   FF            rst       38h
FD6D:   FF            rst       38h
FD6E:   FF            rst       38h
FD6F:   FF            rst       38h
FD70:   FF            rst       38h
FD71:   FF            rst       38h
FD72:   FF            rst       38h
FD73:   FF            rst       38h
FD74:   FF            rst       38h
FD75:   FF            rst       38h
FD76:   FF            rst       38h
FD77:   FF            rst       38h
FD78:   FF            rst       38h
FD79:   FF            rst       38h
FD7A:   FF            rst       38h
FD7B:   FF            rst       38h
FD7C:   FF            rst       38h
FD7D:   FF            rst       38h
FD7E:   FF            rst       38h
FD7F:   FF            rst       38h
FD80:   FF            rst       38h
FD81:   FF            rst       38h
FD82:   FF            rst       38h
FD83:   FF            rst       38h
FD84:   FF            rst       38h
FD85:   FF            rst       38h
FD86:   FF            rst       38h
FD87:   FF            rst       38h
FD88:   FF            rst       38h
FD89:   FF            rst       38h
FD8A:   FF            rst       38h
FD8B:   FF            rst       38h
FD8C:   FF            rst       38h
FD8D:   FF            rst       38h
FD8E:   FF            rst       38h
FD8F:   FF            rst       38h
FD90:   FF            rst       38h
FD91:   FF            rst       38h
FD92:   FF            rst       38h
FD93:   FF            rst       38h
FD94:   FF            rst       38h
FD95:   FF            rst       38h
FD96:   FF            rst       38h
FD97:   FF            rst       38h
FD98:   FF            rst       38h
FD99:   FF            rst       38h
FD9A:   FF            rst       38h
FD9B:   FF            rst       38h
FD9C:   FF            rst       38h
FD9D:   FF            rst       38h
FD9E:   FF            rst       38h
FD9F:   FF            rst       38h
FDA0:   FF            rst       38h
FDA1:   FF            rst       38h
FDA2:   FF            rst       38h
FDA3:   FF            rst       38h
FDA4:   FF            rst       38h
FDA5:   FF            rst       38h
FDA6:   FF            rst       38h
FDA7:   FF            rst       38h
FDA8:   FF            rst       38h
FDA9:   FF            rst       38h
FDAA:   FF            rst       38h
FDAB:   FF            rst       38h
FDAC:   FF            rst       38h
FDAD:   FF            rst       38h
FDAE:   FF            rst       38h
FDAF:   FF            rst       38h
FDB0:   FF            rst       38h
FDB1:   FF            rst       38h
FDB2:   FF            rst       38h
FDB3:   FF            rst       38h
FDB4:   FF            rst       38h
FDB5:   FF            rst       38h
FDB6:   FF            rst       38h
FDB7:   FF            rst       38h
FDB8:   FF            rst       38h
FDB9:   FF            rst       38h
FDBA:   FF            rst       38h
FDBB:   FF            rst       38h
FDBC:   FF            rst       38h
FDBD:   FF            rst       38h
FDBE:   FF            rst       38h
FDBF:   FF            rst       38h
FDC0:   FF            rst       38h
FDC1:   FF            rst       38h
FDC2:   FF            rst       38h
FDC3:   FF            rst       38h
FDC4:   FF            rst       38h
FDC5:   FF            rst       38h
FDC6:   FF            rst       38h
FDC7:   FF            rst       38h
FDC8:   FF            rst       38h
FDC9:   FF            rst       38h
FDCA:   FF            rst       38h
FDCB:   FF            rst       38h
FDCC:   FF            rst       38h
FDCD:   FF            rst       38h
FDCE:   FF            rst       38h
FDCF:   FF            rst       38h
FDD0:   FF            rst       38h
FDD1:   FF            rst       38h
FDD2:   FF            rst       38h
FDD3:   FF            rst       38h
FDD4:   FF            rst       38h
FDD5:   FF            rst       38h
FDD6:   FF            rst       38h
FDD7:   FF            rst       38h
FDD8:   FF            rst       38h
FDD9:   FF            rst       38h
FDDA:   FF            rst       38h
FDDB:   FF            rst       38h
FDDC:   FF            rst       38h
FDDD:   FF            rst       38h
FDDE:   FF            rst       38h
FDDF:   FF            rst       38h
FDE0:   FF            rst       38h
FDE1:   FF            rst       38h
FDE2:   FF            rst       38h
FDE3:   FF            rst       38h
FDE4:   FF            rst       38h
FDE5:   FF            rst       38h
FDE6:   FF            rst       38h
FDE7:   FF            rst       38h
FDE8:   FF            rst       38h
FDE9:   FF            rst       38h
FDEA:   FF            rst       38h
FDEB:   FF            rst       38h
FDEC:   FF            rst       38h
FDED:   FF            rst       38h
FDEE:   FF            rst       38h
FDEF:   FF            rst       38h
FDF0:   FF            rst       38h
FDF1:   FF            rst       38h
FDF2:   FF            rst       38h
FDF3:   FF            rst       38h
FDF4:   FF            rst       38h
FDF5:   FF            rst       38h
FDF6:   FF            rst       38h
FDF7:   FF            rst       38h
FDF8:   FF            rst       38h
FDF9:   FF            rst       38h
FDFA:   FF            rst       38h
FDFB:   FF            rst       38h
FDFC:   FF            rst       38h
FDFD:   FF            rst       38h
FDFE:   FF            rst       38h
FDFF:   FF            rst       38h
FE00:   FF            rst       38h
FE01:   FF            rst       38h
FE02:   FF            rst       38h
FE03:   FF            rst       38h
FE04:   FF            rst       38h
FE05:   FF            rst       38h
FE06:   FF            rst       38h
FE07:   FF            rst       38h
FE08:   FF            rst       38h
FE09:   FF            rst       38h
FE0A:   FF            rst       38h
FE0B:   FF            rst       38h
FE0C:   FF            rst       38h
FE0D:   FF            rst       38h
FE0E:   FF            rst       38h
FE0F:   FF            rst       38h
FE10:   FF            rst       38h
FE11:   FF            rst       38h
FE12:   FF            rst       38h
FE13:   FF            rst       38h
FE14:   FF            rst       38h
FE15:   FF            rst       38h
FE16:   FF            rst       38h
FE17:   FF            rst       38h
FE18:   FF            rst       38h
FE19:   FF            rst       38h
FE1A:   FF            rst       38h
FE1B:   FF            rst       38h
FE1C:   FF            rst       38h
FE1D:   FF            rst       38h
FE1E:   FF            rst       38h
FE1F:   FF            rst       38h
FE20:   FF            rst       38h
FE21:   FF            rst       38h
FE22:   FF            rst       38h
FE23:   FF            rst       38h
FE24:   FF            rst       38h
FE25:   FF            rst       38h
FE26:   FF            rst       38h
FE27:   FF            rst       38h
FE28:   FF            rst       38h
FE29:   FF            rst       38h
FE2A:   FF            rst       38h
FE2B:   FF            rst       38h
FE2C:   FF            rst       38h
FE2D:   FF            rst       38h
FE2E:   FF            rst       38h
FE2F:   FF            rst       38h
FE30:   FF            rst       38h
FE31:   FF            rst       38h
FE32:   FF            rst       38h
FE33:   FF            rst       38h
FE34:   FF            rst       38h
FE35:   FF            rst       38h
FE36:   FF            rst       38h
FE37:   FF            rst       38h
FE38:   FF            rst       38h
FE39:   FF            rst       38h
FE3A:   FF            rst       38h
FE3B:   FF            rst       38h
FE3C:   FF            rst       38h
FE3D:   FF            rst       38h
FE3E:   FF            rst       38h
FE3F:   FF            rst       38h
FE40:   FF            rst       38h
FE41:   FF            rst       38h
FE42:   FF            rst       38h
FE43:   FF            rst       38h
FE44:   FF            rst       38h
FE45:   FF            rst       38h
FE46:   FF            rst       38h
FE47:   FF            rst       38h
FE48:   FF            rst       38h
FE49:   FF            rst       38h
FE4A:   FF            rst       38h
FE4B:   FF            rst       38h
FE4C:   FF            rst       38h
FE4D:   FF            rst       38h
FE4E:   FF            rst       38h
FE4F:   FF            rst       38h
FE50:   FF            rst       38h
FE51:   FF            rst       38h
FE52:   FF            rst       38h
FE53:   FF            rst       38h
FE54:   FF            rst       38h
FE55:   FF            rst       38h
FE56:   FF            rst       38h
FE57:   FF            rst       38h
FE58:   FF            rst       38h
FE59:   FF            rst       38h
FE5A:   FF            rst       38h
FE5B:   FF            rst       38h
FE5C:   FF            rst       38h
FE5D:   FF            rst       38h
FE5E:   FF            rst       38h
FE5F:   FF            rst       38h
FE60:   FF            rst       38h
FE61:   FF            rst       38h
FE62:   FF            rst       38h
FE63:   FF            rst       38h
FE64:   FF            rst       38h
FE65:   FF            rst       38h
FE66:   FF            rst       38h
FE67:   FF            rst       38h
FE68:   FF            rst       38h
FE69:   FF            rst       38h
FE6A:   FF            rst       38h
FE6B:   FF            rst       38h
FE6C:   FF            rst       38h
FE6D:   FF            rst       38h
FE6E:   FF            rst       38h
FE6F:   FF            rst       38h
FE70:   FF            rst       38h
FE71:   FF            rst       38h
FE72:   FF            rst       38h
FE73:   FF            rst       38h
FE74:   FF            rst       38h
FE75:   FF            rst       38h
FE76:   FF            rst       38h
FE77:   FF            rst       38h
FE78:   FF            rst       38h
FE79:   FF            rst       38h
FE7A:   FF            rst       38h
FE7B:   FF            rst       38h
FE7C:   FF            rst       38h
FE7D:   FF            rst       38h
FE7E:   FF            rst       38h
FE7F:   FF            rst       38h
FE80:   FF            rst       38h
FE81:   FF            rst       38h
FE82:   FF            rst       38h
FE83:   FF            rst       38h
FE84:   FF            rst       38h
FE85:   FF            rst       38h
FE86:   FF            rst       38h
FE87:   FF            rst       38h
FE88:   FF            rst       38h
FE89:   FF            rst       38h
FE8A:   FF            rst       38h
FE8B:   FF            rst       38h
FE8C:   FF            rst       38h
FE8D:   FF            rst       38h
FE8E:   FF            rst       38h
FE8F:   FF            rst       38h
FE90:   FF            rst       38h
FE91:   FF            rst       38h
FE92:   FF            rst       38h
FE93:   FF            rst       38h
FE94:   FF            rst       38h
FE95:   FF            rst       38h
FE96:   FF            rst       38h
FE97:   FF            rst       38h
FE98:   FF            rst       38h
FE99:   FF            rst       38h
FE9A:   FF            rst       38h
FE9B:   FF            rst       38h
FE9C:   FF            rst       38h
FE9D:   FF            rst       38h
FE9E:   FF            rst       38h
FE9F:   FF            rst       38h
FEA0:   FF            rst       38h
FEA1:   FF            rst       38h
FEA2:   FF            rst       38h
FEA3:   FF            rst       38h
FEA4:   FF            rst       38h
FEA5:   FF            rst       38h
FEA6:   FF            rst       38h
FEA7:   FF            rst       38h
FEA8:   FF            rst       38h
FEA9:   FF            rst       38h
FEAA:   FF            rst       38h
FEAB:   FF            rst       38h
FEAC:   FF            rst       38h
FEAD:   FF            rst       38h
FEAE:   FF            rst       38h
FEAF:   FF            rst       38h
FEB0:   FF            rst       38h
FEB1:   FF            rst       38h
FEB2:   FF            rst       38h
FEB3:   FF            rst       38h
FEB4:   FF            rst       38h
FEB5:   FF            rst       38h
FEB6:   FF            rst       38h
FEB7:   FF            rst       38h
FEB8:   FF            rst       38h
FEB9:   FF            rst       38h
FEBA:   FF            rst       38h
FEBB:   FF            rst       38h
FEBC:   FF            rst       38h
FEBD:   FF            rst       38h
FEBE:   FF            rst       38h
FEBF:   FF            rst       38h
FEC0:   FF            rst       38h
FEC1:   FF            rst       38h
FEC2:   FF            rst       38h
FEC3:   FF            rst       38h
FEC4:   FF            rst       38h
FEC5:   FF            rst       38h
FEC6:   FF            rst       38h
FEC7:   FF            rst       38h
FEC8:   FF            rst       38h
FEC9:   FF            rst       38h
FECA:   FF            rst       38h
FECB:   FF            rst       38h
FECC:   FF            rst       38h
FECD:   FF            rst       38h
FECE:   FF            rst       38h
FECF:   FF            rst       38h
FED0:   FF            rst       38h
FED1:   FF            rst       38h
FED2:   FF            rst       38h
FED3:   FF            rst       38h
FED4:   FF            rst       38h
FED5:   FF            rst       38h
FED6:   FF            rst       38h
FED7:   FF            rst       38h
FED8:   FF            rst       38h
FED9:   FF            rst       38h
FEDA:   FF            rst       38h
FEDB:   FF            rst       38h
FEDC:   FF            rst       38h
FEDD:   FF            rst       38h
FEDE:   FF            rst       38h
FEDF:   FF            rst       38h
FEE0:   FF            rst       38h
FEE1:   FF            rst       38h
FEE2:   FF            rst       38h
FEE3:   FF            rst       38h
FEE4:   FF            rst       38h
FEE5:   FF            rst       38h
FEE6:   FF            rst       38h
FEE7:   FF            rst       38h
FEE8:   FF            rst       38h
FEE9:   FF            rst       38h
FEEA:   FF            rst       38h
FEEB:   FF            rst       38h
FEEC:   FF            rst       38h
FEED:   FF            rst       38h
FEEE:   FF            rst       38h
FEEF:   FF            rst       38h
FEF0:   FF            rst       38h
FEF1:   FF            rst       38h
FEF2:   FF            rst       38h
FEF3:   FF            rst       38h
FEF4:   FF            rst       38h
FEF5:   FF            rst       38h
FEF6:   FF            rst       38h
FEF7:   FF            rst       38h
FEF8:   FF            rst       38h
FEF9:   FF            rst       38h
FEFA:   FF            rst       38h
FEFB:   FF            rst       38h
FEFC:   FF            rst       38h
FEFD:   FF            rst       38h
FEFE:   FF            rst       38h
FEFF:   FF            rst       38h
FF00:   FF            rst       38h
FF01:   FF            rst       38h
FF02:   FF            rst       38h
FF03:   FF            rst       38h
FF04:   FF            rst       38h
FF05:   FF            rst       38h
FF06:   FF            rst       38h
FF07:   FF            rst       38h
FF08:   FF            rst       38h
FF09:   FF            rst       38h
FF0A:   FF            rst       38h
FF0B:   FF            rst       38h
FF0C:   FF            rst       38h
FF0D:   FF            rst       38h
FF0E:   FF            rst       38h
FF0F:   FF            rst       38h
FF10:   FF            rst       38h
FF11:   FF            rst       38h
FF12:   FF            rst       38h
FF13:   FF            rst       38h
FF14:   FF            rst       38h
FF15:   FF            rst       38h
FF16:   FF            rst       38h
FF17:   FF            rst       38h
FF18:   FF            rst       38h
FF19:   FF            rst       38h
FF1A:   FF            rst       38h
FF1B:   FF            rst       38h
FF1C:   FF            rst       38h
FF1D:   FF            rst       38h
FF1E:   FF            rst       38h
FF1F:   FF            rst       38h
FF20:   FF            rst       38h
FF21:   FF            rst       38h
FF22:   FF            rst       38h
FF23:   FF            rst       38h
FF24:   FF            rst       38h
FF25:   FF            rst       38h
FF26:   FF            rst       38h
FF27:   FF            rst       38h
FF28:   FF            rst       38h
FF29:   FF            rst       38h
FF2A:   FF            rst       38h
FF2B:   FF            rst       38h
FF2C:   FF            rst       38h
FF2D:   FF            rst       38h
FF2E:   FF            rst       38h
FF2F:   FF            rst       38h
FF30:   FF            rst       38h
FF31:   FF            rst       38h
FF32:   FF            rst       38h
FF33:   FF            rst       38h
FF34:   FF            rst       38h
FF35:   FF            rst       38h
FF36:   FF            rst       38h
FF37:   FF            rst       38h
FF38:   FF            rst       38h
FF39:   FF            rst       38h
FF3A:   FF            rst       38h
FF3B:   FF            rst       38h
FF3C:   FF            rst       38h
FF3D:   FF            rst       38h
FF3E:   FF            rst       38h
FF3F:   FF            rst       38h
FF40:   FF            rst       38h
FF41:   FF            rst       38h
FF42:   FF            rst       38h
FF43:   FF            rst       38h
FF44:   FF            rst       38h
FF45:   FF            rst       38h
FF46:   FF            rst       38h
FF47:   FF            rst       38h
FF48:   FF            rst       38h
FF49:   C3CCF7        jp        label_F7CC
FF4C:   C3B6F6        jp        label_F6B6
FF4F:   C3E0F5        jp        label_F5E0
FF52:   C36BF5        jp        label_F56B
FF55:   C35CF5        jp        label_F55C
FF58:   C37AF5        jp        label_F57A
FF5B:   C3EBF4        jp        label_F4EB
FF5E:   C3D9F1        jp        label_F1D9
                    label_FF61:
FF61:   C303E0        jp        label_E003
                    label_FF64:
FF64:   C341F0        jp        label_F041
FF67:   C358EB        jp        label_EB58
FF6A:   C355EB        jp        label_EB55
FF6D:   C352EB        jp        label_EB52
FF70:   C304EB        jp        label_EB04
FF73:   C3DDEA        jp        label_EADD
FF76:   C38FEA        jp        label_EA8F
FF79:   C38DEA        jp        label_EA8D
FF7C:   C358EA        jp        label_EA58
FF7F:   C33AEA        jp        label_EA3A
FF82:   C321EA        jp        label_EA21
                    label_FF85:
FF85:   C309EA        jp        label_EA09
                    label_FF88:
FF88:   C3BAE9        jp        label_E9BA
FF8B:   C393E9        jp        label_E993
FF8E:   C3B1E8        jp        label_E8B1
FF91:   C307E8        jp        label_E807
FF94:   C3D4E6        jp        label_E6D4
FF97:   C378E7        jp        label_E778
FF9A:   C302E7        jp        label_E702
FF9D:   C322E6        jp        label_E622
FFA0:   C317E6        jp        label_E617
FFA3:   C3FDE5        jp        label_E5FD
FFA6:   C3F2E5        jp        label_E5F2
FFA9:   C351E6        jp        label_E651
FFAC:   C3B8E6        jp        label_E6B8
FFAF:   C3A3E6        jp        label_E6A3
FFB2:   C397E5        jp        label_E597
FFB5:   C3A1E5        jp        label_E5A1
FFB8:   C329E5        jp        label_E529
FFBB:   C3E5E4        jp        label_E4E5
FFBE:   C3CFE4        jp        label_E4CF
FFC1:   C3ACE4        jp        label_E4AC
FFC4:   C377E4        jp        label_E477
FFC7:   C369E3        jp        label_E369
FFCA:   C35EE3        jp        label_E35E
                    label_FFCD:
FFCD:   C35BE3        jp        label_E35B
FFD0:   C358E3        jp        label_E358
FFD3:   C349E3        jp        label_E349
FFD6:   C33EE3        jp        label_E33E
FFD9:   C328E3        jp        label_E328
FFDC:   C312E3        jp        label_E312
FFDF:   C3F5E2        jp        label_E2F5
                    label_FFE2:
FFE2:   C3C0E0        jp        label_E0C0
FFE5:   C3BDE0        jp        label_E0BD
FFE8:   C36FEC        jp        label_EC6F
FFEB:   C380EC        jp        label_EC80
                    label_FFEE:
FFEE:   C38AEC        jp        label_EC8A
                    label_FFF1:
FFF1:   C322EC        jp        label_EC22
                    label_FFF4:
FFF4:   C300EC        jp        label_EC00
FFF7:   C398EC        jp        label_EC98
FFFA:   C340EC        jp        label_EC40
FFFD:   C34BEC        jp        label_EC4B