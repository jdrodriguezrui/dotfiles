-- Jenkinsfile type
vim.filetype.add({
   pattern = {
      [".*Jenkinsfile"] = "groovy"
   }
})

-- Dockerfile type
vim.filetype.add({
   pattern = {
      [".*Dockerfile"] = "dockerfile"
   }
})

