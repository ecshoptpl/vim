set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
call pathogen#infect()
" Ctrl + H                   --光标移行首  

 " Ctrl + J                   --光标移下一行行首  

 " Ctrl + K                   --光标移上一行行尾  

 " Ctrl + L                   --光标移行尾  

 " Ctrl + Z                   --取代ESC模式键 [和部分软件的快捷键有冲突]  

 " Ctrl + S                   --保存文件  

 " Ctrl + C                   --编译 [支持C/C++、Java、Haskell]  

 " Ctrl + R                   --运行 [支持C/C++、Java、Haskell、Lua、Perl、Python、Ruby]  

 " Ctrl + ]                   --转到函数定义  

 " Ctrl + T                   --返回调用函数  

 " Ctrl + E                   --添加注释 [插入模式] [添加的是C语言的多行注释，所以适用于C/C++/Java等]  

 " Ctrl + E                   --一步加载语法模板和作者、时间信息 [非插入模式]  

    

 " <C-P>                      --单词补全  

 " <C-X><C-L>                 --整行补全  

 " Tab键                      --插入模式下的全功能语法结构补全 [snipMate插件]  

 " Shift + Insert             --向Vim中粘贴从别处复制的内容  

    

 " nt                         --打开NERDTree [非插入模式]  

 " tl                         --打开TagList [非插入模式]  

 " \ww                        --进入vimWiki模式 [非插入模式]  

    

 " za                         --打开或关闭当前折叠  

 " zM                         --关闭所有折叠  

 " zR                         --打开所有折叠  

    

 " :set syntax=cpp            --手动选择语法高亮 [或 :set filetype=cpp]  

    

 " :%!xxd                     --转储二进制文件，以十六进制形式显示  

 " :%!xxd -r                  --还原二进制文件  

    

    

 " ---------- 主要插件详细用法说明 ---------------------  

    

 " :Tlist                     --呼出变量和函数列表 [TagList插件]  

 " :FencView                  --查看文件编码和更改文件编码 [FencView插件]  

 " :LoadTemplate              --呼出语法模板 [Load_Template插件]  

 " :AuthorInfoDetect          --添加作者、时间等信息 [NERD_commenter && authorinfo插件]  

    

 " ---------- a.vim [自动切换C/C++同名头文件] ----------  

 "  

 " :A                         --切换同名头文件并独占整个屏幕  

 " :AS                        --切换同名头文件并垂直分屏，头文件在上  

 " :AV                        --切换同名头文件并水平分割，头文件在左  

    

 " ---------- mark.vim [追踪高亮指定关键字] ------------  

 "  

 " \m                         --normal模式下，在想要高亮的单词上面敲击\m即可高亮或取消高亮该单词  

 " :Mark                      --取消所有高亮  

 " :Mark abc                  --指定高亮单词 abc 或取消高亮 abc  

    

 " ---------- NERDTree [智能文件浏览器] ----------------  

 "  

 " :NERDTree                  --启动NERDTree插件  

 " o [小写]                   --切换当前文件或目录的打开、关闭状态  

 " u                          --打开上层目录  

 " p [小写]                   --返回上层目录  

 " P [大写]                   --返回根目录  

 " K                          --转到当前目录第一个节点  

 " J                          --转到当前目录最后的节点  

 " m                          --显示文件系统菜单 [增、删、移]  

 " ?                          --弹出帮助菜单  

 " q                          --退出该插件  

    

    

    



 set tabstop=4                " 设置tab键的宽度  

 set shiftwidth=4             " 换行时行间交错使用4个空格  

 set autoindent               " 自动对齐  

 set backspace=2              " 设置退格键可用  

 set cindent shiftwidth=4     " 自动缩进4空格  

 set smartindent              " 智能自动缩进  

 set ai!                      " 设置自动缩进  

 set nu!                      " 显示行号  

 "set showmatch               " 显示括号配对情况  

 set mouse=a                  " 启用鼠标  

 set ruler                    " 右下角显示光标位置的状态行  

 set incsearch                " 查找book时，当输入/b时会自动找到  

 set hlsearch                 " 开启高亮显示结果  

 set incsearch                " 开启实时搜索功能  

 set nowrapscan               " 搜索到文件两端时不重新搜索  

 set nocompatible             " 关闭兼容模式  

 set vb t_vb=                 " 关闭提示音  

 "set cursorline              " 突出显示当前行  

 set hidden                   " 允许在有未保存的修改时切换缓冲区  

 set list                     " 显示Tab符，使用一高亮竖线代替  

 set listchars=tab:\|\ ,  

    

 syntax enable                " 打开语法高亮  

 syntax on                    " 开启文件类型侦测  

 filetype indent on           " 针对不同的文件类型采用不同的缩进格式  

 filetype plugin on           " 针对不同的文件类型加载对应的插件  

 filetype plugin indent on    " 启用自动补全  

    

 if has("gui_running")  

     au GUIEnter * simalt ~x  " 窗口启动时自动最大化  

     "winpos 20 20            " 指定窗口出现的位置，坐标原点在屏幕左上角  

     "set lines=20 columns=90 " 指定窗口大小，lines为高度，columns为宽度  

     "set guioptions-=m       " 隐藏菜单栏  

     set guioptions-=T        " 隐藏工具栏  

     "set guioptions-=L       " 隐藏左侧滚动条  

     "set guioptions-=r       " 隐藏右侧滚动条  

     "set guioptions-=b       " 隐藏底部滚动条  

     "set showtabline=0       " 隐藏Tab栏  

 endif  

    

 set writebackup              " 设置无备份文件  

 set nobackup  

 set autochdir                " 设定文件浏览器目录为当前目录  

 "set nowrap                  " 设置不自动换行  

 set foldmethod=syntax        " 选择代码折叠类型  

 set foldlevel=100            " 禁止自动折叠  

    

 set laststatus=2             " 开启状态栏信息  

 set cmdheight=2              " 命令行的高度，默认为1，这里设为2  

    

 " 每行超过80个的字符用下划线标示  

 au BufRead,BufNewFile *.asm,*.c,*.cpp,*.java,*.cs,*.sh,*.lua,*.pl,*.pm,*.py,*.rb,*.erb,*.hs,*.vim 2match Underlined /.\%81v/  

    

    

 " 设置编码  

 set fenc=utf-8  

 set encoding=utf-8  

 set fileencodings=utf-8,gbk,cp936,latin-1  

 " 解决菜单乱码  

 source $VIMRUNTIME/delmenu.vim  

 source $VIMRUNTIME/menu.vim  

 " 解决consle输出乱码  

 language messages zh_CN.utf-8  

    

    

 " For Haskell  

 :let hs_highlight_delimiters=1            " 高亮定界符  

 :let hs_highlight_boolean=1               " 把True和False识别为关键字  

 :let hs_highlight_types=1                 " 把基本类型的名字识别为关键字  

 :let hs_highlight_more_types=1            " 把更多常用类型识别为关键字  

 :let hs_highlight_debug=1                 " 高亮调试函数的名字  

 :let hs_allow_hash_operator=1             " 阻止把#高亮为错误  

    

    

 " ======= 引号 && 括号自动匹配 ======= "  

    

 :inoremap ( ()<ESC>i  

    

 :inoremap ) <c-r>=ClosePair(')')<CR>  

    

 :inoremap { {}<ESC>i  

    

 :inoremap } <c-r>=ClosePair('}')<CR>  

    

 :inoremap [ []<ESC>i  

    

 :inoremap ] <c-r>=ClosePair(']')<CR>  

    

 ":inoremap < <><ESC>i  

    

 ":inoremap > <c-r>=ClosePair('>')<CR>  

    

 :inoremap " ""<ESC>i  

    

 :inoremap ' ''<ESC>i  

    

 :inoremap ` ``<ESC>i  

    

 function ClosePair(char)  

     if getline('.')[col('.') - 1] == a:char  

         return "\<Right>"  

     else  

         return a:char  

     endif  

 endf  

    

    

 " MiniBufExplorer     多个文件切换 可使用鼠标双击相应文件名进行切换  

 let g:miniBufExplMapWindowNavVim=1  

 let g:miniBufExplMapWindowNavArrows=1  

 let g:miniBufExplMapCTabSwitchBufs=1  

 let g:miniBufExplModSelTarget=1  

    

 " :Tlist              调用TagList  

 let Tlist_Show_One_File=1                    " 只显示当前文件的tags  

 let Tlist_Exit_OnlyWindow=1                  " 如果Taglist窗口是最后一个窗口则退出Vim  

 let Tlist_Use_Right_Window=1                 " 在右侧窗口中显示  

 let Tlist_File_Fold_Auto_Close=1             " 自动折叠  

    

 " TxtBrowser          高亮TXT文本文件  

 au BufRead,BufNewFile *.txt setlocal ft=txt  

    

 " :FencView           查看文件编码和更改文件编码  

 let g:fencview_autodetect=1  

    

 " :LoadTemplate       根据文件后缀自动加载模板  

 let g:template_path='D:\Apps\Gvim\vimfiles\template\'  

    

 " :AuthorInfoDetect   自动添加作者、时间等信息，本质是NERD_commenter && authorinfo的结合  

 let g:vimrc_author='Ruchee'  

 let g:vimrc_email='my@ruchee.com'  

 let g:vimrc_homepage='http://www.ruchee.com'  

    

 " Ctrl + H            将光标移到行首  

 imap <c-h> <ESC>I  

    

 " Ctrl + J            将光标移到下一行的行首  

 imap <c-j> <ESC>jI  

    

 " Ctrl + K            将光标移到上一行的末尾  

 imap <c-k> <ESC>kA  

    

 " Ctrl + L            将光标移到行尾  

 imap <c-l> <ESC>A  

    
  
 " Ctrl + Z            取代ESC模式键  

 imap jj <ESC>  

    

 " Ctrl + S            保存文件  

 map <c-s> <ESC>:w<CR>  

 imap <c-s> <ESC>:w<CR>a  

 vmap <c-s> <ESC>:w<CR>  

    

 " Ctrl + E            一步加载语法模板和作者、时间信息 [非插入模式]  

 map <c-e> <ESC>:LoadTemplate<CR><ESC>:AuthorInfoDetect<CR><ESC>Gi  

 vmap <c-e> <ESC>:LoadTemplate<CR><ESC>:AuthorInfoDetect<CR><ESC>Gi  

    

 " Ctrl + E            在当前行添加C/C++/Java语言的多行注释 [插入模式]  

 imap <c-e> /*  */<ESC>hhi  

    

 " nt                  打开NERDTree [非插入模式]  

 map nt :NERDTree<CR>  

    

 " tl                  打开Taglist [非插入模式]  

 map tl :Tlist<CR><c-l>  

    

