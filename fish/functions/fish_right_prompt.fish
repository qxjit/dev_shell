function fish_right_prompt --description "Write the directory on the right"
  echo -n -s \
    (set_color $fish_bar_border_fg) "▐" \
    (set_color -b $fish_bar_bg) \
    (set_color $fish_bar_git_fg) (__fish_git_prompt) " " \
    (set_color $fish_bar_pwd_fg) (prompt_pwd) \
    (set_color normal)
end
