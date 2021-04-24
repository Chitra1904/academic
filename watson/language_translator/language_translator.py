import json
from ibm_watson import LanguageTranslatorV3
from ibm_cloud_sdk_core.authenticators import IAMAuthenticator

# Set some variables
api_key = 'xJxQw4QdBn0s6dQ6i7g7f_7hJBTEBMm-LfpDw0y2RVLi'
api_url = 'https://api.us-south.language-translator.watson.cloud.ibm.com/instances/fe58dce1-8b19-413a-8530-587f99b94e0a'
model_id = 'en-it'
text_to_translate = 'All the very best for the Hackathon'

# Prepare the Authenticator
authenticator = IAMAuthenticator(api_key)
language_translator = LanguageTranslatorV3(
    version='2018-05-01',
    authenticator=authenticator
)

language_translator.set_service_url(api_url )

# Translate
translation = language_translator.translate(
    text=text_to_translate,
    model_id=model_id).get_result()

# Print results
print(json.dumps(translation, indent=2, ensure_ascii=False))
dic=json.loads(json.dumps(translation, indent=2, ensure_ascii=False))
str=""
while bool(dic.get('translations')):
        str = dic.get('translations').pop().get('translation')+str[:]
print(str)
