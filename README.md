
```
sudo docker build -t gpu_corrector .
sudo docker run -i --gpus all gpu-corrector "./translate.sh"
```
```
echo "When he have a car? He drive a lot. But he were never apart. Sometime when he drive through the road he met his nephew" | sudo docker run -i --gpus all gpu_corrector "./translate.sh"
```
 
Installation of the nvidia-docker package (it should work under "docker" alias) requires CUDA toolkit. The container was tested and run on Linux Ubuntu 20.04 with installed CUDA Toolkit 11.3 and 19GB GPU.

https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#docker

