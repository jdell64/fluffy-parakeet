=== week_1_monday ===
# Morning
# Front doors, August 2001

The front doors of Jefferson High smell like floor wax, old lockers, and somebody's burnt toast Pop-Tarts.
Alex jogs up beside you in a brand-new Linkin Park shirt, trying to act chill and failing.

Alex: "Yo, real talk. This year gets random fast. We still rolling together, right? Dream team?"

* [Definitely. Dream team.]
    ~ alex_affinity += 6
    ~ agreeableness += 1
    ~ confidence += 1
    You bump fists like it's a blood oath.
    -> week_1_monday_after_alex_choice
* [Let's see how it goes.]
    ~ openness += 1
    ~ alex_affinity -= 4
    ~ stress += 1
    Alex nods, but his smile goes a little sketchy at the edges.
    -> week_1_monday_after_alex_choice

= week_1_monday_after_alex_choice
Sarah swings through the front doors with the Popular crowd, sunlight catching a bracelet like a signal flare.
Your pulse does that dumb fast-forward thing.

* [Wave confidently.]
    ~ confidence += 4
    ~ energy -= 1
    You throw a casual wave. She gives a quick half-smile before getting pulled into hallway traffic.
    -> week_1_monday_end
* [Look down and pretend your backpack zipper is fascinating.]
    ~ stress += 4
    ~ confidence -= 1
    You suddenly become very interested in your shoes.
    -> week_1_monday_end

= week_1_monday_end
Alex: "Bro... okay. We got this. Probably."
* [Continue to Tuesday]
    -> week_1_tuesday

=== week_1_tuesday ===
# Morning
# Ms. Carter's English class

Ms. Carter drops a stack of summer reading diagnostics on each desk.
The room fills with the sound of paper sliding and quiet panic.
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
After class, Lily shoulder-checks past your desk, clutching a color-coded folder.
Lily: "Some of us actually did the assignment. Wild concept, I know."
The rivalry file opens in your head with a loud click.

~ stress += 1
* [Continue to Wednesday]
    -> week_1_wednesday

=== week_1_wednesday ===
# Afternoon
# Lunchroom

The cafeteria looks like a map with invisible borders.
Alex is at a safe middle table, Sarah is with Marcus and the Populars, and Derek is posted by the exit like he owns the fire lane.

* [Sit with Alex at the safe table.]
    ~ alex_affinity += 5
    ~ rep_nerd += 1
    ~ stress -= 3
    Alex immediately starts ranking every cafeteria pizza since sixth grade.
    -> week_1_wednesday_end
* [Hover near Sarah and the Populars.]
    ~ rep_popular += 3
    ~ stress += 4
    ~ confidence += 1
    You land at the edge of their orbit, smiling like you meant to be there.
    -> week_1_wednesday_end
* [Walk past them all and talk to Derek by the exit.]
    ~ rep_rebel += 3
    ~ derek_affinity += 4
    ~ confidence += 1
    Derek smirks. "Nice. Most people freeze at the border."
    -> week_1_wednesday_end

=== week_1_wednesday_end ===
The bell hits before lunch feels finished.
* [Continue to Thursday]
    -> week_1_thursday

=== week_1_thursday ===
# Evening
# Home - Yahoo! Messenger
The modem screams, then settles into that grainy dial-up hush.
Yahoo! Messenger pops open. Your buddy list flickers online.

Chloe pings you first.
Chloe: "today in gym was a total nightmare. i tripped during volleyball and everyone saw :("

* [Support her. Stay in the chat and listen.]
    ~ chloe_affinity += 6
    ~ stress -= 3
    ~ agreeableness += 1
    You let her vent, crack a dumb joke, and she finally sends back "lol thanks."
    -> week_1_thursday_away_message
* [Pivot: Ask what Sarah said about you.]
    ~ sarah_affinity += 3
    ~ chloe_affinity -= 3
    ~ openness += 1
    You steer the convo toward Sarah. Chloe answers, but the typing pauses get longer.
    -> week_1_thursday_away_message

=== week_1_thursday_away_message ===
Before logging off, you set your first away message:

* [Cryptic lyric - artsy and dramatic.]
    ~ rep_arts += 2
    ~ expression += 1
    Away Message: "somewhere i belong // brb"
    -> week_1_thursday_end
* [Sports grindset energy.]
    ~ rep_jock += 2
    ~ varsity += 1
    Away Message: "practice > sleep. later."
    -> week_1_thursday_end
* [Edgy and anti-everything.]
    ~ rep_rebel += 2
    ~ grit += 1
    Away Message: "if found, return to the void."
    -> week_1_thursday_end

=== week_1_thursday_end ===
Your CRT hums in the dark while the status icon flips to away.
* [Continue to Friday]
    -> week_1_friday

=== week_1_friday ===
# Afternoon
# Buses and weekend launch

Final bell. Lockers slam like fireworks.
You stand by the buses while everyone acts like they already have Friday night plans.

{rep_rebel > rep_popular:
    -> week_1_friday_derek
- else:
    {rep_popular > rep_rebel:
        -> week_1_friday_marcus
    - else:
        -> week_1_friday_lily
    }
}

= week_1_friday_derek
Derek appears out of nowhere, hoodie up.
Derek: "Diner run. Real fries, real people. You in?"
* [Go with Derek.]
    ~ derek_affinity += 4
    ~ rep_rebel += 1
    ~ energy -= 1
    You bail before anyone can call it a phase.
    -> week_1_reflection
* [Pass for tonight.]
    ~ stress += 1
    Derek shrugs. "Later then."
    -> week_1_reflection

= week_1_friday_marcus
Marcus palms a football and nods toward the parking lot.
Marcus: "Bonfire tonight. You coming?"
{confidence >= 55:
    * [Say yes. Go to the bonfire.]
        ~ rep_popular += 2
        ~ marcus_affinity += 2
        ~ energy -= 1
        You play it cool, even though your brain is buffering.
        -> week_1_reflection
    * [Make an excuse and dip.]
        ~ stress += 2
        ~ confidence -= 1
        Marcus gives you a polite nod that still feels like a loss.
        -> week_1_reflection
- else:
    You start to answer, trip over your own timing, and the moment slips.
    ~ stress += 3
    ~ confidence -= 1
    Marcus: "All good, man. Maybe next time."
    -> week_1_reflection
}

= week_1_friday_lily
Lily hovers with a planner pressed to her chest like armor.
Lily: "I'm hosting a study group Saturday. If you're serious about not tanking this year... show up."
* [Agree to join.]
    ~ grades += 2
    ~ rep_nerd += 1
    ~ stress -= 1
    Lily looks surprised, then immediately pretends she isn't.
    -> week_1_reflection
* [Politely decline.]
    ~ confidence += 1
    ~ grades -= 1
    ~ stress += 1
    Lily: "Right. Cool. Enjoy coasting."
    -> week_1_reflection

= week_1_reflection

The first week rewinds in your head while the buses pull out.

{rep_rebel >= rep_popular and rep_rebel >= rep_nerd and rep_rebel >= rep_arts and rep_rebel >= rep_jock:
    ~ perception_label = "The Rebel"
- else:
    {rep_popular >= rep_nerd and rep_popular >= rep_arts and rep_popular >= rep_jock and rep_popular > 0:
        ~ perception_label = "The Wannabe"
    - else:
        {rep_nerd >= rep_arts and rep_nerd >= rep_jock and rep_nerd > 0:
            ~ perception_label = "The Quiet One"
        - else:
            {alex_affinity >= 56:
                ~ perception_label = "The Loyalist"
            - else:
                ~ perception_label = "The Loner"
            }
        }
    }
}

Week 1 in the books. You are not invisible anymore.
* [Start Week 2]
    -> week_2_sunday
