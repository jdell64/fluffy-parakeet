=== week_3_wednesday ===
~ story_date = "Wed. Sept. 12, 2001"
# September 12, 2001
# Unity day

The school is half-empty.
The cafeteria lines blur, table borders vanish, and nobody seems interested in the usual pecking order.

~ W3_unity_active = true

At lunch, you see Sarah sitting alone outside on a bench, shoulders tight, eyes fixed on nothing.

* [Sit with Sarah (No Rep check needed due to Unity)]
    ~ sarah_affinity += 10
    You sit down. You don't even talk, just share the quiet.
    -> week_3_thursday
* [Give her space]
    ~ confidence -= 2
    ~ sarah_affinity += 5
    ~ w3_gave_sarah_space = true
    You leave her alone. Sometimes quiet is better.
    -> week_3_thursday
