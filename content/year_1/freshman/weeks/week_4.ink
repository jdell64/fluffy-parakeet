=== week_4_monday ===
~ story_date = "Mon. Sept. 17, 2001"
# Morning
# Hallway - Patriotism and pins

Lockers clang shut in uneven rhythm while a Student Council table appears near the front office doors.
There are flag ribbons, safety pins, and a handwritten sign about unity.
Sarah catches your eye and holds one up.

Sarah: "Want one for your backpack?"

* [Take one and pin it on]
    ~ sarah_affinity += 5
    ~ rep_popular += 5
    ~ rep_rebel -= 2
    You pin it to the zipper pull and nod like this is easy.
* [Politely decline]
    ~ grit += 2
    ~ rep_popular -= 2
    You keep walking. It feels performative to you.

- * [Continue to Tuesday]
    -> week_4_tuesday

=== week_4_tuesday ===
~ story_date = "Tue. Sept. 18, 2001"
# Afternoon
# The Lighter (Risk Intro)

The PA crackles: random locker searches, effective immediately.
Rows of students go quiet. Keys jingle. Sneakers squeak on waxed tile.
At the locker next to yours, Derek goes pale.

Derek: "Yo. Hold this for two minutes. Please."
He tries to slide a Zippo and a crushed cigarette pack into your open backpack before admin reaches your row.

* [Take the hit. Hide it for him.]
    ~ rep_rebel += 10
    ~ derek_affinity += 10
    ~ stress += 15
    You shove everything under your gym clothes. The admin passes. Your heart hammers anyway.
* [Refuse. Push it back.]
    ~ derek_affinity -= 10
    ~ rep_rebel -= 5
    Derek curses, stuffs it back into his own bag, and gets pulled into the principal's office before last bell.

- * [Continue to Wednesday]
    -> week_4_wednesday

=== week_4_wednesday ===
~ story_date = "Wed. Sept. 19, 2001"
# Morning
# Group Project pressure

Ms. Carter calls for "normal structure" and reassigns everyone to project mode.
Lily is your partner and she is running on pure stress.
She shoves a color-coded outline toward you.

Lily: "If your margins are wrong, this whole thing looks amateur."

* [Snap at her to chill out]
    ~ confidence += 2
    ~ stress += 5
    ~ rep_nerd -= 2
    You tell her the outline doesn't matter right now. She glares like you kicked her planner.
* [Submit to the grind]
    ~ grades += 5
    ~ energy -= 1
    You keep your head down and do the busywork line by line.

- * [Continue to Thursday]
    -> week_4_thursday

=== week_4_thursday ===
~ story_date = "Thu. Sept. 20, 2001"
# Evening
# The landline conflict

You get home ready to check Yahoo! Messenger, but the landline is busy.
Your mom is on a long-distance call with relatives, pacing in the kitchen.
No dial tone means no internet.
By the time she hangs up, you're past your screen-time rules.

* [Sneak online anyway (High Risk)]
    ~ parent_trust -= 10
    ~ chloe_affinity += 5
    ~ stress += 5
    You slip online just long enough to send one message before your mom catches you.
    Grounded for the night.
* [Give up and go to sleep]
    ~ energy += 2
    ~ chloe_affinity -= 5
    You turn the monitor off and crash early.
    In the morning, Chloe's offline message is short and annoyed.

- * [Continue to Friday]
    -> week_4_friday

=== week_4_friday ===
~ story_date = "Fri. Sept. 21, 2001"
# Afternoon
# Hallway reset

The weekend arrives, but it doesn't feel lighter.
You try to crack a joke near Sarah and Marcus to break the tension.
It lands terribly. Nobody laughs. Someone coughs to fill the silence.

~ confidence -= 2

By last period, the hallway map is back in place:
Preps by the office, athletes near the gym, rebels by the side exit, everyone else orbiting the middle.
Everything is normal again, just sharper.

* [End of September. Start Week 5...]
    -> week_5_monday
