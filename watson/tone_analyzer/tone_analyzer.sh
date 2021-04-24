export API_KEY=eBl9TthzuqcPG7vrS2mZD6Nh29VYffJm54CzUUF8YLtx
export URL=https://api.au-syd.tone-analyzer.watson.cloud.ibm.com/instances/be1652b7-f0e8-4808-936c-3cf988ee672c
export TEXT="Team,%20I%20understand%20that%20Equinox%20is%20a%20challenge%20as%20well%20as%20an%20opportunity.%20%20Do%20your%20very%20best%20here.%20%20Hope%20sessions%20on%20IBM%20Watson%20are%20useful."

echo $TEXT
curl -X GET -u "apikey:$API_KEY" "$URL/v3/tone?version=2017-09-21&text=$TEXT"

echo -e "\n\n"
export TEXT="I%20am%20unhappy%20with%20the%20way%20food%20was%20delivered%20by%20your%20company,%20it%20was%20delivered%20late,%20food%20was%20spoilt%20and%20the%20deliverer%20did%20not%20pick%20up%20the%20calls"
echo $TEXT
curl -X GET -u "apikey:$API_KEY" "$URL/v3/tone?version=2017-09-21&text=$TEXT"


