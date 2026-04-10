=== week_7_friday ===
~ story_date = "Fri. Oct. 12, 2001"
# Afternoon
# The Decision

After-school Pep Rally prep turns the hall into controlled chaos.

{hoco_date == "Chloe":
    You watch the popular drama from the bleachers with Chloe and stop caring about who wins what.
- else:
    {marcus_sabotaged == true:
        Marcus fails the quiz, screams in the hallway, and kicks a locker so hard it dents.
        Sarah tells him she isn't going with him.
        {hoco_stance == "asked_sarah" or hoco_stance == "noted_sarah":
            Sarah walks over, half-smiling: "So, about that note..."
            ~ hoco_date = "Sarah"
            ~ rep_popular += 10
        }
    - else:
        Marcus passes. He and Sarah lock in as the Power Couple.
        {hoco_stance == "asked_sarah" or hoco_stance == "noted_sarah":
            Sarah lets you down gently by the stairwell.
            ~ hoco_date = "Solo"
            ~ confidence -= 5
        }
    }
}

The board is set. Next week is Spirit Week, and it all ends at the dance.

* [Start Week 8...]
    -> week_8_monday
