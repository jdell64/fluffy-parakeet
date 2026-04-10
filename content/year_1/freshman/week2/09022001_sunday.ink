=== week_2_sunday ===
~ story_date = "Sun. Sept. 2, 2001"
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
~ story_date = "Sun. Sept. 2, 2001"
* [Continue to Monday]
    -> week_2_monday
