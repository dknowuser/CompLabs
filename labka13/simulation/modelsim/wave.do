view wave 
wave clipboard store
wave create -pattern none -portmode input -language vlog -range 3 0 /labka13/x 
wave create -pattern none -portmode output -language vlog /labka13/out 
wave modify -driver freeze -pattern counter -startvalue 0000 -endvalue 1111 -type Range -direction Up -period 50ns -step 1 -repeat forever -range 3 0 -starttime 0ns -endtime 1000ns NewSig:/labka13/x 
{wave export -file E:/study/Labs/Components/labka13/simulation/modelsim/bench -starttime 0 -endtime 1000 -format vlog -designunit labka13} 
WaveCollapseAll -1
wave clipboard restore
