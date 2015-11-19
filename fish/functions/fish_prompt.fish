function fish_prompt --description "Write a nice prompt for dockerized shell"
  echo -n -s (set_color -b $fish_bar_bg) \
             " " \
             (set_color normal) \
             (set_color $fish_bar_border_fg) \
             "▌" \
             (set_color normal)
end
