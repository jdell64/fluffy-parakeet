=== week_10_monday ===
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

=== week_10_tuesday ===
# Afternoon
# Costume Politics

Everyone is arguing about Halloween plans between classes.
Chloe catches you by your locker and asks if you want to do a duo costume.

* [Say yes to Chloe]
    ~ chloe_affinity += 10
    ~ confidence += 5
    {chloe_late_bloomer_flag:
        She smiles, and for a second, it's not just a dorky costume.
    - else:
        She high-fives you. The dream team is back.
    }
* [The "Solo" Cool]
    ~ rep_rebel += 5
    ~ confidence += 2
    You say you're going as something detached and edgy.

* [Continue to Wednesday]
    -> week_10_wednesday

=== week_10_wednesday ===
# Evening
# HALLOWEEN

It's Halloween night, 2001.
Two invitations are on the table, and both feel like a test.

* [The School Party (The Safe Path)]
    ~ rep_popular += 5
    ~ stress -= 10
    You see Sarah there. It's boring, but you don't get in trouble.
* [The Woods Party (The Rebel Path)]
    ~ rep_rebel += 10
    ~ derek_affinity += 10
    ~ parent_trust -= 10
    You're standing by a fire in the cold, checking your watch for curfew every five minutes.
* [Trick-or-Treat with Alex (The Nostalgia Path)]
    ~ alex_affinity += 10
    ~ energy += 5
    You're too old for this and everyone knows it, but free candy beats dignity.

* [Continue to Thursday]
    -> week_10_thursday

=== week_10_thursday ===
# Morning
# The Sugar Crash

Everyone in first period looks like a zombie.
The room smells like candy corn and cheap face paint.
~ energy -= 1

Ms. Carter is in a terrible mood and drops a surprise pop quiz on the class.

* [Try to focus]
    ~ scholastics += 2
    ~ stress += 10
    You force your eyes to stay open and grind through it.
* [Sleep with your eyes open]
    ~ energy += 2
    ~ grades -= 2
    You fake alertness and absorb almost nothing.

* [Continue to Friday]
    -> week_10_friday

=== week_10_friday ===
# Afternoon
# The Digital Camera

Someone brings a 2.0-megapixel digital camera to school and starts a hallway photo circle.
Then your Halloween photo appears, and you look absolutely ridiculous.

* [Laugh at yourself]
    ~ confidence += 5
    ~ rep_popular += 2
    You lean into the joke. People warm up to you for it.
* [Get defensive]
    ~ confidence -= 5
    ~ stress += 5
    You try to explain it away. It only gets weirder.

November is here.
The temperature is dropping, and the real academic work is about to begin.

* [Start Week 11...]
    -> week_11_monday
