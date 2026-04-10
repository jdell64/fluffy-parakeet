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
