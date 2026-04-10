=== week_1_friday ===
~ story_date = "Fri. Aug. 31, 2001"
# Afternoon
# End of first week

The first week rewinds in your head while the buses pull out.

{alex_drift >= 3:
    You and Alex are still friends.
    Probably.
    It just doesn't feel as automatic as it used to.
- else:
    For now, at least, some things still feel familiar.
}

{rep_rebel >= rep_popular and rep_rebel >= rep_nerd and rep_rebel >= rep_arts and rep_rebel >= rep_jock:
    ~ perception_label = "The Rebel"
- else:
    {rep_popular >= rep_nerd and rep_popular >= rep_arts and rep_popular >= rep_jock and rep_popular > 0:
        ~ perception_label = "The Wannabe"
    - else:
        {rep_nerd >= rep_arts and rep_nerd >= rep_jock and rep_nerd > 0:
            ~ perception_label = "The Quiet One"
        - else:
            {alex_affinity >= 56:
                ~ perception_label = "The Loyalist"
            - else:
                ~ perception_label = "The Loner"
            }
        }
    }
}

Week 1 in the books.
You are not invisible anymore.

* [Start Week 2]
    -> week_2_sunday
