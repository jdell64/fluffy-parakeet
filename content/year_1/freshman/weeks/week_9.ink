=== week_9_monday ===
# Morning
# Monday Morning Review

The hallway is a minefield of whispers about the dance.
{hoco_memory == "Stole the Queen":
    Marcus is glaring at you from across the lockers like he wants to start something.
- else:
    {hoco_memory == "The Slow Burn":
        Chloe gives you a shy smile by the lockers, then immediately looks at the floor.
    - else:
        People clock you, then look away fast, like they're still deciding what your story is.
    }
}

People are staring. You choose how to carry it.

* [Own your night]
    ~ rep_popular += 2
    ~ confidence += 5
    ~ stress += 5
    You walk tall. Let them talk.
* [Hide out in the library]
    ~ stress -= 10
    ~ confidence -= 2
    You avoid the main hallway until the gossip cycle cools down.

- * [Continue to Tuesday]
    -> week_9_tuesday

=== week_9_tuesday ===
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

=== week_9_wednesday ===
# Midday
# The Wrong Note

You're passing Alex a folded note about a rumor.
It slips and lands near the Popular table.
Somebody reaches for it.

* [Dive for it (Intercept)]
    ~ energy -= 1
    ~ rep_jock += 2
    You practically tackle a chair to grab it first. Humiliating, but the secret survives.
* [Gaslight (Pretend it's not yours)]
    ~ confidence -= 5
    ~ stress += 10
    You look away. They read it and laugh. Your face goes nuclear.

- * [Continue to Thursday]
    -> week_9_thursday

=== week_9_thursday ===
# Evening
# Y!M Buzz War

You're trapped in a chaotic three-way Y!M chat with Alex and Chloe.
Alex is spamming Buzz because he's bored.
Chloe keeps trying to talk about how weird everything feels after the dance.

* [Block Alex for the night]
    ~ alex_affinity -= 5
    ~ chloe_affinity += 5
    You kill the noise and finally have a real conversation with Chloe.
* [Ignore the drama and go "Away"]
    ~ energy += 2
    ~ stress -= 5
    ~ chloe_affinity -= 2
    You set Away and shut the laptop. You can't absorb one more emotion tonight.

- * [Continue to Friday]
    -> week_9_friday

=== week_9_friday ===
# Afternoon
# The Winter Transition

The air has turned cold.
Outdoor hangouts are dying off, and winter extracurriculars are starting.
You need a place to belong for the next stretch.

* [Join Winter Track/Basketball]
    ~ winter_activity = "Sports"
    ~ varsity += 5
    ~ energy -= 2
    You commit to the gym grind.
* [Audition for the Fall/Winter Play]
    ~ winter_activity = "Theater"
    ~ expression += 5
    ~ stress += 5
    You decide to risk the stage.
* [Stick to the Diner with Derek]
    ~ winter_activity = "Diner"
    ~ rep_rebel += 5
    ~ derek_affinity += 5
    You choose nicotine and fries over school spirit.

October is over.
Your Freshman identity is no longer a draft. It's the final copy.

- * [Start Week 10...]
    -> week_10_monday
