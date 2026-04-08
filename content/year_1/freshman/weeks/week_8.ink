=== week_8_monday ===
~ story_date = "Mon. Oct. 15, 2001"
# Morning
# Spirit Week kickoff

Pajama Day turns the hallway into a flannel traffic jam.
Oversized tees, plaid pants, slippers, and exactly one person in a bathrobe.
You decide how hard you're participating in the school spirit machine.

* [Full Commitment]
    ~ rep_popular += 2
    ~ confidence += 2
    ~ stress += 5
    You wore the most embarrassing plaid pants you own. It's a lot of visibility, but you own it.
* [Ironic/Rebel]
    ~ rep_rebel += 2
    You wear normal clothes and tape a paper badge to your chest: "This is my PJ." Derek nods in approval.
* [The Loner]
    ~ stress -= 10
    ~ rep_popular -= 2
    You hide in the library during lunch and wait for the spectacle to pass.

- * [Continue to Tuesday]
    -> week_8_tuesday

=== week_8_tuesday ===
~ story_date = "Tue. Oct. 16, 2001"
# Morning
# Twin Day scramble

No one planned ahead, so everyone is panic-matching in homeroom.

* [Twin with Alex]
    ~ alex_affinity += 5
    ~ rep_nerd += 2
    You both realize you're wearing the same gray hoodie. Alex acts like you won a championship.
* {chloe_late_bloomer_flag == true} [Twin with Chloe]
    ~ chloe_affinity += 10
    ~ confidence += 2
    You swap flannels to match. Her fingers linger when she hands your jacket back.
* {rep_popular >= 15} [Twin with the Preps]
    ~ rep_popular += 5
    ~ stress += 5
    You match the Student Council colors. It works, even if you feel like a fraud.

- * [Continue to Wednesday]
    -> week_8_wednesday

=== week_8_wednesday ===
~ story_date = "Wed. Oct. 17, 2001"
# Afternoon
# Pep Rally

The whole school is in the gym and the noise is absurd.
You get called to the floor for the Balloon Pop relay in front of what feels like everyone.

* [The Tryhard]
    ~ rep_jock += 5
    ~ energy -= 2
    ~ stress += 10
    You sprint, dive, and pop the balloon at any cost. You win. Your knees pay the price.
* [The Clown]
    ~ rep_arts += 5
    ~ confidence += 5
    You fail on purpose in the loudest, goofiest way possible. The crowd laughs with you, not at you.

- * [Continue to Thursday]
    -> week_8_thursday

=== week_8_thursday ===
~ story_date = "Thu. Oct. 18, 2001"
# Evening
# Big Game vs Water Tower

Everyone is heading to the stadium under Friday-eve lights.
Derek pings you on Y!M:
"The game is for sheep. Meet me at the Water Tower. I snagged some Zima."

* [Go to the Game]
    ~ rep_popular += 2
    ~ marcus_affinity += 2
    You freeze in the bleachers and clap when everyone else claps.
* [Go to the Tower with Derek]
    ~ rep_rebel += 10
    ~ derek_affinity += 10
    ~ parent_trust -= 10
    You sit on rusted metal watching stadium lights from far away, detached from the high school machine.

- * [Continue to Friday]
    -> week_8_friday

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
