=== week_10_tuesday ===
~ story_date = "Tue. Oct. 30, 2001"
# Afternoon
# Costume Politics

Everyone is arguing about Halloween plans between classes.
Chloe catches you by your locker and asks if you want to do a duo costume.

* [Say yes to Chloe]
    ~ chloe_affinity += 10
    ~ confidence += 5
    {chloe_late_bloomer_flag:
        She smiles, and for a second, it's not just a dorky costume.
    - else:
        She high-fives you. The dream team is back.
    }
* [The "Solo" Cool]
    ~ rep_rebel += 5
    ~ confidence += 2
    You say you're going as something detached and edgy.

- * [Continue to Wednesday]
    -> week_10_wednesday
