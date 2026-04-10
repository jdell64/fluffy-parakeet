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
