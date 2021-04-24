export API_KEY=xJxQw4QdBn0s6dQ6i7g7f_7hJBTEBMm-LfpDw0y2RVLi
export URL=https://api.us-south.language-translator.watson.cloud.ibm.com/instances/fe58dce1-8b19-413a-8530-587f99b94e0a

echo "Supported languages"
curl -X GET --user "apikey:$API_KEY" "$URL/v3/languages?version=2018-05-01"
echo -e "\n"
sleep 2

echo -e "\nIdentify Language: வணக்கம், உலகம்."
curl -X POST --user "apikey:$API_KEY" --header "Content-Type: text/plain" --data "வணக்கம், உலகம்." "$URL/v3/identify?version=2018-05-01"
echo -e "\n"

sleep 2
echo -e "\nTranslate 'All the best' to Tamil"
curl -X POST --user "apikey:$API_KEY" --header "Content-Type: application/json" --data '{"text": ["All the best"], "model_id":"en-ta"}' "$URL/v3/translate?version=2018-05-01"
echo -e "\n"

sleep 2 
echo -e "\nTranslate 'गर्मी' to English"
curl -X POST --user "apikey:$API_KEY" --header "Content-Type: application/json" --data '{"text": ["गर्मी"], "model_id":"hi-en"}' "$URL/v3/translate?version=2018-05-01"


