--:set statusline+=%{gutentags#statusline()}
--vim.cmd([[
--  set statusline+=%{gutentags#statusline()}
--]])

-- https://www.reddit.com/r/vim/comments/d77t6j/guide_how_to_setup_ctags_with_gutentags_properly/
vim.g.gutentags_ctags_exclude = {
  '*.git', '*.svg', '*.hg', '*.idea', '*.gradle', '*.vs',
  '*/tests/*',
  'build', 'build_windows', 'build_linux', 'build_web',
  'dist',
  '*sites/*/files/*',
  'bin',
  'node_modules',
  'bower_components',
  'cache',
  'compiled',
  'docs',
  --'example',
  'vendor',
  '*.md',
  '*-lock.json','*.lock',
  'bundle','*bundle*.js','*build*.js',
  '.*rc*',
  '*.json',
  '*.min.*',
  '*.map',
  '*.bak',
  '*.pyc', '__pycache__',
  '*.class',
  '*.sln','*.csproj','*.csproj.user',
  '*.Master',
  '*.tmp',
  '*.cache',
  '*.pdb','*.obj',
  'tags*','cscope.*',
  -- '*.css',
  -- '*.less',
  -- '*.scss',
  '*.exe','*.dll','*.mp3','*.ogg','*.flac',
  '*.swp','*.swo',
  '*.ttf', '*.bmp','*.gif','*.ico','*.jpg','*.png',
  '*.rar','*.zip','*.tar','*.tar.gz','*.tar.xz','*.tar.bz2',
  '*.pdf','*.doc','*.docx','*.ppt','*.pptx',

  --
  'dependencies',
  'gradlew',
}

vim.g.gutentags_add_default_project_roots = false
vim.g.gutentags_project_root = { 'package.json', '.git' }
--vim.g.gutentags_cache_dir = vim.fn.stdpath("data") .. '/ctags'
vim.g.gutentags_cache_dir = os.getenv("UserProfile") .. "/.vim/ctags"
vim.g.gutentags_generate_on_new = true
vim.g.gutentags_generate_on_missing = true
vim.g.gutentags_generate_on_write = true
vim.g.gutentags_generate_on_empty_buffer = false
vim.cmd([[command! -nargs=0 GutentagsClearCache call system('rm ' . g:gutentags_cache_dir . '/*')]])
--a: Access (or export) of class members
--i: Inheritance information
--l: Language of input file containing tag
--m: Implementation information
--n: Line number of tag definition
--S: Signature of routine (e.g. prototype or parameter list)
vim.g.gutentags_ctags_extra_args = { '--tag-relative=yes', '--fields=+ailmnS', }
vim.g.gutentags_enabled = true
vim.g.gutentags_modules = { 'ctags' }

