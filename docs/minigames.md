🏀 The Varsity Track (Sports)
These should be the only "Dexterity" based games. If you aren't a Jock, these should feel physically stressful.

"The Free Throw Rhythm": A classic "moving needle" bar. You have to stop the needle in the green zone.

Era Twist: If your Stress is high, the bar shakes or the needle moves faster.

Stake: Make the shot (+Rep, +Confidence) or airball it in front of the cheerleaders (-Confidence, +Cringe).

"The Two-Minute Drill" (Football): A rapid-fire decision game. You are the QB. You have 5 seconds to pick a receiver icon based on a "Defense" layout.

Stake: Completing the pass boosts Varsity and Rep. Taking the sack increases Stress and Energy drain.

"The P.E. Dodgeball Gauntlet": A simple "Left/Right/Duck" reaction game.

Stake: Survival = +Grit. Getting hit by Marcus = -Energy and a mandatory "Pen15" dialogue moment.

📝 The Academic Track (School-Based)
These focus on Stealth and Inventory Management.

"The Locker Tetris": You have 15 seconds to fit your math book, your gym bag, and a giant poster board into your locker so the door actually shuts.

Stake: Success = You make it to class on time (+Grades). Failure = You’re late (-Grades, +Parental Friction).

"The Calculator Drug-Wars": A "menu-based" trading game inside your TI-83. You try to "buy low/sell high" on smuggled snacks or burned CDs during a boring lecture.

Stake: Making "Profit" gives you a secret currency to buy better Y!M "Skins" or "Away Messages."

"The Note-Deciphering": Someone passed you a note that got wet or was written in pencil rub. You have to "scrub" the screen with your mouse/finger to reveal the text before the teacher turns around.

Stake: Learning a secret rumor gives you a "Social Tool" to use in the next dialogue.

💬 The Social Track (Relationship-Based)
These focus on Curation and Timing.

"The Mix CD Architect": You have a list of songs (Linkin Park, Britney, Sum 41, etc.). You have to drag and drop them onto a CD-R (80-minute limit).

The Puzzle: You have to match the "Vibe" of the recipient. Sarah wants "Pop-Punk/Emotional," Derek wants "Nu-Metal/Gritty."

Stake: A perfect CD = Huge Affinity boost. A bad CD = "Oh... thanks. I'll listen to this later." (Social Death).

"The Y!M Rapid-Reply": A "Guitar Hero" style typing game where you have to hit the right "Tone" buttons (Nice, Snarky, Funny) as they scroll by to keep a conversation from "idling."

Stake: Keeping the "Flame" icon lit = +Affinity. Let it die = "User has signed off."

"The Hallway Gauntlet": A top-down "Stealth" game. You have to walk from the Gym to the Library. You have to "Dodge" the Preps (who will drain your confidence) and "Node" at the Rebels to gain Rep.

⚡ The Tech Track (Era-Specific)
"The Dial-Up Prayer": A mini-game where you have to "balance" the connection. If the "Connection Strength" bar drops, you have to click a "Reconnect" button rapidly.

Stake: Staying online long enough to get that one crucial message from Sarah.

"The Burner Buffer": You are burning a CD-R. A progress bar moves slowly. You are told "DO NOT MOVE THE MOUSE." You have to keep the cursor perfectly still while the computer "noises" try to distract you.

Stake: Success = A working CD. Failure = A "Coaster" (Wasted Energy, +Stress).

=== basketball_practice ===
You step up to the line. The gym is silent.
~ temp minigame_result = 0
~ minigame_result = play_basketball_minigame(stress_level) // This calls the Unity game

{ minigame_result == "WIN":
    "The ball swishes through. Marcus actually looks impressed."
    ~ rep_jock += 10
- else:
    "You hit the rim. The ball bounces into the bleachers. Embarrassing."
    ~ confidence -= 5
}

💻 1. "The Profile CSS Hack" (Social/Tech)
The Vibe: Before MySpace was huge, there were local school forums, Blogspot, or early profile pages. This is where you defined your "Aesthetic" to the world.

The Gameplay: A "Light" Coding Puzzle. You are given a "Broken" block of HTML/CSS code (e.g., <color=???> or [IMG]...[/IMG]). You have to drag and drop the correct "tags" to make your profile layout work.

The Stakes: * Success: Your profile looks "Elite." (+Reputation, +Expression).

Failure: Your text is unreadable or your background is a blinding neon yellow. (+Cringe, -Confidence).

🌭 2. "The Cafeteria Tray Balance" (Physical/Cringe)
The Vibe: The terrifying 30-second walk from the lunch line to your table.

The Gameplay: A "Balance" Meter (think Tony Hawk's Pro Skater). You have to keep a slider centered using the arrow keys as you walk through a crowded cafeteria.

The Twist: "Random Events" happen—Marcus sticks a foot out, a freshman drops a fork, or Sarah waves at you. These events cause the meter to jerk violently.

The Stakes:

Success: You land at the table looking cool. (+Confidence).

Failure: The "Spaghetti Explosion." You drop the tray in front of everyone. This triggers a mandatory "Social Death" debuff where your Stress is locked at 80% for the rest of the day.

🎸 3. "The Garage Jam" (Arts/Rebel)
The Vibe: You, Alex, and Derek in a wood-panneled basement trying to cover Seven Nation Army or In the End.

The Gameplay: A "Simon Says" Rhythm Game. The drummer (Alex) hits a pattern, and you have to repeat it on the keyboard/guitar. As your Stress goes up, the patterns get faster and more complex.

The Stakes:

Success: You actually sound like a band. (+Rep_Rebel, +Expression, +Derek_Affinity).

Failure: You hit a sour note that echoes. Derek stops playing and just stares at you. (-Confidence, +Stress).

📅 The Master Plan
These minigames give us a "Break" from the heavy text of the weeks. For example:

Week 4: The Locker Tetris game happens when the principal announces the random searches.

Week 6: The Profile CSS Hack happens as you prep for Homecoming "Hype."

Week 11: The Dial-Up Prayer happens when you're trying to find those leaked midterm answers.