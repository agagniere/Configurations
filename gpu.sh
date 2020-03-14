alias log_gpu="nvidia-smi --query-gpu=utilization.gpu,utilization.memory,memory.used,pstate --format=csv,nounits,noheader --filename=gpu.log --loop=2"
