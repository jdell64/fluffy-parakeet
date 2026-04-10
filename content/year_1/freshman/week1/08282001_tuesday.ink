=== week_1_tuesday ===
~ story_date = "Tue. Aug. 28, 2001"
# Morning
# Ms. Carter's English class

Ms. Carter drops a summer reading diagnostic on each desk like she's dealing cards in a crooked casino.
The room fills with paper sounds and quiet panic.
You did not read the book.

Ms. Carter: "Pencils down in twenty. Try not to embarrass yourselves."

* [Fake it. Guess your way through.]
    ~ energy -= 1
    {scholastics > 0:
        You reverse-engineer half the questions from context clues and pure audacity.
        ~ grades += 2
        ~ confidence += 1
    - else:
        You bubble in answers like a magic 8-ball with trust issues.
        ~ stress += 3
        ~ grades -= 1
    }
    -> week_1_tuesday_after_diagnostic
* [Put your head down and eat the zero.]
    ~ rep_rebel += 2
    ~ grades -= 3
    ~ stress -= 1
    You go full slacker posture and let the clock do the work.
    -> week_1_tuesday_after_diagnostic

= week_1_tuesday_after_diagnostic
On the way out, you catch Alex in the hall.

{alex_path == "football":
    Alex: "Coach says freshmen can still come watch drills this week."
    Alex says it casually, but you can hear the hope underneath it.
- else:
    Alex: "This place is already doing too much."
}

Lily shoulder-checks past your desk with a color-coded folder held like a weapon.

Lily: "Some of us actually did the assignment. Wild concept, I know."

The rivalry file opens in your head with a loud click.
~ stress += 1

* [Continue to Wednesday]
    -> week_1_wednesday
