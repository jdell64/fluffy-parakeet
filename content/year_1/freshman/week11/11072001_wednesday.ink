=== week_11_wednesday ===
~ story_date = "Wed. Nov. 7, 2001"
# Midday
# The Leak

Alex leans in and whispers that someone stole a copy of the Math midterm.
He needs a lookout to distract the janitor while he gets a copy.

* [The Heist (High Risk)]
    {RANDOM(1, 10) > 7:
        ~ suspended = true
        ~ parent_trust -= 30
        You get caught. The janitor wasn't fooled.
        You're officially suspended until Friday.
    - else:
        ~ grades += 15
        ~ rep_rebel += 10
        You pull it off. Alex hands you a crumpled sheet of answers.
        You're a hero in the back row.
    }
* [Ignore it]
    ~ confidence -= 2
    You stay in your seat. Alex thinks you're lame, but you're not in the principal's office.

- * [Continue to Thursday]
    -> week_11_thursday
