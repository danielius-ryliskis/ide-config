return {
  "mfussenegger/nvim-jdtls",
  ft = "java",
  config = function()
    local config = {
      cmd = { 'jdtls' },
      root_dir = vim.fs.dirname(
        vim.fs.find({ 'gradlew', 'mvnw', 'pom.xml', '.git' }, { upward = true })[1]
      ),
      settings = {
        java = {
          format = {
            enabled = true,
            settings = {
              url = "/opt/tvm/lib/styleguide/eclipse-java-tv-media-style.xml",
              profile = "TV Media Style",
            },
          },
          completion = {
            importOrder = {
              "java", "javax", "com", "org", "",
              "com.teliacompany", "com.teliasonera",
            },
          },
        },
      },
    }
    require('jdtls').start_or_attach(config)
  end,
}
