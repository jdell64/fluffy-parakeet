=== week_7_monday ===
# Morning
# Monday fallout

The hallway buzz is deafening.
Sarah telling Marcus she "needs to check with her parents" is all anyone can talk about, and everyone knows it's a stall tactic.
Alex catches up with you by the lockers.

Alex: "So what's your move now?"

* [The Wingman]
    ~ rep_popular += 2
    ~ marcus_affinity += 5
    ~ confidence -= 2
    You tell Alex you're happy for Marcus. Safe play, high-status, no sudden explosions.
* [The Saboteur]
    ~ rep_rebel += 5
    ~ marcus_affinity -= 5
    ~ stress += 5
    You start a rumor that Marcus only asked her on a dare.
* [The Confidante]
    ~ chloe_affinity += 5
    You ignore the Marcus drama and ask Chloe what she knows. She says Sarah is overwhelmed by the public spectacle.

* [Continue to Tuesday]
    -> week_7_tuesday

=== week_7_tuesday ===
# Afternoon
# The Tutor Gambit

Ms. Carter announces Marcus is on Academic Probation.
If he fails Thursday's quiz, he's benched and banned from the dance.
After class, Marcus corners you by the trophy case.

Marcus: "I need your History notes. Please."

* [Help him study]
    ~ energy -= 2
    ~ marcus_affinity += 10
    ~ rep_popular += 5
    You spend the evening tutoring him on Y!M. Honorable friend mode.
* [Give him fake notes]
    ~ marcus_sabotaged = true
    ~ rep_rebel += 5
    ~ stress += 10
    You hand him a guide full of bad dates and half-truths. Your heart pounds the whole walk home.
* [Tell him you lost yours]
    ~ stress -= 5
    ~ confidence += 2
    You stay out of it. Not your circus, not your monkeys.

* [Continue to Wednesday]
    -> week_7_wednesday

=== week_7_wednesday ===
# Midday
# The Hail Mary

You get a ten-minute gap between 3rd and 4th period.
Sarah is alone at her locker.
If there's a last clean chance to shoot your shot, this is it.

* {confidence >= 55} [The Direct Ask]
    ~ hoco_stance = "asked_sarah"
    ~ energy -= 1
    ~ stress += 10
    You walk up and ask her to go "as friends" before Marcus gets an answer.
    She looks shocked and says she'll think about it.
* [Slip a note in her locker]
    ~ hoco_stance = "noted_sarah"
    ~ stress += 5
    You fold the note tight and slide it through the locker vents.
    Lower risk, slower burn, no immediate answer.
* [Pivot to Chloe]
    ~ hoco_date = "Chloe"
    ~ chloe_affinity += 10
    ~ stress -= 10
    You abandon the Sarah vortex, find Chloe, and ask.
    She says yes immediately. Relief hits like cold water.

* [Continue to Thursday]
    -> week_7_thursday

=== week_7_thursday ===
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

* [Continue to Friday]
    -> week_7_friday

=== week_7_friday ===
# Afternoon
# The Decision

After-school Pep Rally prep turns the hall into controlled chaos.

{hoco_date == "Chloe":
    You watch the popular drama from the bleachers with Chloe and stop caring about who wins what.
- else:
    {marcus_sabotaged == true:
        Marcus fails the quiz, screams in the hallway, and kicks a locker so hard it dents.
        Sarah tells him she isn't going with him.
        {hoco_stance == "asked_sarah" or hoco_stance == "noted_sarah":
            Sarah walks over, half-smiling: "So, about that note..."
            ~ hoco_date = "Sarah"
            ~ rep_popular += 10
        }
    - else:
        Marcus passes. He and Sarah lock in as the Power Couple.
        {hoco_stance == "asked_sarah" or hoco_stance == "noted_sarah":
            Sarah lets you down gently by the stairwell.
            ~ hoco_date = "Solo"
            ~ confidence -= 5
        }
    }
}

The board is set. Next week is Spirit Week, and it all ends at the dance.

* [Start Week 8...]
    -> week_8_monday
