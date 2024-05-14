return {
  {
    "xvzc/chezmoi.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    config = function()
      require("chezmoi").setup({
        -- your configurations
      })
    end,
    keys = {
      {
        "<leader>fC",
        function()
          local telescope = require("telescope")
          telescope.load_extension("chezmoi")
          telescope.extensions.chezmoi.find_files()
        end,
        desc = "Find chezmoi file",
      },
    },
  },
}
