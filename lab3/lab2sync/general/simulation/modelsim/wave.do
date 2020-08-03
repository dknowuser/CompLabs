view wave 
wave clipboard store
wave create -pattern none -portmode input -language vlog /sync_general/Clk 
wave create -pattern none -portmode input -language vlog -range 5 0 /sync_general/Din 
wave create -pattern none -portmode input -language vlog /sync_general/Start 
wave create -pattern none -portmode output -language vlog -range 5 0 /sync_general/Dout 
wave create -pattern none -portmode output -language vlog /sync_general/Ready 
wave create -pattern none -portmode output -language vlog /sync_general/Error 
wave modify -driver freeze -pattern counter -startvalue 000000 -endvalue 111111 -type Range -direction Up -period 700ns -step 1 -repeat forever -range 5 0 -starttime 0ms -endtime 1000ms NewSig:/sync_general/Din 
WaveCollapseAll -1
wave clipboard restore
