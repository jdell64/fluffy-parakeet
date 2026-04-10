=== week_11_monday ===
~ story_date = "Mon. Nov. 5, 2001"
# Morning
# The Forecast

It's freezing. The radiator clanks like it wants out of the wall.
Lily is handing out color-coded study guides before first period.
She stops at your desk and offers one without smiling.

* [Accept the Guide]
    ~ scholastics += 5
    ~ confidence -= 2
    ~ stress += 2
    You take it. It feels heavy, like an admission of defeat.
* ["I'm good, I'll wing it."]
    ~ confidence += 5
    ~ rep_rebel += 2
    You decline with a smirk. Lily looks at you like you're already dead.

- * [Continue to Tuesday]
    -> week_11_tuesday
