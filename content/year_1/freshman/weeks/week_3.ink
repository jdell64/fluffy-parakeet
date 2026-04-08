=== week_3_monday ===
~ story_date = "Mon. Sept. 10, 2001"
# September 10, 2001
# Ordinary Monday

History class drags like it always does on a Monday.
The clock clicks, someone taps a pencil, and the reading packet feels like it was written in another language.
You slide Chloe a folded note while Ms. Carter writes dates on the board.

* [Make a joke about the teacher.]
    ~ confidence += 2
    ~ chloe_affinity += 4
    Chloe covers a laugh with her sleeve and writes back: "you're terrible."
    -> week_3_monday_evening
* [Ask her what she's doing later.]
    ~ chloe_affinity += 3
    She writes: "probably online after dinner. you?"
    -> week_3_monday_evening

= week_3_monday_evening
That night, Alex pings you on Yahoo! Messenger about a custom cursor he downloaded.
Alex: "It leaves a little comet trail, dude. This is the future."
You type back like it's important, because right now it feels like just another normal night.
-> week_3_tuesday

=== week_3_tuesday ===
~ story_date = "Tue. Sept. 11, 2001"
# September 11, 2001
# 2nd Period, Ms. Carter's room

The TV gets wheeled in on a metal cart.
Volume low. No jokes. No side chatter.
Marcus sits with his head down, wiping at his face.
Derek stares out the window without blinking.
Ms. Carter looks terrified and keeps gripping the remote like she might drop it.

Today does not feel like a day you can spend.
Everything pauses.

* [Check on Marcus]
    ~ empathy_score += 10
    ~ rep_jock += 2
    You offer a tissue. The cliques don't matter today.
    -> week_3_tuesday_evening
* [Sit quietly]
    ~ stress += 10
    ~ grit += 2
    You just watch the screen, trying to process it.
    -> week_3_tuesday_evening

= week_3_tuesday_evening
That night, Yahoo! Messenger is a sea of away messages and short, uncertain statuses.
You stay online later than usual, not really talking, just watching names glow on your buddy list.
-> week_3_wednesday

=== week_3_wednesday ===
~ story_date = "Wed. Sept. 12, 2001"
# September 12, 2001
# Unity day

The school is half-empty.
The cafeteria lines blur, table borders vanish, and nobody seems interested in the usual pecking order.

~ W3_unity_active = true

At lunch, you see Sarah sitting alone outside on a bench, shoulders tight, eyes fixed on nothing.

* [Sit with Sarah (No Rep check needed due to Unity)]
    ~ sarah_affinity += 10
    You sit down. You don't even talk, just share the quiet.
    -> week_3_thursday
* [Give her space]
    ~ confidence -= 2
    ~ sarah_affinity += 5
    ~ w3_gave_sarah_space = true
    You leave her alone. Sometimes quiet is better.
    -> week_3_thursday

=== week_3_thursday ===
~ story_date = "Thu. Sept. 13, 2001"
# Thursday night
# Dial-up and emotional bandwidth

The modem squeals and settles into static hiss.
You only have so much emotional fuel left tonight.

* [Talk to Chloe]
    ~ chloe_affinity += 5
    ~ stress -= 10
    ~ energy -= 2
    She wants to talk about the news. It's heavy, but necessary.
    -> week_3_friday
* [Play a game with Alex]
    ~ alex_affinity += 5
    ~ energy -= 1
    You run a dumb little flash game together and pretend, for ten minutes, that things are normal.
    -> week_3_friday

=== week_3_friday ===
~ story_date = "Fri. Sept. 14, 2001"
# Friday night
# Candlelight vigil

The football game is canceled.
Instead, everyone gathers on the field with candles and quiet voices.
You stand on the grass and pick where to stand as the wind pushes smoke and wax into the night.

* [Stand with Sarah and the Preps]
    ~ rep_popular += 10
    ~ sarah_affinity += 5
    -> week_3_friday_end
* [Stand with Chloe]
    ~ chloe_affinity += 10
    ~ rep_nerd += 5
    -> week_3_friday_end
* [Stand with Derek by the bleachers]
    ~ rep_rebel += 10
    ~ derek_affinity += 5
    -> week_3_friday_end
* [Stand with Marcus and the team]
    ~ rep_jock += 10
    ~ marcus_affinity += 5
    -> week_3_friday_end

= week_3_friday_end
The lights blur, the field fades, and the week closes in silence.
The Freshman feeling is dead.
* [Start Week 4...]
    -> week_4_monday
