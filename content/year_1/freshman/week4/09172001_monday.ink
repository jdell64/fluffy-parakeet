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
