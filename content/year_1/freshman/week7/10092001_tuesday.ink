=== week_7_tuesday ===
~ story_date = "Tue. Oct. 9, 2001"
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

- * [Continue to Wednesday]
    -> week_7_wednesday
