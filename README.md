
sudo docker build -t gpu_corrector .
sudo docker run -i --gpus all gpu-corrector "./translate.sh"
 
Instalacja nvidia-docker (powinna działać pod aliasem docker):

https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#docker


 echo "The eggs will take at least 48 hours to hatch and another couple of days for the larvae to become free-swimming ( depending upon temperature and species ) . It is best not to disturb the tank during this time . If the eggs and fry are light sensitive , shining a light into the tank to check on them may cause harm ." > example/test.i
 

 echo "When he have a car? He drive a lot. But he were never apart. Sometime when he drive through the road he met his nephew?. I never traveled internationally. I might next year, though. I really enjoyed to be there yesterday. If you want to be successful, you need to believe in you. She’s really selfish. She only cares about her. They’ve been married during ten years. Is important to be polite and respectful. I wish I have more time to finish the proposal. I work here since 2010. I’ve been studied a lot lately. The TV is too loud? Okay, I turn it down. When I was a kid I used to playing sports with my friends. Waking up early was hard at first, but now I’m used to do it. This office isn’t as big than the other office. They didn’t think that the house was enough big. I had to think about the problem for a while, but I finally figured out it. I got here late because the traffic. They’re looking forward to go on vacation next year. We need to analyze more deeply this problem. If we hire more people, we wouldn’t be so busy. Today we discussed about potential strategies. This will allow us to concentrate on our business and don’t worry about our IT infrastructure. They gave him more responsibilities due to he is handling his current responsibilities very well." | sudo docker run -i --gpus all gpu_corrector "./translate.sh"


 TODO: Lekka poprawa tokenizacji, git diff porównywany jest ze stokenizowanym tekstem.