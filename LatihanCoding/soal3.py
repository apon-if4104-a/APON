class akun:
    def __init__(self,number,amount):
        self.number = number
        self.amount = amount

def validation(num):
    ceker = False
    i = 0
    while (i < len(accounts)):
        if (num == accounts[i].number):
            ceker = True
            break
        else:
            ceker = False
        i += 1    
    
    
    if(ceker):
        return i
    else:
        return 404    
         

a1 = akun(1234,10000)
a2 = akun(2345,20000)
a3 = akun(2346,30000)
a4 = akun(3987,25000)
a5 = akun(5678,40000)

accounts = [a1,a2,a3,a4,a5]

num = int(input("Masukkan Account-Number: "))
valid = validation(num)
print(valid)

if valid == 404:
    print('Error Data Tidak Valid')
else:
    print('Invoice:')
    print(accounts[valid].number)
    print(accounts[valid].amount)