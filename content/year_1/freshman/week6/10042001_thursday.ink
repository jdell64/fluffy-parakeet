=== week_6_thursday ===
~ story_date = "Thu. Oct. 4, 2001"
# Evening
# Yahoo! Messenger lurk

You're set to Invisible on Y!M, pretending you're not watching status changes.
Then Sarah updates to: "Listening to: Drops of Jupiter - Train."
Your cursor hovers over Buzz.

{confidence > 50:
    You could just send one Buzz and stop overthinking this.
}
{confidence <= 50:
    Your fingers hover over the keyboard while your brain does laps.
}

* {confidence > 50} [Buzz her and say hey]
    ~ sarah_affinity += 5
    ~ energy -= 1
    You ping her and end up in a twenty-minute chat about songs, classes, and nothing.
* {confidence <= 50} [Try to type a message]
    ~ stress += 5
    You type "hey" and delete it five times, then log off in a classic cringe spiral.

- * [Continue to Friday]
    -> week_6_friday
