local map = require('core.keymap')
local cmd = map.cmd

map.n({
  ['W'] = cmd('w'),
  ['Q'] = cmd('q'),
  ['B'] = cmd('bd'),
  ['ca'] = cmd('silent %y+'),
  ['<leader>sc'] = cmd('set spell!'),
  ['<leader>sw'] = cmd('set wrap!'),
  ['<leader><cr>'] = cmd('noh'),
  ['<leader><leader>'] = '/<++><CR>:noh<CR>"_c4l',
  ['j'] = 'gj',
  ['k'] = 'gk',
  --['J'] = '<c-d>',
  ['K'] = '<c-u>',
  -- window
  ['<C-h>'] = '<C-w>h',
  ['<C-j>'] = '<C-w>j',
  ['<C-k>'] = '<C-w>k',
  ['<C-l>'] = '<C-w>l',
  ['<leader>W'] = '<c-w>w',
  ['<leader>sh'] = cmd('set nosplitright | vsplit'),
  ['<leader>sj'] = cmd('set splitbelow | split'),
  ['<leader>sk'] = cmd('set nosplitbelow | split'),
  ['<leader>sl'] = cmd('set splitright | vsplit'),
  ['<leader>smv'] = '<c-w>t<c-W>H',
  ['<leader>smh'] = '<c-w>t<c-W>K',
  -- open vim config
  ['<leader>vim'] = cmd('edit ' .. vim.fn.stdpath('config') .. '/init.lua | Chdir silent'),
})

map.nox({
  ['L'] = '$',
  ['H'] = '^',
})

map.nx('<leader>cc', function()
  return require('vim._comment').operator() .. '_'
end, { expr = true })

map.nx({
  --  切换行号显示
  ["<F1>"] = cmd('silent set nonumber! nonumber?'),
  --  切换 TAB/4空格
  ["<F2>"] = "<Cmd>set ts=4<cr><Cmd>set expandtab! expandtab?<cr><Cmd>%retab!<cr>",
  -- 切换打开的文件
  ["<F9>"] = cmd('silent bp'),
  ["<F10>"] = cmd('silent bn'),
  -- 黏贴后保持之前复制的内容不变(使用a寄存器内容实现)
  ['x'] = '"ax',
  ['X'] = '"aX',
  ['d'] = '"ad',
  ['D'] = '"aD',
  ['Y'] = '"aY',
  ['y'] = '"ay',
  ["p"] = '"ap',
  -- 不需要 Shift + ; 即可 ;
  [";"] = ":",
  -- 空格+q 退出
  ["<leader>q"] = "<ESC>:q<cr>",
  ["<leader>qa"] = "<ESC>:qa!<cr>",
  -- 空格+w 保存
  ["<leader>w"] = "<ESC>:w<cr>",
  ["<leader>wa"] = "<ESC>:wa!<cr>",
  -- Vim搜索结果居中展示
  ["n"] = "nzz",
  ["N"] = "Nzz",
  ["*"] = "*zz",
  ["#"] = "#zz",
  -- sv 水平分屏
  ["sv"] = cmd('silent vsp'),
  -- sh 垂直分屏
  ["sh"] = cmd('silent sp'),
  -- sc 关闭当前分屏 (s = close)
  ["sc"] = '<C-w>c',
  -- so 关闭其他分屏 (o = other)
  ["so"] = '<C-w>o',
})

map.v({
  ['N'] = ':normal',
  --['Y'] = '"+y',
  -- 黏贴后保持之前复制的内容不变(使用a寄存器内容实现)
  ['x'] = '"ax',
  ['X'] = '"aX',
  ['d'] = '"ad',
  ['D'] = '"aD',
  ['Y'] = '"aY',
  ['y'] = '"ay',
  ["p"] = '"ap',
})

map.t({
  ['<c-n>'] = '<C-\\><C-N>',
  ['<c-o>'] = '<C-\\><C-N><C-O>',
})

map.ic({
  ['<c-h>'] = '<Left>',
  ['<c-l>'] = '<Right>',
  ['<c-a>'] = '<Home>',
  ['<c-e>'] = '<End>',
})

map.x({
  ['J'] = ":m '>+1<CR>gv=gv",
  ['K'] = ":m '<-2<CR>gv=gv",
  ["<A-j>"] = ":m '>+1<CR>gv=gv",
  ["<A-k>"] = ":m '<-2<CR>gv=gv",
})
