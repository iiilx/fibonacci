from django.views.generic.simple import direct_to_template
from django.http import Http404

LARGEST_SEQUENCE = [0,1] 
LARGEST = 1 
LATEST = []

def fib(n): 
    """Calculate the nth fibonacci number""" 
    global LARGEST
    if n > LARGEST: 
        while n > LARGEST: 
            next = LARGEST_SEQUENCE[LARGEST] + LARGEST_SEQUENCE[LARGEST-1] 
            #print 'appending ', next
            LARGEST_SEQUENCE.append(next)   
            LARGEST += 1  
        return LARGEST_SEQUENCE 
    else: 
        return LARGEST_SEQUENCE[0:n+1] 

def latest(request):
    results=[]
    for n in LATEST:
        result = fib(n)
        results.append((n,result))
    return direct_to_template(request, 'latest.html', {'results':results})

def index(request):
    if request.method=="POST":
        try:
            n=int(request.POST.get('n'))
        except:
            return Http404
        result = fib(n)
        if len(LATEST) >=  5:
            LATEST.pop()
        LATEST.insert(0,n)
    else:
        result = None
    return direct_to_template(request, 'base.html', {'result':result})

