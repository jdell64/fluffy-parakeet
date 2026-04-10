=== week_10_monday ===
~ story_date = "Mon. Oct. 29, 2001"
# Morning
# The Midterm Warning

A thin, official-looking envelope is waiting on your desk in Homeroom.
Your name is printed in block letters, which somehow makes it worse.

{grades < 50:
    The letter says you are failing.
    Your stomach drops.
- else:
    The report says "satisfactory."
    You exhale like you've been holding your breath all morning.
}

* {grades < 50} [Show your parents]
    ~ parent_trust += 10
    ~ stress += 15
    They're disappointed, but they appreciate the honesty.
    You're grounded from Y!M for two nights.
    -> week_10_monday_after_letter
* {grades < 50} [Sign it yourself and hide it]
    ~ parent_trust -= 15
    ~ midterm_hidden = true
    ~ grit += 5
    Your hand shakes, but the signature looks real enough.
    You bought yourself time, and a fresh layer of anxiety.
    -> week_10_monday_after_letter
* {grades >= 50} [File it and move on]
    You tuck the letter into your folder before anyone asks about it.
    -> week_10_monday_after_letter

= week_10_monday_after_letter
* [Continue to Tuesday]
    -> week_10_tuesday
