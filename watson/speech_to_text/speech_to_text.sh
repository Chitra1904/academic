export API_KEY=wcC59_gcWJhK-HTEGFys2_XMX_F1s9jjC_9-_BcX1-cO
export URL=https://api.us-south.speech-to-text.watson.cloud.ibm.com/instances/4b075e5d-ad6a-4243-9d85-8a476f8130e3

echo "Default translation"
curl -X POST -u "apikey:${API_KEY}" --header "Content-Type: audio/mp3" --data-binary @hello_world.mp3 "${URL}/v1/recognize"
echo -e "\n"

sleep 2

echo -e "\nTranslation that provides beginning and end of each word in the audio, along with four most likely alternatives"
curl -X POST -u "apikey:${API_KEY}" --header "Content-Type: audio/mp3" --data-binary @hello_world.mp3 "${URL}/v1/recognize?timestamps=true&max_alternatives=4"
