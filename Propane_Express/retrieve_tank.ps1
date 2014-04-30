for($i=1;$i -le 60;$i++){
(new-object System.Net.WebClient).DownloadFile("
http://translate.google.com/translate_tts?tl=es&q=" + $i ,"C:\Users\Jon\Downloads\Propane_Express\New\Spanish" + $i + ".mp3")}

for($i=1;$i -le 61;$i++){
(new-object System.Net.WebClient).DownloadFile("
http://translate.google.com/translate_tts?tl=en&q=%22please%20place%20propane%20tank%20in%20to%20bay%20" + $i,"C:\Users\Jon\Downloads\Propane_Express\Place_Tank_Please\placeTank" + $i + ".mp3")}

for($i=1;$i -le 61;$i++){
(new-object System.Net.WebClient).DownloadFile("
http://translate.google.com/translate_tts?tl=en&q=%22please%20close%20door%20
","C:\Users\Jon\Downloads\Propane_Express\Close_door\closeDoor" + $i + ".mp3")}

for($i=1;$i -le 60;$i++){
(new-object System.Net.WebClient).DownloadFile("
http://translate.google.com/translate_tts?tl=en&q=%22close%20door%20
" "C:\Users\Jon\Downloads\Propane_Express\Please_close_door\pleaseCloseDoor" + $i + ".mp3")}

por favor retiele el tanque propano del compartimiento

por favor ponga el tanque propano en compartimiento




