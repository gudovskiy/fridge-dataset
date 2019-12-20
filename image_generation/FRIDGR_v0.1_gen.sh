# debug
CUDA_VISIBLE_DEVICES=0, blender --background --python fridgr_render_images.py -- --num_images 20 --start_idx 0       --use_gpu 1 --split debug --output_image_dir /home/demo/data/FRIDGR_v0.1/images/debug --output_scene_dir /home/demo/data/FRIDGR_v0.1/scenes/debug --output_scene_file /home/demo/data/FRIDGR_v0.1/scenes/FRIDGR_debug_scenes0.json 

CUDA_VISIBLE_DEVICES=1, blender --background --python fridgr_render_images.py -- --num_images 20 --start_idx 20      --use_gpu 1 --split debug --output_image_dir /home/demo/data/FRIDGR_v0.1/images/debug --output_scene_dir /home/demo/data/FRIDGR_v0.1/scenes/debug --output_scene_file /home/demo/data/FRIDGR_v0.1/scenes/FRIDGR_debug_scenes1.json 

CUDA_VISIBLE_DEVICES=2, blender --background --python fridgr_render_images.py -- --num_images 20 --start_idx 40       --use_gpu 1 --split debug --output_image_dir /home/demo/data/FRIDGR_v0.1/images/debug --output_scene_dir /home/demo/data/FRIDGR_v0.1/scenes/debug --output_scene_file /home/demo/data/FRIDGR_v0.1/scenes/FRIDGR_debug_scenes2.json 

CUDA_VISIBLE_DEVICES=3, blender --background --python fridgr_render_images.py -- --num_images 20 --start_idx 60       --use_gpu 1 --split debug --output_image_dir /home/demo/data/FRIDGR_v0.1/images/debug --output_scene_dir /home/demo/data/FRIDGR_v0.1/scenes/debug --output_scene_file /home/demo/data/FRIDGR_v0.1/scenes/FRIDGR_debug_scenes3.json 

CUDA_VISIBLE_DEVICES=4, blender --background --python fridgr_render_images.py -- --num_images 20 --start_idx 80       --use_gpu 1 --split debug --output_image_dir /home/demo/data/FRIDGR_v0.1/images/debug --output_scene_dir /home/demo/data/FRIDGR_v0.1/scenes/debug --output_scene_file /home/demo/data/FRIDGR_v0.1/scenes/FRIDGR_debug_scenes4.json 

# test
CUDA_VISIBLE_DEVICES=0, blender --background --python fridgr_render_images.py -- --num_images 10000 --start_idx 0     --use_gpu 1 --split test  --output_image_dir /home/demo/data/FRIDGR_v0.1/images/test --output_scene_dir /home/demo/data/FRIDGR_v0.1/scenes/test  --output_scene_file /home/demo/data/FRIDGR_v0.1/scenes/FRIDGR_test_scenes.json

# val
CUDA_VISIBLE_DEVICES=1, blender --background --python fridgr_render_images.py -- --num_images 10000 --start_idx 0     --use_gpu 1 --split val   --output_image_dir /home/demo/data/FRIDGR_v0.1/images/val --output_scene_dir /home/demo/data/FRIDGR_v0.1/scenes/val   --output_scene_file /home/demo/data/FRIDGR_v0.1/scenes/FRIDGR_val_scenes.json

# train
CUDA_VISIBLE_DEVICES=2, blender --background --python fridgr_render_images.py -- --num_images 10000 --start_idx 0     --use_gpu 1 --split train --output_image_dir /home/demo/data/FRIDGR_v0.1/images/train --output_scene_dir /home/demo/data/FRIDGR_v0.1/scenes/train --output_scene_file /home/demo/data/FRIDGR_v0.1/scenes/FRIDGR_train_scenes0.json

CUDA_VISIBLE_DEVICES=3, blender --background --python fridgr_render_images.py -- --num_images 10000 --start_idx 10000 --use_gpu 1 --split train --output_image_dir /home/demo/data/FRIDGR_v0.1/images/train --output_scene_dir /home/demo/data/FRIDGR_v0.1/scenes/train --output_scene_file /home/demo/data/FRIDGR_v0.1/scenes/FRIDGR_train_scenes1.json

CUDA_VISIBLE_DEVICES=4, blender --background --python fridgr_render_images.py -- --num_images 10000 --start_idx 20000 --use_gpu 1 --split train --output_image_dir /home/demo/data/FRIDGR_v0.1/images/train --output_scene_dir /home/demo/data/FRIDGR_v0.1/scenes/train --output_scene_file /home/demo/data/FRIDGR_v0.1/scenes/FRIDGR_train_scenes2.json

CUDA_VISIBLE_DEVICES=5, blender --background --python fridgr_render_images.py -- --num_images 10000 --start_idx 30000 --use_gpu 1 --split train --output_image_dir /home/demo/data/FRIDGR_v0.1/images/train --output_scene_dir /home/demo/data/FRIDGR_v0.1/scenes/train --output_scene_file /home/demo/data/FRIDGR_v0.1/scenes/FRIDGR_train_scenes3.json

CUDA_VISIBLE_DEVICES=6, blender --background --python fridgr_render_images.py -- --num_images 10000 --start_idx 40000 --use_gpu 1 --split train --output_image_dir /home/demo/data/FRIDGR_v0.1/images/train --output_scene_dir /home/demo/data/FRIDGR_v0.1/scenes/train --output_scene_file /home/demo/data/FRIDGR_v0.1/scenes/FRIDGR_train_scenes4.json

CUDA_VISIBLE_DEVICES=7, blender --background --python fridgr_render_images.py -- --num_images 10000 --start_idx 50000 --use_gpu 1 --split train --output_image_dir /home/demo/data/FRIDGR_v0.1/images/train --output_scene_dir /home/demo/data/FRIDGR_v0.1/scenes/train --output_scene_file /home/demo/data/FRIDGR_v0.1/scenes/FRIDGR_train_scenes5.json


