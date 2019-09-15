from math import sqrt, pow

a = float(input("Masukkan Angka Pertama: "))
b = float(input("Masukkan Angka Kedua: "))
c = float(input("Masukkan Angka Ketiga: "))
teliti = 0.01

def isSamaSisi(a, b, c):
    if (a == b and b == c and c == a):
        return True
    else:
        return False

def isSamaKaki(a, b, c):
    if (a == b):
        if(b != c):
            return True
    elif (b == c):
        if(c != a):
            return True
    elif (a == c):
        if(c != b):
            return True
    else:
        return False
    
        

def isSikuSiku(a, b, c):
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

    if (max == arr[0]):
        res = ans1 + ans2
        if (max == res):
            return True
        else:
            return False
    elif (max == arr[1]):
        res = ans + ans2
        if(max == res):
            return True
        else:
            return False
    elif (max == arr[2]):
        res = ans + ans1
        if (max == res):
            return True
        else:
            return False
    else:
        return False        

print("No.1")
if(a <= 0 or b <= 0 or c <= 0):
    print("Bukan Segitiga")
else:
    bool1 = isSamaSisi(a,b,c)
    bool2 = isSamaKaki(a,b,c)
    bool3 = isSikuSiku(a,b,c)

    if(bool1):
        print("Segitiga Sama Sisi")
    elif (bool2):
        print("Segitiga Sama Kaki")
    elif (bool3):
        print("Segitiga Siku Siku")
    else:
        print("Segitiga Sembarang")


    print("No.2")
    percent = a * 0.01
    percent1 = b * 0.01
    percent2 = c * 0.01

    if(a-b <= 0.01 or b-a <= 0.01):
        a=b
    elif(a-c <= 0.01 or c-a <= 0.01):
        a=c
    elif(b-c <= 0.01 or c-b <= 0.01):
        b=c

    if(isSamaSisi(a,b,c) == True):
        print("Segitiga Sama Sisi")
    elif(isSamaKaki(a,b,c) == True):
        print("Segitiga Sama Kaki")
    elif(isSikuSiku(a,b,c) == True):
        print("Segitiga Siku Siku")
    else:
        print("Segitiga Sembarang")
    
        

    
