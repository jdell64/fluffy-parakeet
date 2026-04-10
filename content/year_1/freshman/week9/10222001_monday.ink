=== week_9_monday ===
~ story_date = "Mon. Oct. 22, 2001"
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
