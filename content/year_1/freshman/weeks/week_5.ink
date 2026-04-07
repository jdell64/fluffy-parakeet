=== week_5_monday ===
# Morning
# Group project countdown

Ms. Carter stands at the front of class with a red pen and no patience.
"Projects are due Friday. No exceptions."
Lily drops a giant outline on your desk that you definitely have not read.

* [Take the Lead]
    ~ energy -= 1
    ~ grades += 5
    ~ stress += 5
    You promise to format the whole thing tonight. Lily looks relieved, and you feel a headache starting.
* [Coast]
    ~ grades -= 5
    ~ stress -= 5
    ~ confidence += 2
    You tell her to relax. She quietly adds your name to her slacker list.

* [Continue to Tuesday]
    -> week_5_tuesday

=== week_5_tuesday ===
# Afternoon
# Library work period

The library hums with giant CRT monitors and fluorescent lights.
You're supposed to research sources, but Derek is hiding behind a bookshelf and motioning you over.

* [Focus on the Project]
    ~ grades += 5
    ~ derek_affinity -= 2
    You ignore him and open AskJeeves instead. Derek rolls his eyes and disappears into the stacks.
* [Go see what Derek is doing]
    ~ rep_rebel += 5
    ~ derek_affinity += 5
    ~ grades -= 5
    You ditch the project to watch a banned flash animation. Lily sighs loudly from two tables over.

* [Continue to Wednesday]
    -> week_5_wednesday

=== week_5_wednesday ===
# Midday
# The Pen15 note

During a dead-silent lecture, you try to pass Chloe a folded note about the project.
Ms. Carter intercepts it mid-pass, taps it against her desk, and stares straight at you.

* [Shrink in your seat]
    ~ confidence -= 5
    ~ stress += 5
    The paranoia follows you all day. Did she read it?
* [Smirk and lean back]
    ~ rep_rebel += 2
    ~ confidence += 2
    ~ parent_trust -= 5
    You play it off for the room, but Ms. Carter writes something on her clipboard.

* [Continue to Thursday]
    -> week_5_thursday

=== week_5_thursday ===
# Evening
# The all-nighter

You need to finish the project, but dial-up keeps dropping whenever someone grabs the phone.
The clock keeps moving. Your energy does not.

* [Cram and fight the dial-up]
    ~ energy -= 2
    ~ grades += 10
    ~ stress += 10
    You stay up until 2 AM and finish it. Your stomach feels like static.
* [Give up and sleep]
    ~ energy += 3
    ~ grades -= 10
    You choose sanity over polish and accept a mediocre outcome.

* [Continue to Friday]
    -> week_5_friday

=== week_5_friday ===
# Morning
# Presentation day

{grades < 50:
    You bomb the presentation.
    Ms. Carter hands you a slip of paper. "Have your parents sign this."
    ~ parent_warning_active = true
    You're banned from Y!M for the weekend.
- else:
    You scrape by.
    Marcus nods in the hallway. "Not bad up there."
    ~ rep_popular += 2
}

September is over. The leaves are turning. Homecoming is right around the corner.

* [Start Week 6...]
    -> week_6_monday
