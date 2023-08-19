import requests
import json
url = "https://prn4zipqj2qrzpl7ymu7zj6ncq0vqkiq.lambda-url.us-east-1.on.aws/"
url2 = "http://localhost:9000/2015-03-31/functions/function/invocations"


que = {
    "body" : {
        "question" : "what is my name"
    }
}

que2 = {
    "body": json.dumps({"question": "what is your name"})
}

que3 = {
    "question": "what is your name"
}

post = requests.post(url2, json=que2)
print(post.text) #recive text only
print(post.status_code)

