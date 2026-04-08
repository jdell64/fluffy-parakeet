=== week_2_sunday ===
# Evening
# Bedroom desk, Sunday planner

Sunday night. Your desk is a mess of spiral notebooks, gel pens, and a printed elective form with your name misspelled.
Outside, a car stereo leaks muffled Sum 41 through an open window down the block.
This is the first real lock-in of freshman year.

* [Sign up for Theater / Art]
    ~ expression += 10
    ~ rep_arts += 5
    You commit to the drama.
    -> week_2_sunday_end
* [Varsity Tryouts]
    ~ varsity += 10
    ~ rep_jock += 5
    You prep your gym bag.
    -> week_2_sunday_end
* [AV Club / Study Hall]
    ~ scholastics += 10
    ~ rep_nerd += 5
    You secure a quiet corner.
    -> week_2_sunday_end
* [Skip the form (Diner Shift)]
    ~ grit += 10
    ~ rep_rebel += 5
    You forge a parent signature to get out early.
    -> week_2_sunday_end

=== week_2_sunday_end ===
* [Continue to Monday]
    -> week_2_monday

=== week_2_monday ===
# Morning
# Ms. Carter's English class

Ms. Carter slaps a packet on every desk like she's dealing cards in a casino you cannot afford.
"First major group project. Fifteen percent of your grade. Due Friday after next."
Someone groans. Someone else laughs too loudly. Nobody looks relaxed.
Your pencil taps once against the desk before you can stop it.

~ stress += 2
* [Continue to Tuesday]
    -> week_2_tuesday_hub

=== week_2_tuesday_hub ===
# Afternoon
# After-school resource loop

{energy <= 0:
    You are running on fumes. The hallway lights feel too bright and your backpack suddenly weighs a hundred pounds.
    You head home before your brain blue-screens.
    * [Continue to Wednesday]
        -> week_2_wednesday
}

The final bell rings and the campus splits into cliques and excuses.
You have {energy} Energy left.

+ {energy > 0} [Work on the project in the library (Cost: 1 Energy)]
    ~ energy -= 1
    ~ grades += 5
    ~ stress += 5
    You camp between dusty encyclopedias and a humming CRT, pretending this is totally fine.
    -> week_2_tuesday_hub
+ {energy > 0} [Socialize in the courtyard (Cost: 1 Energy)]
    ~ energy -= 1
    ~ rep_popular += 2
    You trade jokes near the fountain and laugh at nothing, but everyone notices you were there.
    -> week_2_tuesday_hub
+ {energy > 0} [Zone out behind the bleachers (Cost: 1 Energy)]
    ~ energy -= 1
    ~ stress -= 10
    You stare at the chain-link fence until your pulse drops back to normal.
    -> week_2_tuesday_hub
+ [Head Home]
    You pack it in for the day.
    -> week_2_after_head_home

= week_2_after_head_home
* [Continue to Wednesday]
    -> week_2_wednesday

=== week_2_wednesday ===
# Midday
# History class note risk

History class drags. Sarah drops a folded note near your desk without looking at you.
Ms. Carter starts patrolling the aisles like a security camera with legs.

~ risk_level = 0
-> note_minigame

= note_minigame
Ms. Carter's back is turned. The note is right there.

* [Unfold the first flap (Risk +30)]
    ~ risk_level += 30
    You catch a line about an upcoming party and two initials with a heart around them.
    -> note_minigame
* {risk_level > 0} [Keep reading (Risk +40)]
    ~ risk_level += 40
    {risk_level > 50:
        Ms. Carter turns around at exactly the wrong second.
        "Hand it over. Now."
        She snatches the note, drops it in the trash, and you feel every eye in the room.
        ~ stress += 15
        ~ confidence -= 5
        -> week_2_wednesday_end
    - else:
        You catch a juicy rumor about Marcus before folding it shut again.
        -> note_minigame
    }
+ [Put the note away]
    You play it safe and slide it under your notebook.
    -> week_2_wednesday_end

=== week_2_wednesday_end ===
* [Continue to Thursday]
    -> week_2_thursday

=== week_2_thursday ===
# Evening
# Yahoo! Messenger check-in

Dial-up screeches, then Yahoo! Messenger blinks alive.
This week already feels heavier than Week 1.

* [Chat with Chloe]
    ~ chloe_affinity += 2
    ~ stress -= 2
    Chloe: "freshman year is all stress and weird vibes. you okay?"
    You type: "yeah. mostly. just trying not to wipe out."
    -> week_2_thursday_end
* [Chat with Alex]
    ~ alex_affinity += 2
    ~ stress -= 1
    Alex: "project stuff is cursed. if i vanish, tell people i got eaten by homework."
    You laugh harder than the joke deserves.
    -> week_2_thursday_end

=== week_2_thursday_end ===
* [Continue to Friday]
    -> week_2_friday

=== week_2_friday ===
# Afternoon
# End-of-week reflection

Friday hits like a sigh. You made it through:
- the project pressure
- the after-school energy grind
- and at least one moment where your heart tried to launch out of your chest.

Your choices are already showing:
your stats lean where you leaned, and people are starting to read you before you even say anything.

The buses pull out under a washed-out sunset, and the week closes with your status still half-typed in your head.
* [Start Week 3]
    -> week_3_monday
