import torch
a=torch.ones((512,1024),device='cuda')
b=torch.ones(1024,device='cuda')
for i in range(4):
    z=torch.softmax(a+b,dim=-1)
torch.cuda.synchronize()
