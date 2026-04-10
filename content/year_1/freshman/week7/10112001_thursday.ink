=== week_7_thursday ===
~ story_date = "Thu. Oct. 11, 2001"
# Evening
# Y!M interrogation

{parent_warning_active == true:
    You're sneaking online past house rules again.
    ~ parent_trust -= 5
}

Alex pings you:
"Marcus is freaking out about the quiz tomorrow."

* [Buzz Sarah to check the vibe]
    ~ sarah_affinity += 5
    You test the waters. She's Away, then replies with a smiley face a minute later.
* [Buzz Chloe about outfit plans]
    ~ chloe_affinity += 5
    {hoco_date == "Chloe":
        You talk matching thrift-store outfits and shoes that won't kill your feet.
    - else:
        She says she's probably going solo and shrugs it off with "lol whatever."
    }

- * [Continue to Friday]
    -> week_7_friday
