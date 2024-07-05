" vi:syntax=vim

" base16-vim (https://github.com/chriskempson/base16-vim)
" by Chris Kempson (http://chriskempson.com)
" Eighties scheme by Chris Kempson (http://chriskempson.com)

" This enables the coresponding base16-shell script to run so that
" :colorscheme works in terminals supported by base16-shell scripts
" User must set this variable in .vimrc
"   let g:base16_shell_path=base16-builder/output/shell/
if !has("gui_running")
  if exists("g:base16_shell_path")
    execute "silent !/bin/sh ".g:base16_shell_path."/base16-eighties.sh"
  endif
endif

" mccurdyc-minimal-theme
" black (Grey11) (background) #1c1c1c ctermfg=234 gui00
" really dark gray (Grey15) (comment) ->#262626 ctermfg=235 gui01
" dark grey (Grey30) (comment) -> #4e4e4e ctermfg=29 gui02
" light grey (Grey89) (foreground) -> #e4e4e4 ctermfg=254 gui06
" white (Grey93) (foreground) -> #eeeeee ctermfg=255 gui07
" red (IndianRed1) (error) -> #ff5f5f ctermfg=203 gui08
" green (SeaGreen3) (good) -> #5fd787 ctermfg=78 gui0B
" orange (Orange1) (warning) -> #ffa500 ctermfg=214 gui09
" blue (alt) ->#2950c5 no direct ctermfg, use ctermfg=33 gui0C

" GUI color definitions
let s:gui00        = "1c1c1c" " #1c1c1c
let g:base16_gui00 = "1c1c1c" " #1c1c1c
let s:gui01        = "262626" " #262626
let g:base16_gui01 = "262626" " #262626
let s:gui02        = "4e4e4e" " #4e4e4e
let g:base16_gui02 = "4e4e4e" " #4e4e4e
let s:gui03        = "747369" " #747369
let g:base16_gui03 = "747369" " #747369
let s:gui04        = "a09f93" " #a09f93
let g:base16_gui04 = "a09f93" " #a09f93
let s:gui05        = "d3d0c8" " #d3d0c8
let g:base16_gui05 = "d3d0c8" " #d3d0c8
let s:gui06        = "e4e4e4" " #e4e4e4
let g:base16_gui06 = "e4e4e4" " #e4e4e4
let s:gui07        = "eeeeee" " #eeeeee
let g:base16_gui07 = "eeeeee" " #eeeeee
let s:gui08        = "ff5f5f" " #ff5f5f
let g:base16_gui08 = "ff5f5f" " #ff5f5f
let s:gui09        = "ffa550" " #ffa500
let g:base16_gui09 = "ffa500" " #ffa500
let s:gui0A        = "ffcc66" " #ffcc66
let g:base16_gui0A = "ffcc66" " #ffcc66
let s:gui0B        = "5fd787" " #5fd787
let g:base16_gui0B = "5fd787" " #5fd787
let s:gui0C        = "2950c5" " #2950c5
let g:base16_gui0C = "2950c5" " #2950c5
let s:gui0D        = "2950c5" " #2950c5
let g:base16_gui0D = "2950c5" " #2950c5
let s:gui0E        = "2950c5" " #2950c5
let g:base16_gui0E = "2950c5" " #2950c5
let s:gui0F        = "ffa500" " #ffa500
let g:base16_gui0F = "ffa500" " #ffa500

" Terminal color definitions
" https://vim.fandom.com/wiki/Xterm256_color_names_for_console_Vim
" Black (0): #000000
" DarkRed (1): #800000
" DarkGreen (2): #008000
" DarkYellow (3): #808000
" DarkBlue (4): #000080
" DarkMagenta (5): #800080
" DarkCyan (6): #008080
" LightGray (7): #C0C0C0
" DarkGray (8): #808080
" Red (9): #FF0000
" Green (10): #00FF00
" Yellow (11): #FFFF00
" Blue (12): #0000FF
" Magenta (13): #FF00FF
" Cyan (14): #00FFFF
" White (15): #FFFFFF
"
" 016_Grey0              ctermfg=16   guifg=#000000  "rgb=0,0,0
" 017_NavyBlue           ctermfg=17   guifg=#00005f  "rgb=0,0,95
" 018_DarkBlue           ctermfg=18   guifg=#000087  "rgb=0,0,135
" 019_Blue3              ctermfg=19   guifg=#0000af  "rgb=0,0,175
" 020_Blue3              ctermfg=20   guifg=#0000d7  "rgb=0,0,215
" 021_Blue1              ctermfg=21   guifg=#0000ff  "rgb=0,0,255
" 022_DarkGreen          ctermfg=22   guifg=#005f00  "rgb=0,95,0
" 023_DeepSkyBlue4       ctermfg=23   guifg=#005f5f  "rgb=0,95,95
" 024_DeepSkyBlue4       ctermfg=24   guifg=#005f87  "rgb=0,95,135
" 025_DeepSkyBlue4       ctermfg=25   guifg=#005faf  "rgb=0,95,175
" 026_DodgerBlue3        ctermfg=26   guifg=#005fd7  "rgb=0,95,215
" 027_DodgerBlue2        ctermfg=27   guifg=#005fff  "rgb=0,95,255
" 028_Green4             ctermfg=28   guifg=#008700  "rgb=0,135,0
" 029_SpringGreen4       ctermfg=29   guifg=#00875f  "rgb=0,135,95
" 030_Turquoise4         ctermfg=30   guifg=#008787  "rgb=0,135,135
" 031_DeepSkyBlue3       ctermfg=31   guifg=#0087af  "rgb=0,135,175
" 032_DeepSkyBlue3       ctermfg=32   guifg=#0087d7  "rgb=0,135,215
" 033_DodgerBlue1        ctermfg=33   guifg=#0087ff  "rgb=0,135,255
" 034_Green3             ctermfg=34   guifg=#00af00  "rgb=0,175,0
" 035_SpringGreen3       ctermfg=35   guifg=#00af5f  "rgb=0,175,95
" 036_DarkCyan           ctermfg=36   guifg=#00af87  "rgb=0,175,135
" 037_LightSeaGreen      ctermfg=37   guifg=#00afaf  "rgb=0,175,175
" 038_DeepSkyBlue2       ctermfg=38   guifg=#00afd7  "rgb=0,175,215
" 039_DeepSkyBlue1       ctermfg=39   guifg=#00afff  "rgb=0,175,255
" 040_Green3             ctermfg=40   guifg=#00d700  "rgb=0,215,0
" 041_SpringGreen3       ctermfg=41   guifg=#00d75f  "rgb=0,215,95
" 042_SpringGreen2       ctermfg=42   guifg=#00d787  "rgb=0,215,135
" 043_Cyan3              ctermfg=43   guifg=#00d7af  "rgb=0,215,175
" 044_DarkTurquoise      ctermfg=44   guifg=#00d7d7  "rgb=0,215,215
" 045_Turquoise2         ctermfg=45   guifg=#00d7ff  "rgb=0,215,255
" 046_Green1             ctermfg=46   guifg=#00ff00  "rgb=0,255,0
" 047_SpringGreen2       ctermfg=47   guifg=#00ff5f  "rgb=0,255,95
" 048_SpringGreen1       ctermfg=48   guifg=#00ff87  "rgb=0,255,135
" 049_MediumSpringGreen  ctermfg=49   guifg=#00ffaf  "rgb=0,255,175
" 050_Cyan2              ctermfg=50   guifg=#00ffd7  "rgb=0,255,215
" 051_Cyan1              ctermfg=51   guifg=#00ffff  "rgb=0,255,255
" 052_DarkRed            ctermfg=52   guifg=#5f0000  "rgb=95,0,0
" 053_DeepPink4          ctermfg=53   guifg=#5f005f  "rgb=95,0,95
" 054_Purple4            ctermfg=54   guifg=#5f0087  "rgb=95,0,135
" 055_Purple4            ctermfg=55   guifg=#5f00af  "rgb=95,0,175
" 056_Purple3            ctermfg=56   guifg=#5f00d7  "rgb=95,0,215
" 057_BlueViolet         ctermfg=57   guifg=#5f00ff  "rgb=95,0,255
" 058_Orange4            ctermfg=58   guifg=#5f5f00  "rgb=95,95,0
" 059_Grey37             ctermfg=59   guifg=#5f5f5f  "rgb=95,95,95
" 060_MediumPurple4      ctermfg=60   guifg=#5f5f87  "rgb=95,95,135
" 061_SlateBlue3         ctermfg=61   guifg=#5f5faf  "rgb=95,95,175
" 062_SlateBlue3         ctermfg=62   guifg=#5f5fd7  "rgb=95,95,215
" 063_RoyalBlue1         ctermfg=63   guifg=#5f5fff  "rgb=95,95,255
" 064_Chartreuse4        ctermfg=64   guifg=#5f8700  "rgb=95,135,0
" 065_DarkSeaGreen4      ctermfg=65   guifg=#5f875f  "rgb=95,135,95
" 066_PaleTurquoise4     ctermfg=66   guifg=#5f8787  "rgb=95,135,135
" 067_SteelBlue          ctermfg=67   guifg=#5f87af  "rgb=95,135,175
" 068_SteelBlue3         ctermfg=68   guifg=#5f87d7  "rgb=95,135,215
" 069_CornflowerBlue     ctermfg=69   guifg=#5f87ff  "rgb=95,135,255
" 070_Chartreuse3        ctermfg=70   guifg=#5faf00  "rgb=95,175,0
" 071_DarkSeaGreen4      ctermfg=71   guifg=#5faf5f  "rgb=95,175,95
" 072_CadetBlue          ctermfg=72   guifg=#5faf87  "rgb=95,175,135
" 073_CadetBlue          ctermfg=73   guifg=#5fafaf  "rgb=95,175,175
" 074_SkyBlue3           ctermfg=74   guifg=#5fafd7  "rgb=95,175,215
" 075_SteelBlue1         ctermfg=75   guifg=#5fafff  "rgb=95,175,255
" 076_Chartreuse3        ctermfg=76   guifg=#5fd700  "rgb=95,215,0
" 077_PaleGreen3         ctermfg=77   guifg=#5fd75f  "rgb=95,215,95
" 078_SeaGreen3          ctermfg=78   guifg=#5fd787  "rgb=95,215,135
" 079_Aquamarine3        ctermfg=79   guifg=#5fd7af  "rgb=95,215,175
" 080_MediumTurquoise    ctermfg=80   guifg=#5fd7d7  "rgb=95,215,215
" 081_SteelBlue1         ctermfg=81   guifg=#5fd7ff  "rgb=95,215,255
" 082_Chartreuse2        ctermfg=82   guifg=#5fff00  "rgb=95,255,0
" 083_SeaGreen2          ctermfg=83   guifg=#5fff5f  "rgb=95,255,95
" 084_SeaGreen1          ctermfg=84   guifg=#5fff87  "rgb=95,255,135
" 085_SeaGreen1          ctermfg=85   guifg=#5fffaf  "rgb=95,255,175
" 086_Aquamarine1        ctermfg=86   guifg=#5fffd7  "rgb=95,255,215
" 087_DarkSlateGray2     ctermfg=87   guifg=#5fffff  "rgb=95,255,255
" 088_DarkRed            ctermfg=88   guifg=#870000  "rgb=135,0,0
" 089_DeepPink4          ctermfg=89   guifg=#87005f  "rgb=135,0,95
" 090_DarkMagenta        ctermfg=90   guifg=#870087  "rgb=135,0,135
" 091_DarkMagenta        ctermfg=91   guifg=#8700af  "rgb=135,0,175
" 092_DarkViolet         ctermfg=92   guifg=#8700d7  "rgb=135,0,215
" 093_Purple             ctermfg=93   guifg=#8700ff  "rgb=135,0,255
" 094_Orange4            ctermfg=94   guifg=#875f00  "rgb=135,95,0
" 095_LightPink4         ctermfg=95   guifg=#875f5f  "rgb=135,95,95
" 096_Plum4              ctermfg=96   guifg=#875f87  "rgb=135,95,135
" 097_MediumPurple3      ctermfg=97   guifg=#875faf  "rgb=135,95,175
" 098_MediumPurple3      ctermfg=98   guifg=#875fd7  "rgb=135,95,215
" 099_SlateBlue1         ctermfg=99   guifg=#875fff  "rgb=135,95,255
" 100_Yellow4            ctermfg=100  guifg=#878700  "rgb=135,135,0
" 101_Wheat4             ctermfg=101  guifg=#87875f  "rgb=135,135,95
" 102_Grey53             ctermfg=102  guifg=#878787  "rgb=135,135,135
" 103_LightSlateGrey     ctermfg=103  guifg=#8787af  "rgb=135,135,175
" 104_MediumPurple       ctermfg=104  guifg=#8787d7  "rgb=135,135,215
" 105_LightSlateBlue     ctermfg=105  guifg=#8787ff  "rgb=135,135,255
" 106_Yellow4            ctermfg=106  guifg=#87af00  "rgb=135,175,0
" 107_DarkOliveGreen3    ctermfg=107  guifg=#87af5f  "rgb=135,175,95
" 108_DarkSeaGreen       ctermfg=108  guifg=#87af87  "rgb=135,175,135
" 109_LightSkyBlue3      ctermfg=109  guifg=#87afaf  "rgb=135,175,175
" 110_LightSkyBlue3      ctermfg=110  guifg=#87afd7  "rgb=135,175,215
" 111_SkyBlue2           ctermfg=111  guifg=#87afff  "rgb=135,175,255
" 112_Chartreuse2        ctermfg=112  guifg=#87d700  "rgb=135,215,0
" 113_DarkOliveGreen3    ctermfg=113  guifg=#87d75f  "rgb=135,215,95
" 114_PaleGreen3         ctermfg=114  guifg=#87d787  "rgb=135,215,135
" 115_DarkSeaGreen3      ctermfg=115  guifg=#87d7af  "rgb=135,215,175
" 116_DarkSlateGray3     ctermfg=116  guifg=#87d7d7  "rgb=135,215,215
" 117_SkyBlue1           ctermfg=117  guifg=#87d7ff  "rgb=135,215,255
" 118_Chartreuse1        ctermfg=118  guifg=#87ff00  "rgb=135,255,0
" 119_LightGreen         ctermfg=119  guifg=#87ff5f  "rgb=135,255,95
" 120_LightGreen         ctermfg=120  guifg=#87ff87  "rgb=135,255,135
" 121_PaleGreen1         ctermfg=121  guifg=#87ffaf  "rgb=135,255,175
" 122_Aquamarine1        ctermfg=122  guifg=#87ffd7  "rgb=135,255,215
" 123_DarkSlateGray1     ctermfg=123  guifg=#87ffff  "rgb=135,255,255
" 124_Red3               ctermfg=124  guifg=#af0000  "rgb=175,0,0
" 125_DeepPink4          ctermfg=125  guifg=#af005f  "rgb=175,0,95
" 126_MediumVioletRed    ctermfg=126  guifg=#af0087  "rgb=175,0,135
" 127_Magenta3           ctermfg=127  guifg=#af00af  "rgb=175,0,175
" 128_DarkViolet         ctermfg=128  guifg=#af00d7  "rgb=175,0,215
" 129_Purple             ctermfg=129  guifg=#af00ff  "rgb=175,0,255
" 130_DarkOrange3        ctermfg=130  guifg=#af5f00  "rgb=175,95,0
" 131_IndianRed          ctermfg=131  guifg=#af5f5f  "rgb=175,95,95
" 132_HotPink3           ctermfg=132  guifg=#af5f87  "rgb=175,95,135
" 133_MediumOrchid3      ctermfg=133  guifg=#af5faf  "rgb=175,95,175
" 134_MediumOrchid       ctermfg=134  guifg=#af5fd7  "rgb=175,95,215
" 135_MediumPurple2      ctermfg=135  guifg=#af5fff  "rgb=175,95,255
" 136_DarkGoldenrod      ctermfg=136  guifg=#af8700  "rgb=175,135,0
" 137_LightSalmon3       ctermfg=137  guifg=#af875f  "rgb=175,135,95
" 138_RosyBrown          ctermfg=138  guifg=#af8787  "rgb=175,135,135
" 139_Grey63             ctermfg=139  guifg=#af87af  "rgb=175,135,175
" 140_MediumPurple2      ctermfg=140  guifg=#af87d7  "rgb=175,135,215
" 141_MediumPurple1      ctermfg=141  guifg=#af87ff  "rgb=175,135,255
" 142_Gold3              ctermfg=142  guifg=#afaf00  "rgb=175,175,0
" 143_DarkKhaki          ctermfg=143  guifg=#afaf5f  "rgb=175,175,95
" 144_NavajoWhite3       ctermfg=144  guifg=#afaf87  "rgb=175,175,135
" 145_Grey69             ctermfg=145  guifg=#afafaf  "rgb=175,175,175
" 146_LightSteelBlue3    ctermfg=146  guifg=#afafd7  "rgb=175,175,215
" 147_LightSteelBlue     ctermfg=147  guifg=#afafff  "rgb=175,175,255
" 148_Yellow3            ctermfg=148  guifg=#afd700  "rgb=175,215,0
" 149_DarkOliveGreen3    ctermfg=149  guifg=#afd75f  "rgb=175,215,95
" 150_DarkSeaGreen3      ctermfg=150  guifg=#afd787  "rgb=175,215,135
" 151_DarkSeaGreen2      ctermfg=151  guifg=#afd7af  "rgb=175,215,175
" 152_LightCyan3         ctermfg=152  guifg=#afd7d7  "rgb=175,215,215
" 153_LightSkyBlue1      ctermfg=153  guifg=#afd7ff  "rgb=175,215,255
" 154_GreenYellow        ctermfg=154  guifg=#afff00  "rgb=175,255,0
" 155_DarkOliveGreen2    ctermfg=155  guifg=#afff5f  "rgb=175,255,95
" 156_PaleGreen1         ctermfg=156  guifg=#afff87  "rgb=175,255,135
" 157_DarkSeaGreen2      ctermfg=157  guifg=#afffaf  "rgb=175,255,175
" 158_DarkSeaGreen1      ctermfg=158  guifg=#afffd7  "rgb=175,255,215
" 159_PaleTurquoise1     ctermfg=159  guifg=#afffff  "rgb=175,255,255
" 160_Red3               ctermfg=160  guifg=#d70000  "rgb=215,0,0
" 161_DeepPink3          ctermfg=161  guifg=#d7005f  "rgb=215,0,95
" 162_DeepPink3          ctermfg=162  guifg=#d70087  "rgb=215,0,135
" 163_Magenta3           ctermfg=163  guifg=#d700af  "rgb=215,0,175
" 164_Magenta3           ctermfg=164  guifg=#d700d7  "rgb=215,0,215
" 165_Magenta2           ctermfg=165  guifg=#d700ff  "rgb=215,0,255
" 166_DarkOrange3        ctermfg=166  guifg=#d75f00  "rgb=215,95,0
" 167_IndianRed          ctermfg=167  guifg=#d75f5f  "rgb=215,95,95
" 168_HotPink3           ctermfg=168  guifg=#d75f87  "rgb=215,95,135
" 169_HotPink2           ctermfg=169  guifg=#d75faf  "rgb=215,95,175
" 170_Orchid             ctermfg=170  guifg=#d75fd7  "rgb=215,95,215
" 171_MediumOrchid1      ctermfg=171  guifg=#d75fff  "rgb=215,95,255
" 172_Orange3            ctermfg=172  guifg=#d78700  "rgb=215,135,0
" 173_LightSalmon3       ctermfg=173  guifg=#d7875f  "rgb=215,135,95
" 174_LightPink3         ctermfg=174  guifg=#d78787  "rgb=215,135,135
" 175_Pink3              ctermfg=175  guifg=#d787af  "rgb=215,135,175
" 176_Plum3              ctermfg=176  guifg=#d787d7  "rgb=215,135,215
" 177_Violet             ctermfg=177  guifg=#d787ff  "rgb=215,135,255
" 178_Gold3              ctermfg=178  guifg=#d7af00  "rgb=215,175,0
" 179_LightGoldenrod3    ctermfg=179  guifg=#d7af5f  "rgb=215,175,95
" 180_Tan                ctermfg=180  guifg=#d7af87  "rgb=215,175,135
" 181_MistyRose3         ctermfg=181  guifg=#d7afaf  "rgb=215,175,175
" 182_Thistle3           ctermfg=182  guifg=#d7afd7  "rgb=215,175,215
" 183_Plum2              ctermfg=183  guifg=#d7afff  "rgb=215,175,255
" 184_Yellow3            ctermfg=184  guifg=#d7d700  "rgb=215,215,0
" 185_Khaki3             ctermfg=185  guifg=#d7d75f  "rgb=215,215,95
" 186_LightGoldenrod2    ctermfg=186  guifg=#d7d787  "rgb=215,215,135
" 187_LightYellow3       ctermfg=187  guifg=#d7d7af  "rgb=215,215,175
" 188_Grey84             ctermfg=188  guifg=#d7d7d7  "rgb=215,215,215
" 189_LightSteelBlue1    ctermfg=189  guifg=#d7d7ff  "rgb=215,215,255
" 190_Yellow2            ctermfg=190  guifg=#d7ff00  "rgb=215,255,0
" 191_DarkOliveGreen1    ctermfg=191  guifg=#d7ff5f  "rgb=215,255,95
" 192_DarkOliveGreen1    ctermfg=192  guifg=#d7ff87  "rgb=215,255,135
" 193_DarkSeaGreen1      ctermfg=193  guifg=#d7ffaf  "rgb=215,255,175
" 194_Honeydew2          ctermfg=194  guifg=#d7ffd7  "rgb=215,255,215
" 195_LightCyan1         ctermfg=195  guifg=#d7ffff  "rgb=215,255,255
" 196_Red1               ctermfg=196  guifg=#ff0000  "rgb=255,0,0
" 197_DeepPink2          ctermfg=197  guifg=#ff005f  "rgb=255,0,95
" 198_DeepPink1          ctermfg=198  guifg=#ff0087  "rgb=255,0,135
" 199_DeepPink1          ctermfg=199  guifg=#ff00af  "rgb=255,0,175
" 200_Magenta2           ctermfg=200  guifg=#ff00d7  "rgb=255,0,215
" 201_Magenta1           ctermfg=201  guifg=#ff00ff  "rgb=255,0,255
" 202_OrangeRed1         ctermfg=202  guifg=#ff5f00  "rgb=255,95,0
" 203_IndianRed1         ctermfg=203  guifg=#ff5f5f  "rgb=255,95,95
" 204_IndianRed1         ctermfg=204  guifg=#ff5f87  "rgb=255,95,135
" 205_HotPink            ctermfg=205  guifg=#ff5faf  "rgb=255,95,175
" 206_HotPink            ctermfg=206  guifg=#ff5fd7  "rgb=255,95,215
" 207_MediumOrchid1      ctermfg=207  guifg=#ff5fff  "rgb=255,95,255
" 208_DarkOrange         ctermfg=208  guifg=#ff8700  "rgb=255,135,0
" 209_Salmon1            ctermfg=209  guifg=#ff875f  "rgb=255,135,95
" 210_LightCoral         ctermfg=210  guifg=#ff8787  "rgb=255,135,135
" 211_PaleVioletRed1     ctermfg=211  guifg=#ff87af  "rgb=255,135,175
" 212_Orchid2            ctermfg=212  guifg=#ff87d7  "rgb=255,135,215
" 213_Orchid1            ctermfg=213  guifg=#ff87ff  "rgb=255,135,255
" 214_Orange1            ctermfg=214  guifg=#ffaf00  "rgb=255,175,0
" 215_SandyBrown         ctermfg=215  guifg=#ffaf5f  "rgb=255,175,95
" 216_LightSalmon1       ctermfg=216  guifg=#ffaf87  "rgb=255,175,135
" 217_LightPink1         ctermfg=217  guifg=#ffafaf  "rgb=255,175,175
" 218_Pink1              ctermfg=218  guifg=#ffafd7  "rgb=255,175,215
" 219_Plum1              ctermfg=219  guifg=#ffafff  "rgb=255,175,255
" 220_Gold1              ctermfg=220  guifg=#ffd700  "rgb=255,215,0
" 221_LightGoldenrod2    ctermfg=221  guifg=#ffd75f  "rgb=255,215,95
" 222_LightGoldenrod2    ctermfg=222  guifg=#ffd787  "rgb=255,215,135
" 223_NavajoWhite1       ctermfg=223  guifg=#ffd7af  "rgb=255,215,175
" 224_MistyRose1         ctermfg=224  guifg=#ffd7d7  "rgb=255,215,215
" 225_Thistle1           ctermfg=225  guifg=#ffd7ff  "rgb=255,215,255
" 226_Yellow1            ctermfg=226  guifg=#ffff00  "rgb=255,255,0
" 227_LightGoldenrod1    ctermfg=227  guifg=#ffff5f  "rgb=255,255,95
" 228_Khaki1             ctermfg=228  guifg=#ffff87  "rgb=255,255,135
" 229_Wheat1             ctermfg=229  guifg=#ffffaf  "rgb=255,255,175
" 230_Cornsilk1          ctermfg=230  guifg=#ffffd7  "rgb=255,255,215
" 231_Grey100            ctermfg=231  guifg=#ffffff  "rgb=255,255,255
" 232_Grey3              ctermfg=232  guifg=#080808  "rgb=8,8,8
" 233_Grey7              ctermfg=233  guifg=#121212  "rgb=18,18,18
" 234_Grey11             ctermfg=234  guifg=#1c1c1c  "rgb=28,28,28
" 235_Grey15             ctermfg=235  guifg=#262626  "rgb=38,38,38
" 236_Grey19             ctermfg=236  guifg=#303030  "rgb=48,48,48
" 237_Grey23             ctermfg=237  guifg=#3a3a3a  "rgb=58,58,58
" 238_Grey27             ctermfg=238  guifg=#444444  "rgb=68,68,68
" 239_Grey30             ctermfg=239  guifg=#4e4e4e  "rgb=78,78,78
" 240_Grey35             ctermfg=240  guifg=#585858  "rgb=88,88,88
" 241_Grey39             ctermfg=241  guifg=#626262  "rgb=98,98,98
" 242_Grey42             ctermfg=242  guifg=#6c6c6c  "rgb=108,108,108
" 243_Grey46             ctermfg=243  guifg=#767676  "rgb=118,118,118
" 244_Grey50             ctermfg=244  guifg=#808080  "rgb=128,128,128
" 245_Grey54             ctermfg=245  guifg=#8a8a8a  "rgb=138,138,138
" 246_Grey58             ctermfg=246  guifg=#949494  "rgb=148,148,148
" 247_Grey62             ctermfg=247  guifg=#9e9e9e  "rgb=158,158,158
" 248_Grey66             ctermfg=248  guifg=#a8a8a8  "rgb=168,168,168
" 249_Grey70             ctermfg=249  guifg=#b2b2b2  "rgb=178,178,178
" 250_Grey74             ctermfg=250  guifg=#bcbcbc  "rgb=188,188,188
" 251_Grey78             ctermfg=251  guifg=#c6c6c6  "rgb=198,198,198
" 252_Grey82             ctermfg=252  guifg=#d0d0d0  "rgb=208,208,208
" 253_Grey85             ctermfg=253  guifg=#dadada  "rgb=218,218,218
" 254_Grey89             ctermfg=254  guifg=#e4e4e4  "rgb=228,228,228
" 255_Grey93             ctermfg=255  guifg=#eeeeee  "rgb=238,238,238

" These are just background and foreground (shades of black and whites)
let s:cterm00        = "00"
let g:base16_cterm00 = "00"
let s:cterm03        = "08"
let g:base16_cterm03 = "08"
let s:cterm05        = "07"
let g:base16_cterm05 = "07"
let s:cterm07        = "15"
let g:base16_cterm07 = "15"
let s:cterm08        = "01"
let g:base16_cterm08 = "01"
let s:cterm0A        = "03"
let g:base16_cterm0A = "03"
let s:cterm0B        = "02"
let g:base16_cterm0B = "02"
let s:cterm0C        = "06"
let g:base16_cterm0C = "06"
let s:cterm0D        = "04"
let g:base16_cterm0D = "04"
let s:cterm0E        = "05"
let g:base16_cterm0E = "05"
if exists("base16colorspace") && base16colorspace == "256"
  let s:cterm01        = "234"
  let g:base16_cterm01 = "234"
  let s:cterm02        = "235"
  let g:base16_cterm02 = "235"
  let s:cterm04        = "29"
  let g:base16_cterm04 = "29"
  let s:cterm06        = "244"
  let g:base16_cterm06 = "244"
  let s:cterm09        = "235"
  let g:base16_cterm09 = "235"
  let s:cterm0F        = "234"
  let g:base16_cterm0F = "234"
else
  let s:cterm01        = "10"
  let g:base16_cterm01 = "10"
  let s:cterm02        = "11"
  let g:base16_cterm02 = "11"
  let s:cterm04        = "12"
  let g:base16_cterm04 = "12"
  let s:cterm06        = "13"
  let g:base16_cterm06 = "13"
  let s:cterm09        = "09"
  let g:base16_cterm09 = "09"
  let s:cterm0F        = "14"
  let g:base16_cterm0F = "14"
endif

" Neovim terminal colours
if has("nvim")
  let g:terminal_color_0 =  "#262626"
  let g:terminal_color_1 =  "#ff5f5f"
  let g:terminal_color_2 =  "#5fd787"
  let g:terminal_color_3 =  "#ffa500"
  let g:terminal_color_4 =  "#2950c5"
  let g:terminal_color_5 =  "#2950c5"
  let g:terminal_color_6 =  "#2950c5"
  let g:terminal_color_7 =  "#eeeeee"
  let g:terminal_color_8 =  "#4e4e4e"
  let g:terminal_color_9 =  "#ff5f5f"
  let g:terminal_color_10 = "#5fd787"
  let g:terminal_color_11 = "#ffa500"
  let g:terminal_color_12 = "#2950c5"
  let g:terminal_color_13 = "#2950c5"
  let g:terminal_color_14 = "#2950c5"
  let g:terminal_color_15 = "#eeeeee"
  let g:terminal_color_background = g:terminal_color_0
  let g:terminal_color_foreground = g:terminal_color_5
  if &background == "light"
    let g:terminal_color_background = g:terminal_color_7
    let g:terminal_color_foreground = g:terminal_color_2
  endif
elseif has("terminal")
  let g:terminal_ansi_colors = [
        \ "#262626",
        \ "#ff5f5f",
        \ "#5fd787",
        \ "#ffa500",
        \ "#2950c5",
        \ "#2950c5",
        \ "#2950c5",
        \ "#eeeeee",
        \ "#4e4e4e",
        \ "#ff5f5f",
        \ "#5fd787",
        \ "#ffa500",
        \ "#2950c5",
        \ "#2950c5",
        \ "#2950c5",
        \ "#eeeeee",
        \ ]
endif

" Theme setup
hi clear
syntax reset
let g:colors_name = "base16-eighties-minimal"

" Highlighting function
" Optional variables are attributes and guisp
function! g:Base16hi(group, guifg, guibg, ctermfg, ctermbg, ...)
  let l:attr = get(a:, 1, "")
  let l:guisp = get(a:, 2, "")

  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if l:attr != ""
    exec "hi " . a:group . " gui=" . l:attr . " cterm=" . l:attr
  endif
  if l:guisp != ""
    exec "hi " . a:group . " guisp=#" . l:guisp
  endif
endfunction


fun <sid>hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  call g:Base16hi(a:group, a:guifg, a:guibg, a:ctermfg, a:ctermbg, a:attr, a:guisp)
endfun

" Vim editor colors
call <sid>hi("Normal",        s:gui05, s:gui00, s:cterm05, s:cterm00, "", "")
call <sid>hi("Special",        s:gui09, s:gui00, s:cterm05, s:cterm09, "", "")
call <sid>hi("Bold",          "", "", "", "", "bold", "")
call <sid>hi("Debug",         s:gui08, "", s:cterm08, "", "", "")
call <sid>hi("Directory",     s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("Error",         s:gui00, s:gui08, s:cterm00, s:cterm08, "", "")
call <sid>hi("ErrorMsg",      s:gui08, s:gui00, s:cterm08, s:cterm00, "", "")
call <sid>hi("Exception",     s:gui08, "", s:cterm08, "", "", "")
call <sid>hi("FoldColumn",    s:gui0C, s:gui01, s:cterm0C, s:cterm01, "", "")
call <sid>hi("Folded",        s:gui03, s:gui01, s:cterm03, s:cterm01, "", "")
call <sid>hi("IncSearch",     s:gui01, s:gui09, s:cterm01, s:cterm09, "none", "")
call <sid>hi("Italic",        "", "", "", "", "none", "")
call <sid>hi("Macro",         s:gui08, "", s:cterm08, "", "", "")
call <sid>hi("MatchParen",    "", s:gui03, "", s:cterm03,  "", "")
call <sid>hi("ModeMsg",       s:gui0B, "", s:cterm0B, "", "", "")
call <sid>hi("MoreMsg",       s:gui0B, "", s:cterm0B, "", "", "")
call <sid>hi("Question",      s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("Search",        s:gui01, s:gui0A, s:cterm01, s:cterm0A,  "", "")
call <sid>hi("Substitute",    s:gui01, s:gui0A, s:cterm01, s:cterm0A, "none", "")
call <sid>hi("SpecialKey",    s:gui03, "", s:cterm03, "", "", "")
call <sid>hi("TooLong",       s:gui08, "", s:cterm08, "", "", "")
call <sid>hi("Underlined",    s:gui08, "", s:cterm08, "", "", "")
call <sid>hi("Visual",        "", s:gui04, "", s:cterm04, "", "")
call <sid>hi("VisualNOS",     s:gui08, "", s:cterm08, "", "", "")
call <sid>hi("WarningMsg",    s:gui08, "", s:cterm08, "", "", "")
call <sid>hi("WildMenu",      s:gui08, s:gui0A, s:cterm08, "", "", "")
call <sid>hi("Title",         s:gui0D, "", s:cterm0D, "", "none", "")
call <sid>hi("Conceal",       s:gui0D, s:gui00, s:cterm0D, s:cterm00, "", "")
call <sid>hi("Cursor",        s:gui00, s:gui05, s:cterm00, s:cterm05, "", "")
call <sid>hi("NonText",       s:gui03, "", s:cterm03, "", "", "")
" call <sid>hi("LineNr",        s:gui03, s:gui01, s:cterm03, s:cterm01, "", "")
" call <sid>hi("SignColumn",    s:gui03, s:gui01, s:cterm03, s:cterm01, "", "")
" remove the sign and line column background
call <sid>hi("LineNr",        s:gui02, "none", s:cterm02, "none", "bold", "")
call <sid>hi("SignColumn",    "none", "none", "none", "none", "bold", "")
call <sid>hi("StatusLine",    s:gui04, s:gui02, s:cterm04, s:cterm02, "none", "")
call <sid>hi("StatusLineNC",  s:gui03, s:gui01, s:cterm03, s:cterm01, "none", "")
call <sid>hi("VertSplit",     s:gui02, s:gui09, s:cterm02, s:cterm09, "none", "")
call <sid>hi("ColorColumn",   "", s:gui01, "", s:cterm01, "none", "")
call <sid>hi("CursorColumn",  "", s:gui01, "", s:cterm01, "none", "")
call <sid>hi("CursorLine",    "", s:gui01, "", s:cterm01, "none", "")
call <sid>hi("CursorLineNr",  s:gui04, s:gui01, s:cterm04, s:cterm01, "", "")
call <sid>hi("QuickFixLine",  "", "none", "", "none", "bold", "")
call <sid>hi("PMenu",         s:gui05, s:gui01, s:cterm05, s:cterm01, "none", "")
call <sid>hi("PMenuSel",      s:gui01, s:gui05, s:cterm01, s:cterm05, "", "")
call <sid>hi("TabLine",       s:gui03, s:gui01, s:cterm03, s:cterm01, "none", "")
call <sid>hi("TabLineFill",   s:gui03, s:gui01, s:cterm03, s:cterm01, "none", "")
call <sid>hi("TabLineSel",    s:gui0B, s:gui01, s:cterm0B, s:cterm01, "none", "")

" Diff highlighting (and git mergetool)
call <sid>hi("DiffAdd",      s:gui00, s:gui0B,  s:cterm00, s:cterm0B, "", "")
call <sid>hi("DiffChange",   s:gui00, s:gui02,  s:cterm00, s:cterm02, "", "")
call <sid>hi("DiffDelete",   s:gui00, s:gui08,  s:cterm00, s:cterm08, "", "")
call <sid>hi("DiffText",     s:gui0A, s:gui02,  s:cterm0A, s:cterm02, "bold", "")
call <sid>hi("DiffAdded",    s:gui0B, s:gui00,  s:cterm0B, s:cterm00, "", "")
call <sid>hi("DiffFile",     s:gui08, s:gui00,  s:cterm08, s:cterm00, "", "")
call <sid>hi("DiffNewFile",  s:gui0B, s:gui00,  s:cterm0B, s:cterm00, "", "")
call <sid>hi("DiffLine",     s:gui0D, s:gui0A,  s:cterm0D, s:cterm0A, "", "")
call <sid>hi("DiffRemoved",  s:gui08, s:gui00,  s:cterm08, s:cterm00, "", "")

" Git highlighting
call <sid>hi("gitcommitOverflow",       s:gui08, "", s:cterm08, "", "", "")
call <sid>hi("gitcommitSummary",        s:gui0B, "", s:cterm0B, "", "", "")
call <sid>hi("gitcommitComment",        s:gui03, "", s:cterm03, "", "", "")
call <sid>hi("gitcommitUntracked",      s:gui03, "", s:cterm03, "", "", "")
call <sid>hi("gitcommitDiscarded",      s:gui03, "", s:cterm03, "", "", "")
call <sid>hi("gitcommitSelected",       s:gui03, "", s:cterm03, "", "", "")
call <sid>hi("gitcommitHeader",         s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("gitcommitSelectedType",   s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("gitcommitUnmergedType",   s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("gitcommitDiscardedType",  s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("gitcommitBranch",         s:gui09, "", s:cterm09, "", "bold", "")
call <sid>hi("gitcommitUntrackedFile",  s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("gitcommitUnmergedFile",   s:gui08, "", s:cterm08, "", "bold", "")
call <sid>hi("gitcommitDiscardedFile",  s:gui08, "", s:cterm08, "", "bold", "")
call <sid>hi("gitcommitSelectedFile",   s:gui0B, "", s:cterm0B, "", "bold", "")

" remove background, make bold and change Changes to be yellow
call <sid>hi("GitGutterAdd",           s:gui0B, "none", s:cterm0B, "none", "bold", "")
call <sid>hi("GitGutterChange",        s:gui0A, "none", s:cterm0A, "none", "bold", "")
call <sid>hi("GitGutterDelete",        s:gui08, "none", s:cterm08, "none", "bold", "")
call <sid>hi("GitGutterChangeDelete",  s:gui0A, "none", s:cterm0A, "none", "bold", "")

" NERDTree highlighting
call <sid>hi("NERDTreeDirSlash",  s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("NERDTreeExecFile",  s:gui05, "", s:cterm05, "", "", "")

" Spelling highlighting
call <sid>hi("SpellBad",     "", "", "", "", "undercurl", s:gui08)
call <sid>hi("SpellLocal",   "", "", "", "", "undercurl", s:gui0C)
call <sid>hi("SpellCap",     "", "", "", "", "undercurl", s:gui0D)
call <sid>hi("SpellRare",    "", "", "", "", "undercurl", s:gui0E)

" https://github.com/dense-analysis/ale#faq-change-signs
call <sid>hi("ALEWarning",      "", "", "", "", "underline", "#ffa500")
call <sid>hi("ALEError",        "", "", "", "", "underline", "#ff5f5f")
call <sid>hi("ALEWarningSign",  s:gui0A, s:gui00, s:cterm0A, s:cterm00, "bold", "")
call <sid>hi("ALEErrorSign",    s:gui08, s:gui00, s:cterm08, s:cterm00, "bold", "")

" https://github.com/folke/trouble.nvim#-colors
call <sid>hi("TroubleSignWarning",  "", "", "", "", "", "#ffa500")
call <sid>hi("TroubleWarning",      "", "", "", "", "underline", "#ffa500")
call <sid>hi("TroubleSignError",    "", "", "", "", "", "#ff5f5f")
call <sid>hi("TroubleError",        "", "", "", "", "underline", "#ff5f5f")

call <sid>hi("DiagnosticWarning",  "", "", "", "", "", "#ffa500")
call <sid>hi("DiagnosticError",    "", "", "", "", "underline", "#ff5f5f")
call <sid>hi("DiagnosticInfo",     "", "", "", "", "underline", "#e4e4e4")
call <sid>hi("DiagnosticHint",     "", "", "", "", "underline", "#e4e4e4")

" https://github.com/mfussenegger/nvim-dap/blob/master/doc/dap.txt
call <sid>hi("DapBreakpoint", s:gui0A, s:gui00, s:cterm0A, s:cterm00, "bold", "")
call <sid>hi("DapStopped",    s:gui08, s:gui00, s:cterm08, s:cterm00, "bold", "")

" https://github.com/rhysd/git-messenger.vim/blob/master/syntax/gitmessengerpopup.vim
call <sid>hi("gitmessengerPopupNormal", s:gui05, s:gui01, s:cterm05, s:cterm01, "none", "")
call <sid>hi("gitmessengerHeader",      s:gui0D, s:gui01, s:cterm0D, s:cterm01, "bold", "")
call <sid>hi("gitmessengerHash",        s:gui0B, s:gui01, s:cterm0B, s:cterm01, "bold", "")
call <sid>hi("gitmessengerHistory",     s:gui08, s:gui01, s:cterm08, s:cterm01, "bold", "")

call <sid>hi("RainbowDelimiterNormal", s:gui02, "", s:cterm04, "", "", "")
call <sid>hi("RainbowDelimiterRed", s:gui08, "", s:cterm08, "", "", "")
call <sid>hi("RainbowDelimiterOrange", s:gui09, "", s:cterm09, "", "", "")

" Remove functions
delf <sid>hi

" Remove color variables
unlet s:gui00 s:gui01 s:gui02 s:gui03  s:gui04  s:gui05  s:gui06  s:gui07  s:gui08  s:gui09 s:gui0A  s:gui0B  s:gui0C  s:gui0D  s:gui0E  s:gui0F
unlet s:cterm00 s:cterm01 s:cterm02 s:cterm03 s:cterm04 s:cterm05 s:cterm06 s:cterm07 s:cterm08 s:cterm09 s:cterm0A s:cterm0B s:cterm0C s:cterm0D s:cterm0E s:cterm0F
