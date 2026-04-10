=== week_5_friday ===
~ story_date = "Fri. Sept. 28, 2001"
# Morning
# Presentation day

{grades < 50:
    You bomb the presentation.
    Ms. Carter hands you a slip of paper. "Have your parents sign this."
    ~ parent_warning_active = true
    You're banned from Y!M for the weekend.
- else:
    You scrape by.
    Marcus nods in the hallway. "Not bad up there."
    ~ rep_popular += 2
}

September is over. The leaves are turning. Homecoming is right around the corner.

* [Start Week 6...]
    -> week_6_monday
