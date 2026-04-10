=== week_7_wednesday ===
~ story_date = "Wed. Oct. 10, 2001"
# Midday
# The Hail Mary

You get a ten-minute gap between 3rd and 4th period.
Sarah is alone at her locker.
If there's a last clean chance to shoot your shot, this is it.

* {confidence >= 55} [The Direct Ask]
    ~ hoco_stance = "asked_sarah"
    ~ energy -= 1
    ~ stress += 10
    You walk up and ask her to go "as friends" before Marcus gets an answer.
    She looks shocked and says she'll think about it.
* [Slip a note in her locker]
    ~ hoco_stance = "noted_sarah"
    ~ stress += 5
    You fold the note tight and slide it through the locker vents.
    Lower risk, slower burn, no immediate answer.
* [Pivot to Chloe]
    ~ hoco_date = "Chloe"
    ~ chloe_affinity += 10
    ~ stress -= 10
    You abandon the Sarah vortex, find Chloe, and ask.
    She says yes immediately. Relief hits like cold water.

- * [Continue to Thursday]
    -> week_7_thursday
