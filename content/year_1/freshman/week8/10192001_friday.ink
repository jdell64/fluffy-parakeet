=== week_8_friday ===
~ story_date = "Fri. Oct. 19, 2001"
# Night
# THE DANCE

The gym smells like floor wax and cheap cologne.
A disco ball throws jagged light over the bleachers.
"Hero" by Enrique Iglesias is playing.

{hoco_date == "Sarah":
    You're dancing with Sarah while Marcus glares from the punch bowl.
    You won the Phase 1 game, but the tension feels radioactive.
    ~ hoco_memory = "Stole the Queen"
    ~ stress += 15
- else:
    {hoco_date == "Chloe":
        She's wearing a dress you've never seen. She smells like vanilla.
        At some point you realize you don't care where Sarah is tonight.
        ~ hoco_memory = "The Slow Burn"
        ~ stress -= 15
        ~ energy += 5
    - else:
        {hoco_date == "Solo":
            {rep_rebel >= rep_popular:
                You lean by the bleachers with Derek and watch the drama like a movie.
            - else:
                You lean by the bleachers with Alex and watch the drama like a movie.
            }
            You feel untouchable, and a little lonely.
            ~ hoco_memory = "The Ghost"
            ~ grit += 5
        - else:
            You drift through the dance without a clear side, half in and half out.
            ~ hoco_memory = "The Ghost"
            ~ grit += 2
        }
    }
}

The song fades. The lights come up. The magic breaks, and it's just a sweaty gym again.
Phase 2 is over.

* [Start Week 9...]
    -> week_9_monday
