a = 3
b = 4
c = 5

ans = pow(a,2)
ans1 = pow(b,2)
ans2 = pow(c,2)
max = 0
i = 0
arr = [ans,ans1,ans2]
while (i <= 2):
    if (max < arr[i]):
        max = arr[i]
    i = i + 1 

print(max)