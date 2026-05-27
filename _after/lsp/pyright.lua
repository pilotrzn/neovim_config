return {
    cmd = { "pyright-langserver", "--stdio" },
    filetypes = { "python", "py" },
    settings = {
        ansible = {
            ansibleLint = {
                enabled = true
            }
        }
    }
}
