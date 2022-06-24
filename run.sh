#! /usr/bin/zsh


 for file in `ls $HOME/detectron2/data`
 do
     if [ "${file: -4}"x = ".mp4"x ];then
         echo "===============>processing $file"
#         python infer.py anchor-based --ckpt-path ../models/pretrain_ab_basic/checkpoint/summe.yml.4.pt --source ../../detectron2/data/$file --save-path ../result/SummeResult_"$file"
         echo python infer.py anchor-based --ckpt-path ../models/pretrain_ab_basic/checkpoint/tvsum.yml.4.pt --source ../../detectron2/data/$file --save-path ../result/1SegResult_"$file"
         python infer.py anchor-based --ckpt-path ../models/pretrain_ab_basic/checkpoint/tvsum.yml.4.pt --source ../../detectron2/data/$file --save-path ../result/1SegResult_"$file"
     fi
 done
