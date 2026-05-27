return {
   cmd = { 'ansible-language-server', '--stdio' },
   filetypes = {
       'yaml',
       'ansible',
       'yml'
    },
   root_markers = { '.git', 'ansible.cfg', 'playbook.yml' },
   settings = {
       ansible = {
           ansibleLint = {
               enabled = true,
           }
       }
   },
}
