=== week_3_friday ===
~ story_date = "Fri. Sept. 14, 2001"
# Friday night
# Candlelight vigil

The football game is canceled.
Instead, everyone gathers on the field with candles and quiet voices.
You stand on the grass and pick where to stand as the wind pushes smoke and wax into the night.

* [Stand with Sarah and the Preps]
    ~ rep_popular += 10
    ~ sarah_affinity += 5
    -> week_3_friday_end
* [Stand with Chloe]
    ~ chloe_affinity += 10
    ~ rep_nerd += 5
    -> week_3_friday_end
* [Stand with Derek by the bleachers]
    ~ rep_rebel += 10
    ~ derek_affinity += 5
    -> week_3_friday_end
* [Stand with Marcus and the team]
    ~ rep_jock += 10
    ~ marcus_affinity += 5
    -> week_3_friday_end

= week_3_friday_end
The lights blur, the field fades, and the week closes in silence.
The Freshman feeling is dead.
* [Start Week 4...]
    -> week_4_monday
