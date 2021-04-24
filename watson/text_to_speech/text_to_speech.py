from ibm_watson import TextToSpeechV1
from ibm_cloud_sdk_core.authenticators import IAMAuthenticator

authenticator = IAMAuthenticator('fAoTnyqhD4QXCY7LbPjzU7W4vKW6XpWfVK6ZtQN9mhRa')
text_to_speech = TextToSpeechV1(
    authenticator=authenticator
)

text_to_speech.set_service_url('https://api.us-south.text-to-speech.watson.cloud.ibm.com/instances/7274a6fb-1147-4eeb-8f06-24365df687d7')

with open('demo.wav','wb') as audio_file:
    audio_file.write(text_to_speech.synthesize('Hello Students',voice='en-US_HenryV3Voice',accept='audio/mp3').get_result().content)
