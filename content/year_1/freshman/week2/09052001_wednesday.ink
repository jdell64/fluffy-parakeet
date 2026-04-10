=== week_2_wednesday ===
~ story_date = "Wed. Sept. 5, 2001"
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
~ story_date = "Wed. Sept. 5, 2001"
* [Continue to Thursday]
    -> week_2_thursday
