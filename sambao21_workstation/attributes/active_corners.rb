# These are the active corner options with the matchin int used by the recipe
# active_corner_value_to_int = {
#   desktop:               4,
#   dashboard:             7,
#   mission_control:       2,
#   application_windows:   3,
#   launchpad:            11,
#   start_screen_saver:    5,
#   disable_screen_saver:  6,
#   put_display_to_sleep: 10,
#   noop:                  0
# }

node.default["active_corners"]= {
  :tl => :start_screen_saver,
  :tr => :noop,
  :br => :noop,
  :bl => :noop
}
