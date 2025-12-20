def twosums(n,t):
    for i in range(len(n)):
        for j in range( i+1, len(n)):
            if n[i] + n[j] == t:
                return [i,j]

print(twosums([2,8,9,10,11,10,27,19], 9))
print(twosums([3,8,9],6))