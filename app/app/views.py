from django.shortcuts import render
from django.http import HttpResponse

def demo(request):
    return HttpResponse(content=b'<h1>bingo<h1>')