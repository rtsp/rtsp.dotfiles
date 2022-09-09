## bell - trigger bell on every prompt if LC_BELL is set
[ -n "$LC_BELL" ] && PROMPT_COMMAND='echo -ne \\a'
