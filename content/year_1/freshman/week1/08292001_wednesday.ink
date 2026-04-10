=== week_1_wednesday ===
~ story_date = "Wed. Aug. 29, 2001"
# Afternoon
# Lunchroom

The cafeteria looks like a map with invisible borders.

Out of habit, you look for Alex first.

He's not where you expect him to be.

For a second that bothers you more than it should.

Alex is farther over with a cluster of guys talking too loud about tryouts.
Sarah is with Marcus and the Populars.
Derek is posted by the exit like he owns the fire lane.

* [Go over to Alex anyway.]
    ~ alex_affinity += 5
    ~ alex_drift -= 1
    ~ stress -= 1
    You slide into the edge of the conversation.
    It isn't exactly awkward.
    It also isn't automatic anymore.
    -> week_1_wednesday_end
* [Hover near Sarah and the Populars.]
    ~ rep_popular += 3
    ~ stress += 4
    ~ confidence += 1
    You land at the edge of their orbit, smiling like you meant to be there.
    Marcus does most of the talking. Sarah still notices you showed up.
    -> week_1_wednesday_end
* [Walk past all of them and talk to Derek by the exit.]
    ~ rep_rebel += 3
    ~ derek_affinity += 4
    ~ confidence += 1
    Derek smirks. "Nice. Most people freeze at the border."
    -> week_1_wednesday_end
* [Sit somewhere quiet and get through lunch alone.]
    ~ rep_nerd += 1
    ~ stress += 1
    ~ confidence -= 1
    Being invisible is its own kind of safety.
    -> week_1_wednesday_end

= week_1_wednesday_end
The bell hits before lunch feels finished.

* [Continue to Thursday]
    -> week_1_thursday
