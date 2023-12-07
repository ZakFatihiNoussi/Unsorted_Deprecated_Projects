import os
from twilio.rest import Client
from creds import * # a creds.py I made to store api key and auth token, aswell as the phone numbers
import requests as req
from requests.auth import HTTPBasicAuth

account_sid = os.environ['TWILIO_ACCOUNT_SID']
auth_token = os.environ['TWILIO_AUTH_TOKEN']
client = Client(account_sid, auth_token)

message_to_send = 'Message sent.'

message = client.messages.create(from_=sender_number, body=message_to_send, to=client_number)
print(message.sid)


url = 'https://api.twilio.com/2010-04-01/Accounts/' + account_sid_2 +'/Messages.json'
auth = HTTPBasicAuth(account_sid_2, auth_token_2)

data = {'To':client_number,'From':sender_number,'Body':message_to_send}
r = req.post(url, auth=auth, data=data)