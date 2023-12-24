vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
require("neovim-project").setup({
  projects = {                           -- define project roots
    "~/repositories/*",
    "~/notes/",
  },
  last_session_on_startup = false,
})
