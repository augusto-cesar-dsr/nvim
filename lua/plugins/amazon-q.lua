return {
  -- Amazon Q Integration Plugin
  {
    "amazon-q-integration",
    dir = vim.fn.stdpath("config") .. "/lua/amazon-q",
    config = function()
      require("amazon-q").setup()
    end,
  }
}
