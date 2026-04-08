=== week_11_monday ===
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

=== week_11_tuesday ===
# Afternoon
# Study Group vs Hangout

You only have so much energy left.
Three options, one evening.

* [The Library (Study Group)]
    ~ energy -= 4
    ~ scholastics += 10
    You spend hours under fluorescent lights. You're exhausted, but the math starts making sense.
* [The Diner (Derek)]
    ~ energy -= 2
    ~ derek_affinity += 5
    ~ grit += 5
    Derek says Midterms are a social construct. You feel cooler, but the panic in your gut gets louder.
* [Go Home and Y!M]
    ~ stress -= 10
    ~ energy += 1
    You play it safe. No gains, but you feel rested.

- * [Continue to Wednesday]
    -> week_11_wednesday

=== week_11_wednesday ===
# Midday
# The Leak

Alex leans in and whispers that someone stole a copy of the Math midterm.
He needs a lookout to distract the janitor while he gets a copy.

* [The Heist (High Risk)]
    {RANDOM(1, 10) > 7:
        ~ suspended = true
        ~ parent_trust -= 30
        You get caught. The janitor wasn't fooled.
        You're officially suspended until Friday.
    - else:
        ~ grades += 15
        ~ rep_rebel += 10
        You pull it off. Alex hands you a crumpled sheet of answers.
        You're a hero in the back row.
    }
* [Ignore it]
    ~ confidence -= 2
    You stay in your seat. Alex thinks you're lame, but you're not in the principal's office.

- * [Continue to Thursday]
    -> week_11_thursday

=== week_11_thursday ===
# Evening
# The Dial-Up Deadlock

You're trying to research for History, but your mom is on the phone again.
The burnout meter is no longer theoretical.

* [Fight for the phone]
    ~ stress += 15
    ~ parent_trust -= 5
    ~ burnout += 10
    You get into a shouting match over the landline.
    You squeeze in 20 minutes of research, and the whole house feels tense.
* [Give up and sleep]
    ~ energy += 3
    ~ grades -= 5
    You crash early and wake up Friday with an "Unfinished Work" penalty hanging over you.

- * [Continue to Friday]
    -> week_11_friday

=== week_11_friday ===
# Afternoon
# The Teacher's Warning

Ms. Carter pulls you aside after class.
"You're smart, but your homework average is killing you. If you don't ace the Midterm, I have to call your parents."

~ under_the_gun = true

Everything feels fast now.
The weekend isn't a break - it's a countdown to Monday morning.

* [Start Midterm Week...]
    -> week_12_monday

=== week_12_monday ===
Week 12 placeholder.
-> END
