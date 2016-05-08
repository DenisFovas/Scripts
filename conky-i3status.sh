background no
out_to_console yes
out_to_x no
max_text_width 0
own_window no
update_interval 0.5
total_run_times 0
short_units yes
if_up_strictness address
use_spacer right
override_utf8_locale no
cpu_avg_samples 2
TEXT
,[
#Wifi
#{"full_text":" ","color":"\#00FF00","separator":false,"separator_block_width":6},\
#{"full_text":"[${upspeed wlp2s0}]","color":"\#808080","separator":false,"separator_block_width":6},\
#{"full_text": ": [${upspeed wlp2s0}] ", "color":"\#00FF00", "separator": false, "separator_block_width":6},\

#Finds current volume. May need modified depending on your setup
{"full_text":" ","color":"\#268BD2","separator":false,"separator_block_width":6},\
{"full_text":"${exec amixer -c 0 get Master | grep Mono: | cut -d " " -f6} ","color":"\#808080","separator":false,"separator_block_width":6},\
#{"full_text": ": ${exec amixer -c 0 get Master | grep Mono: | cut -d " " -f6} ", "color":"\#268BD2"},
#Brighness
{"full_text":" ","color":"\#F7FE2E","separator":false,"separator_block_width":6},\
{"full_text":"[${exec xbacklight| awk '{printf("%d\n",$1 + 0.5)}'}%] ","color":"\#808080","separator":false,"separator_block_width":6},\
#{ "full_text": ": ${exec xbacklight| awk '{printf("%d\n",$1 + 0.5)}'}% ", "color":"\#F7FE2E"},
#CPU
#{"full_text":" ","color":"\#8D00FF","separator":false,"separator_block_width":6},\
#{"full_text":"[$cpu%]","color":"\#808080","separator":false,"separator_block_width":6},\
#{"full_text": " :[$cpu%] ", "color":"\#8D00FF", "separator": false, "separator_block_width":6},\
#Battery 
{"full_text":" ","color":"\#FF0000","separator":false,"separator_block_width":6},\
{"full_text":"[${battery_percent BAT1}%]","color":"\#808080","separator":false,"separator_block_width":6},\
#{"full_text": ":[${battery_percent BAT1}%] ","color":"\#dedede"},
#Calender/time
{"full_text":" ","color":"\#2E9AFE","separator":false,"separator_block_width":6},\
{"full_text":"${time %a %b %d}","color":"\#808080","separator":false},\
#{"full_text": " :${time %a %d %b} ${time %H:%M:%S} ","color": "\#2E9AFE", "separator": false},
{"full_text":" ","color":"\#0404B4","separator":false,"separator_block_width":6},\
{"full_text":"${time %H:%M:%S} ","color":"\#808080","separator":false}
]