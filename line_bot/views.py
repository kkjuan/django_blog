from django.shortcuts import render

#bKK
# Create your views here.
from django.http import HttpResponse, HttpResponseBadRequest, HttpResponseForbidden, JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.conf import settings
# 引入 linebot SDK
from linebot import LineBotApi, WebhookParser
from linebot.exceptions import InvalidSignatureError, LineBotApiError
from linebot.models import MessageEvent, TextSendMessage, TextMessage


# 建立 linebot classs 進行連線
line_bot_api = LineBotApi(settings.LINE_CHANNEL_ACCESS_TOKEN)
parser = WebhookParser(settings.LINE_CHANNEL_SECRET)

#bKK

# Create your views here.

@csrf_exempt
def callback(request):
    if (request.method == "POST"):
        signature = request.META['HTTP_X_LINE_SIGNATURE']
        body = request.body.decode('utf-8')


        # 嘗試解密event
        try:
            events = parser.parse(body, signature)
        except InvalidSignatureError:
            return HttpResponseForbidden()
        except LineBotApiError:
            return HttpResponseBadRequest()
       
        for event in events:
            if isinstance(event, MessageEvent):


                if isinstance(event.message, TextMessage):
                    res_text = event.message.text
                    if(res_text == '123'):
                        line_bot_api.reply_message(event.reply_token, TextSendMessage(text = '456'))
                    else:
                        line_bot_api.reply_message(event.reply_token, TextSendMessage(text = res_text))
       


        return HttpResponse()
    else:
        return HttpResponseBadRequest()

#eKK