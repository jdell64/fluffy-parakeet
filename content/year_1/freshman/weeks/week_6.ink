=== week_6_monday ===
~ story_date = "Mon. Oct. 1, 2001"
# Morning
# Cafeteria entrance

A giant HOMECOMING banner hangs over the cafeteria doors like a warning label.
Alex is already spiraling about pairings, rumors, and who asked who.

Alex: "Okay, real question. What's your plan for the dance?"

* ["I'm going. Definitely."]
    ~ confidence += 2
    ~ rep_popular += 2
    ~ hoco_stance = "going"
    You say it like you've had a plan all week. Alex exhales, relieved by your certainty.
* ["Dances are lame."]
    ~ rep_rebel += 2
    ~ hoco_stance = "rebel"
    You lean into the anti-establishment vibe and pretend none of this matters.
* ["I don't know yet."]
    ~ stress += 2
    ~ hoco_stance = "undecided"
    You shrug it off, but the pressure is officially on.

- * [Continue to Tuesday]
    -> week_6_tuesday

=== week_6_tuesday ===
~ story_date = "Tue. Oct. 2, 2001"
# Afternoon
# Hallway lockers

You spot Chloe by her locker and almost walk past before your brain catches up.
No oversized hoodie today. Her hair is different. Subtle, but not subtle.
She looks up and gives you a nervous half-smile.

Chloe: "So... do you notice anything?"

* ["You look... really nice."]
    ~ chloe_late_bloomer_flag = true
    ~ chloe_affinity += 10
    ~ stress += 2
    You stumble over the words. She blushes, looks away, and the air between you shifts.
* ["Did you get a haircut?"]
    ~ chloe_affinity += 2
    You keep it casual. She smiles, but the moment stays in the just-friends lane.

- * [Continue to Wednesday]
    -> week_6_wednesday

=== week_6_wednesday ===
~ story_date = "Wed. Oct. 3, 2001"
# Lunch
# Survey pressure

A Spirit Committee kid with a clipboard starts table-hopping, collecting dance answers.
Then they stop right in front of you, with Sarah and Marcus close enough to hear everything.

* [Say you're going]
    ~ confidence += 5
    ~ stress += 5
    ~ rep_popular += 2
    You commit out loud. Sarah smiles, and suddenly this feels very real.
* [Make a sarcastic comment]
    ~ rep_rebel += 2
    ~ confidence += 2
    ~ sarah_affinity -= 2
    You clown on the clipboard routine. Derek laughs from down the hall.

- * [Continue to Thursday]
    -> week_6_thursday

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

=== week_6_friday ===
~ story_date = "Fri. Oct. 5, 2001"
# Afternoon
# Spirit Assembly

The whole school is packed into the bleachers while the band blasts through another pep tune.
The principal wraps up announcements and hands off the mic.
Marcus grabs it, walks to center court with a badly painted sign, and asks Sarah to Homecoming in front of everyone.

The gym detonates into cheers.
Sarah looks overwhelmed, covers her face, and nods without saying yes into the microphone.
You stay seated in the bleachers, watching your Phase 1 goal slide out of reach.

* [Start Week 7...]
    -> week_7_monday
