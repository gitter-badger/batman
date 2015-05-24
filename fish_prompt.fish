function fish_prompt
  set -l code $status

  set -l prompt (prompt_pwd)
  set -l base (basename (prompt_pwd))

  printf (echo $prompt \
    | sed "s|~|"(fst)"^^"(off)"|g" \
    | sed "s|/|"(snd)"/"(off)"|g" \
    | sed "s|"$base"|"(fst)$base(off)" |g")(off)

  for color in (begin
    test $code -ne 0
      and printf "%s\n" 600 900 c00
      or printf "%s\n"  333 666 aaa
    end)
    printf "%s"(set_color $color)">"
  end
  printf " "
end
