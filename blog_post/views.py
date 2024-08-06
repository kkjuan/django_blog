from django.shortcuts import render
from django.http import HttpResponse
from blog_post.models import Post
from datetime import datetime

# Create your views here.
'''當def func(第一個參數是requests代表djangle會視為view)'''
def index(requests):
    posts = Post.objects.all()
    now =datetime.now()#post.content
#    post_list = list()
#    for count, post in enumerate(posts): #for loop 枚舉
#        post_list.append("<h2>#{}: {} </h2> <br><br>".format(str(count), str(post)))
#        post_list.append("<small> {} </small> <br><br>".format(post.content))
        
#    return HttpResponse(post_list)
    return render(requests,"pages/index.html", locals())

from django.core.exceptions import ObjectDoesNotExist, MultipleObjectsReturned
from django.shortcuts import redirect
def showPost(requests,slug):
    #1. 查詢資料庫
    try:
        post = Post.objects.get(slug=slug)  #中文的話內容要用Ｕnicode %20%AB%??去寫內容
    except ObjectDoesNotExist:
        return redirect('/')
    except MultipleObjectsReturned:
        return redirect('/')
    # except:
    #     return redirect('/')
    
    return render(requests,'pages/post.html',locals())
    #return HttpResponse(slug)

#bKK    
from django.http import JsonResponse
def testjson(requests):
    #QuerySet
    posts = list(Post.objects.all().values())
    return JsonResponse(posts, status=200, safe=False)
#eKK