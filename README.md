
```
sudo docker build -t gpu_corrector .
sudo docker run -i --gpus all gpu-corrector "./translate.sh"
```
 
Instalacja nvidia-docker (powinna działać pod aliasem docker) wymagane zainstalowane CUDA toolkit (testowane na środowisku wydziałowym) + karta Nvidia z obsługą CUDA około 5-6GB.

https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#docker

```
echo "When he have a car? He drive a lot. But he were never apart. Sometime when he drive through the road he met his nephew" | sudo docker run -i --gpus all gpu_corrector "./translate.sh"
```


 TODO: Lekka poprawa tokenizacji, git diff porównywany jest ze ztokenizowanym tekstem.

 Testowane na maszynie wydziałowej.
