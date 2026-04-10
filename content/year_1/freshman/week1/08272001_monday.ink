=== week_1_monday ===
~ story_date = "Mon. Aug. 27, 2001"

# Morning

# Home

The kitchen already smells like toast and coffee.
A local news anchor talks over the TV while somebody in the house keeps saying the time like it personally offended them.

Mom: "First day of high school. You are not walking in late."

You stand there in the weird quiet before a big day really starts.

Same house. Same backpack. Same you, probably.

It should feel normal.

Something about it feels a little off.

* [Eat something and sit for a minute.]
  ~ energy += 1
  ~ parent_trust += 1
  ~ conscientiousness += 1
  You force down a few bites while the clock keeps moving.
  -> week_1_monday_home_after
* [Rush around and head for the door.]
  ~ stress += 2
  ~ grit += 1
  ~ parent_trust -= 1
  Mom: "I'm serious. Do not start this year like last year."
  -> week_1_monday_home_after

= week_1_monday_home_after
Mom: "Just find good people."

That lands harder than it should.
Like she already knows something you don’t.

* [Promise you'll be fine.]
  ~ confidence += 1
  -> week_1_monday_arrival
* [Deflect with a joke.]
  ~ openness += 1
  "Define 'good.'"
  She does not laugh.
  -> week_1_monday_arrival

= week_1_monday_arrival

# Front doors

Jefferson High smells like floor wax, old lockers, and burnt toaster pastry.
Freshman flood the entrance.

You spot Alex.

He’s looking past you at first—
then snaps back in.

Alex: "Yo. High school."
Alex: "We’re good, right? Same as always?"

There’s a slight pause.

* [Yeah. Same as always.]
  ~ alex_affinity += 5
  You bump fists.
  It almost feels automatic.
  -> week_1_monday_alex
* [Maybe. Depends.]
  ~ alex_drift += 1
  Alex laughs, but checks your face.
  -> week_1_monday_alex

= week_1_monday_alex
Alex: "I might try out for football."
Alex: "Coach talked to me."

You blink.

"Since when?"

Alex shrugs. "Couple weeks."

That sits there for a second.

Alex: "You doing anything this year?"

* [Probably something academic.]
  ~ scholastics += 1
  ~ alex_drift += 1
  -> week_1_hallway
* [Maybe sports.]
  ~ varsity += 1
  -> week_1_hallway
* [Just figuring it out.]
  ~ grit += 1
  -> week_1_hallway
* [Something creative.]
  ~ expression += 1
  -> week_1_hallway

= week_1_hallway

Sarah passes through the crowd.
Sunlight hits her bracelet.

She laughs at something Marcus says.

You feel it.

* [Wave]
  ~ confidence += 2
  Marcus notices first.
  Sarah gives a quick smile—then keeps moving.
  -> week_1_period1
* [Look away]
  ~ stress += 2
  You pretend to adjust your bag.
  -> week_1_period1

# Period 1 — English

= week_1_period1

Rows of desks. Fluorescent lights.

Ms. Carter stands at the front like she’s already tired of all of you.

Ms. Carter: "Welcome to high school English."
Ms. Carter: "Let’s see what you actually remember."

She hands out a diagnostic.

You flip it over.

You definitely didn’t read this book.

~ temp test_score = 0

# MINIGAME HOOK (placeholder)

# "Fake it vs try vs give up"

* [Try to fake it]
  ~ test_score += 1
  ~ stress += 1
  You scan for keywords and guess.
* [Actually try]
  ~ test_score += 2
  ~ energy -= 1
  You piece together what you can.
* [Give up]
  ~ test_score -= 1
  ~ grit += 1
  You stare at the page until time runs out.

Ms. Carter collects the papers without reacting.

"Name?"

You tell her.

She looks at you for half a second longer than necessary.

Ms. Carter: "We’ll see."

That doesn’t feel great.

-> week_1_period2

# Period 2 — History

= week_1_period2

Different room. Same chairs.

Lily is already sitting straight up, notes out, like class started ten minutes ago.

She glances at you.

Lily: "Did you actually read the book?"

You hesitate.

* [Yeah, obviously.]
  ~ confidence += 1
  Lily nods like she doesn’t believe you.
* [Not really.]
  ~ honesty += 1
  Lily: "Cool. So you're guessing then."

She says it casually.

Not mean.

Just accurate.

That’s worse.

Teacher starts talking.

Your mind drifts.

You glance across the room—

Alex is there.

But he’s already talking to someone else.

You catch the end of a joke.

You don’t get it.

-> week_1_monday_end

= week_1_monday_end

The bell rings.

People stand up fast.

Alex is already moving with the flow.

You fall in step—

but not quite next to him.

For a second, it feels like you’re both waiting for something to sync back up.

It doesn’t.

Alex: "This might actually be a weird year."

* [Head to next class]
  -> week_1_tuesday

  # Evening — Home

= week_1_monday_evening

Your room looks exactly the same.

Posters. Desk. That one drawer that barely closes.

It should feel like yours.

It does—

but also a little smaller than you remember.

The house is quieter now.

You’ve got a few hours.

What you do with them feels… weirdly important.

* [Do homework]
  ~ grades += 1
  ~ stress += 1
  You sit at your desk longer than you want to.
  It feels like you’re trying to prove something.
  -> week_1_monday_evening_end

* [Go on Messenger]
  ~ social_energy -= 1
  The dial-up tone fills the room.

  Your buddy list loads.

  {alex_affinity > 4:
  Alex is online.
  }
  Chloe is online.

  You hover for a second before clicking a name.
  -> week_1_monday_messenger

* [Go outside for a bit]
  ~ stress -= 2
  ~ reflection += 1

  The air is cooler than it was this morning.

  You grab your bike without really deciding to.

  You ride the same loop you’ve ridden a hundred times.

  It feels different now.

  Not worse.

  Just… not the same.

  -> week_1_monday_evening_end

* [Do nothing]
  ~ energy += 1
  You flip through channels without really watching anything.

  Time passes anyway.

  -> week_1_monday_evening_end

= week_1_monday_messenger

Chloe: "hey"
Chloe: "how was today?"

You stare at the blinking cursor.

* [“it was fine”]
  ~ chloe_affinity += 1
  You keep it simple.
* [“kinda weird honestly”]
  ~ chloe_affinity += 2
  Chloe: "yeah… same"
* [Don’t reply yet]
  ~ alex_drift += 1
  You watch the cursor blink.

= week_1_monday_evening_end

You get ready for bed.

The day replays a little.

Some parts stick more than others.

You’re not sure why.

-> week_1_tuesday

