function fish_right_prompt --description "Write the directory on the right"
  set leader_color "FFF"
  set bg_color "444"
  set git_color "99F"
  set pwd_color "F99"

  echo -n -s \
    (set_color -b $bg_color) \
    (set_color $leader_color) " ∴" \
    (set_color $git_color) (__fish_git_prompt) " " \
    (set_color $pwd_color) (prompt_pwd) \
    (set_color normal)
end
