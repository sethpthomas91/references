# Overview

This directory contains useful jq commands.

##
Piping into jq:
```
cat example.json | jq .
```
```
jq . example.json
```

##
Replace values in a nested json object.
```
jq -r --arg ARGUMENT_1 "replacement_value" 'walk( 
        if type == "object" and has("id") then (.id = $ARGUMENT_1) else . end
        )' "example.json" > uiJson.tmp
```

.id should match with your desired key in your json. When you change the value you must change the "id" abd .id variables. This will walk through the entire json and replace that value with whatever you set in replacement_value.

replacement_value: Change to what you want to replace.
"id" and .id: The key's value you want to change.
uiJson.tmp is where you want to write the data to.
example.json: what you are passing into jq.


example useage:
```
jq -r --arg ARGUMENT_1 "replacement_value" 'walk( 
        if type == "object" and has("type") then (.type = $ARGUMENT_1) else . end
        )' "example.json" > uiJson.tmp
```
This command will go through the example.json file and will find the type key and replace its value with replacement_value.
