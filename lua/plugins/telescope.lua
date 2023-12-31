return {
    {
        "nvim-telescope/telescope.nvim",
        keys = {
          -- add a keymap to browse plugin files
          -- stylua: ignore
          {
            "<leader>fp",
            function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
            desc = "Find Plugin File",
          },
        },
        dependencies = {
            { 
                "nvim-telescope/telescope-live-grep-args.nvim" ,
                -- This will not install any breaking changes.
                -- For major updates, this must be adjusted manually.
                version = "^1.0.0",
            },
        },
        -- change some options
        opts = {
          defaults = {
            layout_strategy = "horizontal",
            layout_config = { prompt_position = "top" },
            sorting_strategy = "ascending",
            winblend = 0,
          },
        },
        config = function()
            require("telescope").load_extension("live_grep_args")
        end
      },
    
      -- add telescope-fzf-native
      {
        "telescope.nvim",
        dependencies = {
          "nvim-telescope/telescope-fzf-native.nvim",
          build = "make",
          config = function()
            require("telescope").load_extension("fzf")
          end,
        },
      },
}