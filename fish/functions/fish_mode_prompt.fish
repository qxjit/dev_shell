function fish_mode_prompt --description "Show Vim status in prompt"
  set_color -b $fish_bar_bg

  echo -n ' '

  switch $fish_bind_mode
    case default
      set_color --bold "F33"
      echo -n N
    case insert
      set_color --bold white
      echo -n I
    case visual
      set_color --bold "F3F"
      echo -n V
    case replace-one
      set_color --bold "FF3"
      echo -n R
  end

  set_color normal
end
