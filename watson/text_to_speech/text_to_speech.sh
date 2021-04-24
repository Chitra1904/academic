export API_KEY=fAoTnyqhD4QXCY7LbPjzU7W4vKW6XpWfVK6ZtQN9mhRa
export URL=https://api.us-south.text-to-speech.watson.cloud.ibm.com/instances/7274a6fb-1147-4eeb-8f06-24365df687d7  

echo "Text to speech in English"
curl -X POST -u "apikey:$API_KEY" --header "Content-Type: application/json" --data "{\"text\":\"Hello equinox participants.  Welcome to IBM Cloud and AI\"}" --output vit.mp3  "$URL/v1/synthesize?accept=audio/mp3"

echo -e "\nText to speech in Spanish"
curl -X GET -u "apikey:$API_KEY" --output hola_mundo.wav "$URL/v1/synthesize?accept=audio%2Fwav&text=hola%20mundo&voice=es-ES_LauraV3Voice"

echo -e "\nText to speech in French"
curl -X GET -u "apikey:$API_KEY" --output atb.mp3 "$URL/v1/synthesize?accept=audio/mp3&text=tous%20les%20meilleurs%20participants&voice=fr-FR_NicolasV3Voice"

