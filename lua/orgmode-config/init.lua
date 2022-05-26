-- Load custom tree-sitter grammar for org filetype
require('orgmode').setup_ts_grammar()

require('orgmode').setup({
  org_agenda_files = {'~/org/*', '~/orgs/**/*'},
  org_default_notes_file = '~/org/refile.org',
})
