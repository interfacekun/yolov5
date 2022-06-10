 
 tensorboard --logdir runs\train
 python train.py --cfg models/yolov5s.yaml --data data/coco128.yaml --weights yolov5s.pt --epoch 50 --batch-size 8

 conda install pytorch=1.8.0 torchvision=0.9.0 torchaudio=0.8.0 cudatoolkit=9.0 -c pytorch


# pip install torch==1.10.0+cu113 torchvision==0.11.1+cu113 -f https://download.pytorch.org/whl/cu113/torch_stable.html
 
# conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
# conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/
# conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/pytorch/
# conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/peterjc123/
# conda config --set show_channel_urls yes
tensorboard --logdir runs\train