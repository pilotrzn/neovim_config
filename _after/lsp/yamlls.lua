return{
    cmd = { "yaml-language-server", "--stdio" },
    filetypes = { "yaml", "yml" },
    root_markers = { ".git" },
    settings = {
        yaml = {
            schemas = {
                ["https://json.schemastore.org/ansible-stable-2.16.json"] = "/*{ansible,playbook}.{yaml,yml}",
            },
        },
    }
}
