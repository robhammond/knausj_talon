# These are active when we have focus on the draft window
title:Talon Draft
-
settings():
  # Enable 'Smart dictation mode', see https://github.com/knausj85/knausj_talon/pull/356
  user.context_sensitive_dictation = 1

# Replace a single word with a phrase
replace <user.draft_anchor> with <user.text>:
  user.draft_select("{draft_anchor}")
  result = user.formatted_text(text, "NOOP")
  insert(result)

# Position cursor before word
cursor <user.draft_anchor>:
  user.draft_position_caret("{draft_anchor}")

cursor before <user.draft_anchor>:
  user.draft_position_caret("{draft_anchor}")

# Position cursor after word
cursor after <user.draft_anchor>:
  user.draft_position_caret("{draft_anchor}", 1)

# Select a whole word
sell <user.draft_anchor>:
  user.draft_select("{draft_anchor}")

# Select a range of words
sell <user.draft_anchor> by <user.draft_anchor>:
  user.draft_select("{draft_anchor_1}", "{draft_anchor_2}")

# Delete a word
bear <user.draft_anchor>:
  user.draft_select("{draft_anchor}", "", 1)
  key(backspace)

# Delete a range of words
bear <user.draft_anchor> by <user.draft_anchor>:
  user.draft_select(draft_anchor_1, draft_anchor_2, 1)
  key(backspace)

# reformat word
<user.formatters> word <user.draft_anchor>:
  user.draft_select("{draft_anchor}", "", 1)
  user.formatters_reformat_selection(user.formatters)

# reformat range
<user.formatters> <user.draft_anchor> by <user.draft_anchor>:
    user.draft_select(draft_anchor_1, draft_anchor_2, 1)
    user.formatters_reformat_selection(user.formatters)
