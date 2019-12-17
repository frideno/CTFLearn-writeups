# I wrote and debugged this code with all the convoluted "int" variable names.
# Was it confusing? Yes. Was debugging hard? Yes.
# Did I spend more time than I should have on this problem? Yes


def f1(x):
    return str(int(x)*n)

def f2(y, z):
    print(y, z)
    t1 = 0
    t2 = 0
    k = 0
    res = ""
    while t1 < len(y) and t2 < len(z):
        if k % n == (n-1) //(n+1):
            res += z[t2]
            t2 += 1
        else:
            res += y[t1]
            t1 += 1
        k += 1
    return res


def f3(x):
    return f1(x[:n]) + x[::-1]

def f4(x):
    return "Eat" + str(len(x)) + x[:n]

def main(x):
    if len(x) == 9:
        if str.isdigit(x[:n]) and str.isdigit(x[len(x)-n+1:]):
                k = f2(f3(x), f4(f3(x)))
                if k == "E10a23t9090t9ae0140":
                    flag = "eaten_" + x
                    print("absolutely EATEN!!! CTFlearn{",flag,"}")
                else:
                    print("thats not the answer. you formatted it fine tho, here's what you got\n>>", k)
        else:
            print("thats not the answer. bad format :(\
            \n(hint: 123abc456 is an example of good format)")
    else:
        print("thats not the answer. bad length :(")

print("what's the answer")
x = input()
n = len(x)//3
main(x)
