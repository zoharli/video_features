#! /usr/bin/zsh


 for file in `ls ./data`
 do
     if [ "${file: -4}"x = ".mp4"x ];then
        echo "===============>processing $file"
#         python infer.py anchor-based --ckpt-path ../models/pretrain_ab_basic/checkpoint/summe.yml.4.pt --source ../../detectron2/data/$file --save-path ../result/SummeResult_"$file"
        echo python main.py feature_type=vggish video_paths="[./data/$file]" on_extraction=save_numpy
        python main.py feature_type=vggish video_paths="[./data/$file]" on_extraction=save_numpy
     fi
 done
 


