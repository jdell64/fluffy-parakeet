=== week_2_tuesday_hub ===
~ story_date = "Tue. Sept. 4, 2001"
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
