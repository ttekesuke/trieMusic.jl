include("main.jl")
# using ASTInterpreter2
############## trie木を作る ##############
pitchSequence = [1,5,3,5,1,5,3,5]
differenceSequence = trie.seqenceToDifferenceSequence(pitchSequence)
binarySequence = trie.sequenceToBinarySequence(differenceSequence)
trie.sequenceToLouds(binarySequence)
# @enter trie.sequenceToLouds(binarySequence)
############## DTW距離を計算する ##############

#計測対象の時系列データセット
sequences = [
# Dict("name" => "kinenju", "data" => [60,62,64,64,64,64,62,62,62,60,60,60,60,60,60,60,60,60,65,65,65,65,69,69,67,66,67,67,67,67,67,67,67,67,69,69,69,67,65,65,67,69,67,67,64,62,60,60,60,62,64,64,64,60,57,57,64,64,62,62,62,62,62,62]),
# Dict("name" => "dokomademoikou", "data" => [60,62,64,64,64,60,59,59,60,62,60,60,60,60,60,60,60,60,65,65,65,65,65,65,67,69,67,67,67,67,67,67,67,67,69,69,69,67,65,65,67,69,67,67,67,64,60,60,60,62,64,64,64,60,59,59,60,62,60,60,60,60,60,60]),
# Dict("name" => "hisou", "data" => [60,62,63,63,63,65,62,62,62,63,60,60,60,60,60,59,60,62,63,62,63,65,67,67,67,67,67,67,67,67,67,67,65,67,68,68,68,68,62,62,63,65,67,67,67,67,60,60,60,62,63,63,63,65,62,62,62,63,60,60,60,60,60,60]),
# Dict("name" => "all C", "data" => [60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,]),
]
trie.calcDtwDistances(sequences)
############## メロディを表示する ##############
trie.plotMelody(sequences)


ary1 = [2, 4]
ary2 = [2, 4, 6]
insert!(unique!(append!(ary1, ary2)), 1 ,-1)