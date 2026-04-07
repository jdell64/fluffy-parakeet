We are building Week 7 of "Class of 2005". The theme is "The Scramble" – reaction vs. action in the wake of Marcus asking Sarah to the dance. Please create a new file named `week_7.ink`.

In `main.ink`, add the INCLUDE statement for `week_7.ink`. 
Also in `main.ink`, add two new global variables under the `// PHASE 2 STORY FLAGS` header:
`VAR marcus_sabotaged = false`
`VAR hoco_date = "None"`

In `week_6.ink`, ensure the final Friday scene ends with `* [Start Week 7...] -> week_7_monday`.

In `week_7.ink`, write the following structured knots. **CRITICAL: You must use the `* [Continue to next day] -> next_scene` pattern at the end of every day to prevent Ink bleed.**

**=== week_7_monday ===**
- **Scene:** The Monday Morning Fallout. The hallway buzz is deafening. Sarah told Marcus she "needs to check with her parents," which everyone knows is a stall tactic.
- **Conflict:** Alex asks what your move is.
- **Choices:**
  1. [The Wingman] (~ rep_popular += 2, ~ marcus_affinity += 5, ~ confidence -= 2) -> You tell Alex you're happy for Marcus. It's the safe, high-status play.
  2. [The Saboteur] (~ rep_rebel += 5, ~ marcus_affinity -= 5, ~ stress += 5) -> You start a rumor that Marcus only asked her on a dare. 
  3. [The Confidante] (~ chloe_affinity += 5) -> You ignore the Marcus drama and ask Chloe what she knows. She reveals Sarah is actually overwhelmed by the public spectacle.
- `* [Continue to Tuesday] -> week_7_tuesday`

**=== week_7_tuesday ===**
- **Scene:** The Tutor Gambit. Ms. Carter announces that Marcus is on "Academic Probation." If he fails Thursday's quiz, he is benched from the game and banned from the dance.
- **Conflict:** Marcus corners you in the hall. He's desperate and asks for your History notes.
- **Choices:**
  1. [Help him study] (~ energy -= 2, ~ marcus_affinity += 10, ~ rep_popular += 5) -> You spend your evening tutoring him on Y!M. You are the honorable friend.
  2. [Give him fake notes] (~ marcus_sabotaged = true, ~ rep_rebel += 5, ~ stress += 10) -> High risk. You hand over a study guide filled with wrong dates. Your heart pounds.
  3. [Tell him you lost yours] (~ stress -= 5, ~ confidence += 2) -> You stay out of it. Not your circus, not your monkeys.
- `* [Continue to Wednesday] -> week_7_wednesday`

**=== week_7_wednesday ===**
- **Scene:** The Hail Mary. You have a 10-minute window between 3rd and 4th period. Sarah is at her locker alone.
- **Conflict:** This is the last chance to shoot your shot before the dance is locked in.
- **Choices:**
  - `* {confidence >= 55} [The Direct Ask]` (~ hoco_stance = "asked_sarah", ~ energy -= 1, ~ stress += 10) -> You walk up and ask her to go "as friends" before she answers Marcus. She looks shocked and says she'll think about it.
  - `* [Slip a note in her locker]` (~ hoco_stance = "noted_sarah", ~ stress += 5) -> Lower risk. You drop a folded note through the vents. You won't know the answer until Friday.
  - `* [Pivot to Chloe]` (~ hoco_date = "Chloe", ~ chloe_affinity += 10, ~ stress -= 10) -> You realize the Sarah drama is exhausting. You find Chloe and ask her. She says yes immediately. The relief is immense.
- `* [Continue to Thursday] -> week_7_thursday`

**=== week_7_thursday ===**
- **Scene:** Thursday night Y!M interrogation. 
- **Logic Check:** If `parent_warning_active == true`, you are sneaking online and your `parent_trust` drops by 5. Otherwise, it's a normal session.
- **Conflict:** Alex pings you. "Marcus is freaking out about the quiz tomorrow."
- **Choices:**
  1. [Buzz Sarah to check the vibe] (~ sarah_affinity += 5) -> You test the waters. She's "Away" but replies with a smiley face.
  2. [Buzz Chloe about outfit plans] (~ chloe_affinity += 5) -> If you asked her, you plan matching thrift-store outfits. If not, she talks about going solo.
- `* [Continue to Friday] -> week_7_friday`

**=== week_7_friday ===**
- **Scene:** The Decision. After-school Pep Rally prep.
- **Logic Branch (The Outcome):**
  - `{hoco_date == "Chloe"}`: You watch the popular drama from the bleachers with Chloe. You don't care what happens.
  - `{marcus_sabotaged == true}`: Marcus fails the quiz. He screams in the hallway and kicks a locker. Sarah tells him she's not going with him. If `hoco_stance` is "asked_sarah" or "noted_sarah", Sarah walks over to you and says, "So, about that note..." (~ hoco_date = "Sarah", ~ rep_popular += 10).
  - `{marcus_sabotaged == false}`: Marcus passes. He and Sarah are officially the "Power Couple." If you asked her, she lets you down gently. (~ hoco_date = "Solo", ~ confidence -= 5).
- **Ending:** The board is set. Next week is Spirit Week, ending in the Dance.
- `* [Start Week 8...] -> week_8_monday` (placeholder divert).

The Strategy Here:
The Sabotage Path: We give the player a genuinely dark option (faking the notes). It's a massive risk, but if they pull it off, it's the only way to actually steal Sarah away from Marcus in Week 7. It perfectly captures that petty, high-stakes high school political warfare.

The Pivot to Chloe: Notice how choosing Chloe instantly drops Stress by 10. The game mechanically rewards the player with "relief" for stepping off the Popularity treadmill.

Once this compiles, Week 8 is going to be the massive mid-semester climax. Since the dance is going to be incredibly branch-heavy depending on who they are going with (Sarah, Chloe, or Solo), do you want Week 8 to focus entirely on the Friday Night Dance, or do you want to keep the day-by-day Spirit Week structure leading up to it?


We are building Week 8 of "Class of 2005". The theme is Spirit Week culminating in the Homecoming Dance. This is a highly branching week based on Week 7's variables. Please create a new file named `week_8.ink`.

In `main.ink`, add the INCLUDE statement for `week_8.ink`. 
Also in `main.ink`, add a new global string variable under `// PHASE 2 STORY FLAGS`:
`VAR hoco_memory = "none"`

In `week_7.ink`, ensure the final Friday scene ends with `* [Start Week 8...] -> week_8_monday`.

In `week_8.ink`, write the following structured knots. **CRITICAL: You must use the `* [Continue to next day] -> next_scene` pattern at the end of every day to prevent Ink bleed.**

**=== week_8_monday ===**
- **Scene:** Spirit Week begins. It's Pajama Day. The hallways are a sea of flannel and oversized t-shirts.
- **Conflict:** You have to decide how much you are participating in the school spirit machine.
- **Choices:**
  1. [Full Commitment] (~ rep_popular += 2, ~ confidence += 2, ~ stress += 5) -> You wore the most embarrassing plaid pants. It takes confidence, but you feel extremely visible.
  2. [Ironic/Rebel] (~ rep_rebel += 2) -> You wear normal clothes but tape a piece of paper to your chest that says "This is my PJ." Derek nods in approval.
  3. [The Loner] (~ stress -= 10, ~ rep_popular -= 2) -> You hide in the library during lunch to avoid the spectacle.
- `* [Continue to Tuesday] -> week_8_tuesday`

**=== week_8_tuesday ===**
- **Scene:** Twin Day. You didn't plan anything, but people are scrambling in the morning to match outfits.
- **Choices:**
  - `* [Twin with Alex]` (~ alex_affinity += 5, ~ rep_nerd += 2) -> The safe, dorky choice. You both happen to be wearing grey hoodies. He is thrilled.
  - `* {chloe_late_bloomer_flag == true} [Twin with Chloe]` (~ chloe_affinity += 10, ~ confidence += 2) -> You both swap flannels to match. There's a lingering moment when you hand her your jacket.
  - `* {rep_popular >= 15} [Twin with the Preps]` (~ rep_popular += 5, ~ stress += 5) -> You match the Student Council color scheme. You feel like a fraud, but it works.
- `* [Continue to Wednesday] -> week_8_wednesday`

**=== week_8_wednesday ===**
- **Scene:** The Pep Rally. The whole school is in the gym. The noise is deafening.
- **Conflict:** You are randomly called down to the floor for the "Balloon Pop" relay race in front of 800 people.
- **Choices:**
  1. [The Tryhard] (~ rep_jock += 5, ~ energy -= 2, ~ stress += 10) -> You sprint, dive, and pop the balloon at any cost. You win, but your knees are bruised.
  2. [The Clown] (~ rep_arts += 5, ~ confidence += 5) -> You intentionally fail in a spectacular, goofy way. The crowd laughs with you, not at you.
- `* [Continue to Thursday] -> week_8_thursday`

**=== week_8_thursday ===**
- **Scene:** The Big Game vs. The Water Tower. Everyone is heading to the football stadium under the Friday eve lights.
- **Conflict:** Derek pings you on Y!M. "The game is for sheep. Meet me at the Water Tower. I snagged some Zima."
- **Choices:**
  1. [Go to the Game] (~ rep_popular += 2, ~ marcus_affinity += 2) -> You freeze in the bleachers, cheering when everyone else cheers.
  2. [Go to the Tower with Derek] (~ rep_rebel += 10, ~ derek_affinity += 10, ~ parent_trust -= 10) -> You sit on the rusted metal, watching the stadium lights from afar. You feel completely detached from the high school machine.
- `* [Continue to Friday] -> week_8_friday`

**=== week_8_friday ===**
- **Scene:** THE DANCE. The gym smells like floor wax and cheap cologne. A disco ball throws jagged light across the bleachers. "Hero" by Enrique Iglesias is playing.
- **Logic Branch (The Climax):**
  - `{hoco_date == "Sarah"}`: You are dancing with Sarah. Marcus glares at you from the punch bowl. You won the "Phase 1" game, but the tension is suffocating. (~ hoco_memory = "Stole the Queen", ~ stress += 15).
  - `{hoco_date == "Chloe"}`: She's wearing a dress you've never seen. She smells like vanilla. You realize you don't even care where Sarah is tonight. (~ hoco_memory = "The Slow Burn", ~ stress -= 15, ~ energy += 5).
  - `{hoco_date == "Solo"}`: You lean against the bleachers with Alex (or Derek, if rebel is high). You watch the drama unfold like a movie. You feel untouchable, but a little lonely. (~ hoco_memory = "The Ghost", ~ grit += 5).
- **Ending:** The song fades out. The lights come up. The magic breaks, and it's just a sweaty gym again. Phase 2 is over.
- `* [Start Week 9...] -> week_9_monday` (placeholder divert).

The Strategy Here:
Pacing the Week: The week ramps up perfectly from low-stakes (Pajamas) to high-anxiety (Pep Rally), culminating in the Dance.

The "Boss Battle": Friday is entirely dictated by the player's choices from Week 7. By having Cursor evaluate the hoco_date variable, the player gets a completely unique climax based on whether they played it safe, sabotaged the jock, or leaned into the late-bloomer romance.

Saving the Memory: The hoco_memory string is critical. When you eventually build Semester 2, characters will reference this string (e.g., Marcus still being mad at you, or Chloe being officially "more than a friend").

We are building Week 9 of "Class of 2005". The theme is "The Aftermath" — social hangovers, dealing with the Homecoming fallout, and the pivot to winter activities. Please create a new file named `week_9.ink`.

In `main.ink`, add the INCLUDE statement for `week_9.ink`. 
Also in `main.ink`, add a new global string variable under `// PHASE 3 STORY FLAGS`:
`VAR winter_activity = "None"`

In `week_8.ink`, ensure the final Friday scene ends with `* [Start Week 9...] -> week_9_monday`.

In `week_9.ink`, write the following structured knots. **CRITICAL: You must use the `* [Continue to next day] -> next_scene` pattern at the end of every day to prevent Ink bleed.**

**=== week_9_monday ===**
- **Scene:** The Monday Morning Review. The hallway is a minefield of whispers about the dance.
- **Narrative Branch:** Output a custom sentence reflecting the `hoco_memory` variable (e.g., if "Stole the Queen", Marcus is glaring at you; if "The Slow Burn", Chloe gives you a shy smile by the lockers).
- **Conflict:** People are staring. How do you handle the attention?
- **Choices:**
  1. [Own your night] (~ rep_popular += 2, ~ confidence += 5, ~ stress += 5) -> You walk tall. Let them talk. 
  2. [Hide out in the library] (~ stress -= 10, ~ confidence -= 2) -> You avoid the main hallway entirely until the gossip dies down.
- `* [Continue to Tuesday] -> week_9_tuesday`

**=== week_9_tuesday ===**
- **Scene:** The "Smart but Lazy" Tax. Ms. Carter hands back the Week 5 Group Projects that were finally graded.
- **Logic Branch:**
  - `{parent_warning_active == true}`: You got a D. She writes "See me" on the top in aggressive red ink. 
    - **Choices:** - `* [Try the Charm Offensive]` (~ confidence += 2, ~ stress += 5) -> You try to talk your way into extra credit. She doesn't buy it.
      - `* [The Apathy Mask]` (~ rep_rebel += 2, ~ parent_trust -= 5) -> You shrug and shove it in your backpack.
  - `{parent_warning_active == false}`: You got a B-. It’s enough to survive. (~ stress -= 5, ~ grades += 2).
- `* [Continue to Wednesday] -> week_9_wednesday`

**=== week_9_wednesday ===**
- **Scene:** The Wrong Note. You are passing a folded note to Alex about a rumor you heard, but it slips and lands near the Popular crowd's table.
- **Conflict:** A classic "Pen15" cringe moment. Someone is reaching for it.
- **Choices:**
  1. [Dive for it (Intercept)] (~ energy -= 1, ~ rep_jock += 2) -> You practically tackle a chair to grab it first. It's embarrassing, but the secret is safe.
  2. [Gaslight (Pretend it's not yours)] (~ confidence -= 5, ~ stress += 10) -> You look away. They read it and laugh. You feel your face burn.
- `* [Continue to Thursday] -> week_9_thursday`

**=== week_9_thursday ===**
- **Scene:** The Y!M Buzz War. Thursday evening. 
- **Conflict:** You are in a chaotic 3-way chat with Alex and Chloe. Alex is spamming the "Buzz" feature because he's bored. Chloe is trying to talk about feeling weird since the dance.
- **Choices:**
  1. [Block Alex for the night] (~ alex_affinity -= 5, ~ chloe_affinity += 5) -> You shut down the noise and have a real talk with Chloe.
  2. [Ignore the drama and go "Away"] (~ energy += 2, ~ stress -= 5, ~ chloe_affinity -= 2) -> You just can't deal with it tonight.
- `* [Continue to Friday] -> week_9_friday`

**=== week_9_friday ===**
- **Scene:** The Winter Transition. The temperature has dropped. The "Outdoors" hangouts are dying, and winter extracurriculars are starting.
- **Conflict:** You need a place to belong for the winter season.
- **Choices:**
  1. [Join Winter Track/Basketball] (~ winter_activity = "Sports", ~ varsity += 5, ~ energy -= 2) -> You commit to the grind in the gym.
  2. [Audition for the Fall/Winter Play] (~ winter_activity = "Theater", ~ expression += 5, ~ stress += 5) -> You decide to risk the stage.
  3. [Stick to the Diner with Derek] (~ winter_activity = "Diner", ~ rep_rebel += 5, ~ derek_affinity += 5) -> You choose nicotine and french fries over school spirit.
- **Ending:** October is over. Your Freshman Identity is no longer a draft—it’s the final copy. 
- `* [Start Week 10...] -> week_10_monday` (placeholder divert).

The Strategy Here:
Consequence Tracking: Tuesday brings back the parent_warning_active flag from Week 5. If they slacked off weeks ago, the ghost of that decision haunts them now.

The "Winter Activity" Lock: Friday's choice serves as a narrative anchor for the cold months. It gives us an easy variable (winter_activity) to check in Weeks 10-12 to generate specific flavor text (e.g., being sore from track practice, or smelling like diner coffee).