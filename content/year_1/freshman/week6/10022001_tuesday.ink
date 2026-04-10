=== week_6_tuesday ===
~ story_date = "Tue. Oct. 2, 2001"
# Afternoon
# Hallway lockers

You spot Chloe by her locker and almost walk past before your brain catches up.
No oversized hoodie today. Her hair is different. Subtle, but not subtle.
She looks up and gives you a nervous half-smile.

Chloe: "So... do you notice anything?"

* ["You look... really nice."]
    ~ chloe_late_bloomer_flag = true
    ~ chloe_affinity += 10
    ~ stress += 2
    You stumble over the words. She blushes, looks away, and the air between you shifts.
* ["Did you get a haircut?"]
    ~ chloe_affinity += 2
    You keep it casual. She smiles, but the moment stays in the just-friends lane.

- * [Continue to Wednesday]
    -> week_6_wednesday
