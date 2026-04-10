=== week_9_tuesday ===
~ story_date = "Tue. Oct. 23, 2001"
# Morning
# The Smart but Lazy tax

Ms. Carter finally hands back Week 5 project grades.

{parent_warning_active == true:
    You got a D.
    She writes "See me" in hard red ink and taps the paper twice.
- else:
    You got a B-. Not great, not a disaster.
    ~ stress -= 5
    ~ grades += 2
}

* {parent_warning_active == true} [Try the Charm Offensive]
    ~ confidence += 2
    ~ stress += 5
    You try to talk your way into extra credit. She doesn't buy it.
    -> week_9_tuesday_after_grade
* {parent_warning_active == true} [The Apathy Mask]
    ~ rep_rebel += 2
    ~ parent_trust -= 5
    You shrug and shove it into your backpack like it doesn't matter.
    -> week_9_tuesday_after_grade
* {parent_warning_active != true} [Take the B- and move on]
    You fold the paper and move on with your day.
    -> week_9_tuesday_after_grade

= week_9_tuesday_after_grade
* [Continue to Wednesday]
    -> week_9_wednesday
