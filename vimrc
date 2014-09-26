version 5.3
" ==================================================================
" File:         $HOME/.vimrc
" Availability: This file is available as
"   ~20K        <URL:http://www.math.fu-berlin.de/~guckes/setup/vimrc.gz>
"   ~56K        <URL:http://www.math.fu-berlin.de/~guckes/setup/vimrc>
"               <URL:http://www.vim.org/rc> (mirror)
" Size:         This file is about 57K in size and has 1,500+ lines.
" Purpose:      Setup file for the editor Vim (Vi IMproved)
" Author:       Sven Guckes guckes@vim.org (guckes@math.fu-berlin.de)
"               <URL:http://www.math.fu-berlin.de/~guckes/sven/>
" Related files:
"               http://www.math.fu-berlin.de/~guckes/vim/src/latex.vim
"               http://www.math.fu-berlin.de/~guckes/vim/src/html.vim
"               http://www.math.fu-berlin.de/~guckes/vim/syntax/
" Note:         Please send comments to me - email preferred! :-)
" Last update:  Thu Dec 10 02:02:02 CET 1998
" ===================================================================
" The latest versions of Vim are usually in my signature file:
" http://www.math.fu-berlin.de/~guckes/sig/SIGS  Have a look!
" ===================================================================
" Note to Windows users:  Get these files from any Vim mirror:
"     vim52rt.zip (840K)  vim runtime files (docs + syntax files)
"     gvimw32.zip (440K)  gvim - precompiled binary for Windows 32bit
" These should fit onto one floppy.  Just a recommendation.
" ===================================================================
" Installation of this setup file:
"
"  To use this setup file, copy it to
"  this filename    on these systems:
"    ~/.vimrc       Unix and OS/2
"    s:.vimrc       Amiga
"    $VIM\_vimrc    MS-DOS and Win32
"
" NOTE: This setup file uses a lot of features of Vim-5.
" If you are still using Vim-4 (or an even older version)
" then you should upgrade - it is really worth the effort!
" To find out why get Vim-5 and read ":help version5".
"
" The first line of this setup file contains the information
" "version xxx" which allows VIM to check whether the setup file
" fits the syntax that it understands.
" Versions of VIM other than of version 5 then will give a warning
" as they do not understand this setup file command - a feature:
" Give a warning so the user knows that there is something odd
" about the setup file.
" ===================================================================
" Whitespace meta sequence:
" vim-5.0s introduced the meta sequence "\s" which stands for "whitespace"
" ie either a space or a tab.  This makes mappings a lot easier.
" I have therefore updated my mappings to use this sequence.
" But this is incompatible with previous versions and, of course, Vi.
" ===================================================================
" Info on the latest versions is on the Vim HomePage:
"       http://www.vim.org/ - which is a daily mirror of the pages at
"       http://www.math.fu-berlin.de/~guckes/vim/
" and in Sven's signature file:
" http://www.math.fu-berlin.de/~guckes/sig/SIGS
" ===================================================================
" ===================================================================
" Structure of this file:
" Lines starting with an inverted comma (") are comments.
" Some mappings are commented out.  Remove the comment to enable them.
"
" There are three kinds of things which are defined in this file:
" Mapping ("map"), settings ("set"), and abbreviations ("ab").
"   Settings affect the behaviour of commands.
"   Mappings maps a key sequence to a command.
"   Abbreviations define words which are replaced
"   right *after* they are typed in.
"
" ===================================================================
" Note on mappings - "angle notation" (see ":help <>"):
" VIM allows you to define mappings with special characters
" with a notation that uses non-special characters:
" The notation encloses decriptive words in angle brackets (<>).
" The characters you will most often are:
" <C-M> for control-m
" <C-V> for control-v which quotes the following character
" <ESC> for the escape character.
" All control characters have been replaced to use the angle notation
" so you should be able to read this file without problems.
" (Well, sometimes I leave some tabs [control-i] in the file. ;-)
" ===================================================================
" External programs:
" Some mappings make use of external programs.
" The following you should find on every UNIX system:
" awk, egrep, grep, ispell, perl, sed.
" If you are using DOS then you should get these for you system!!
" Programs that are supplied with the mailer ELM: elmalias, readmsg.
" To get these look at page
" http://www.math.fu-berlin.de/~guckes/elm/dist.html
" One major advantage of vim-5 (actually, 5.0g) is that there is now
" the internal function "strftime".  This allows to insert the current
" date and time in various format.  Example:  mapping ",L" (see below)
" ===================================================================
" SETtings
" ===================================================================
"
"       autoindent:  "off" as I usually do not write code.
  set autoindent
"
"       autowrite: "on" saves a lot of trouble
  set   autowrite
"
"       backup:  backups are for wimps  ;-)
  set nobackup
"
"       backspace:  '2' is much smarter.
  set   backspace=2
"
"       background:  Are we using a "light" or "dark" background?
  set   background=dark
"
"       compatible  ....
  set nocompatible
"
"       comments default: sr:/*,mb:*,el:*/,://,b:#,:%,:XCOMM,n:>,fb:-
  set   comments=b:#,:%,fb:-,n:>,n:),sr:/*,mb:*,el:*/,://,b:#,:%,:XCOMM,n:>,fb:-
"
"       cpoptions you should get to know - source of many FAQs!  ;-)
"       cpoptions:  "compatible options" to match Vi behaviour
" set   cpoptions="aABceFs"   "default!
"       FAQ:  Do NOT include the flag '<' if you WANT angle notation!
"
"       dictionary: english words first
  set   dictionary=/usr/dict/words,/local/lib/german.words
"
"       digraph:    required for those umlauts
"  set   digraph
"
"       errorbells: damn this beep!  ;-)
  set noerrorbells

"       esckeys:    allow usage of cursor keys within insert mode
  set   esckeys
"
"       formatoptions:  Options for the "text format" command ("gq")
"                       I need all those options (but 'o')!
  set   formatoptions=cqrt
"
"       helpheight: zero disables this.
  set   helpheight=0
"
"       helpfile:  filename of the helpfile
" set   helpfile=c:\\vim-4.6\\docs\\help.txt
"       this is where I usually put it on DOS; sometimes is required
"       to set as the default installation does not find it  :-(
"
"       hidden:
  set   hidden
"
"       highlight=8b,db,es,hs,mb,Mn,nu,rs,sr,tb,vr,ws
  set   highlight=8r,db,es,hs,mb,Mr,nu,rs,sr,tb,vr,ws
"
"       hlsearch :  highlight search - show the current search pattern
"       This is a nice feature sometimes - but it sure can get in the
"       way sometimes when you edit.
" set nohlsearch
"
"       icon:       ...
  set noicon
"
" set   iconstring  file of icon (Sven doesn't use an icon)
" set   iconstring
"
"       ignorecase:  ignore the case in search patterns?  NO!
 set ignorecase
"
"       insertmode:  start in insert mode?  Naah.
  set noinsertmode
"
"
"       iskeyword:  Add the dash ('-'), the dot ('.'), and the '@'
"                   as "letters" to "words".
"       iskeyword=@,48-57,_,192-255   (default)
  set   iskeyword=@,48-57,_,192-255,-,.,@-@

  set   history=1000
"
"       joinspaces:  insert two spaces after a period with every
"                joining of lines.  This is very nice!
  set   joinspaces
"
"       keywordprg:  Program to use for the "K" command.
" set   keywordprg=man\ -s
"
"       laststatus:  show status line?  Yes, always!
"       laststatus:  Even for only one buffer.
  set   laststatus=2
"
" [VIM5]lazyredraw:  do not update screen while executing macros
  set   lazyredraw
"
"       magic:       use some magic in search patterns?  Certainly!
  set   magic
"
"       modeline:    ...
"       Allow the last line to be a modeline - useful when
"       the last line in sig gives the preferred textwidth for replies.
  set   modeline
  set   modelines=1
"
"       number:      ...
  set nonumber
"
"       path:   The list of directories to search when you specify
"               a file with an edit command.
"               Note:  "~/.P" is a symlink to my dir with www pages
"               "$VIM/syntax" is where the syntax files are.
" set   path=.,,~/.P/vim,~/.P/vim/syntax,~/.P/vim/source,$VIM/syntax/
" set   path=.,,~/.P/vim,~/.P/mutt/,~/.P/elm,~/.P/slrn/,~/.P/nn
"
"       report: show a report when N lines were changed.
"               report=0 thus means "show all changes"!
  set   report=0
"
"       ruler:       show cursor position?  Yep!
  set   ruler
"
" Setting the "shell" is always tricky - especially when you are
" trying to use the same vimrc on different operatin systems.
"       shell for DOS
" set   shell=command.com
"       shell for UNIX -  math.fu-berlin.de BSD
" set   shell=zsh
"       shell for UNIX -   inf.fu-berlin.de BSD&Solaris
" set   shell=zsh
"       shell for UNIX - zedat.fu-berlin.de BSD&Solaris
" set   shell=/bin/tcsh
"       zsh now available at zedat!  :-)
" set   shell=zsh
" Now that vim-5 has ":if" I am trying to automate the setting:
"
  if has("dos16") || has("dos32")
  let shell='command.com'
  endif
  if has("unix")
  let shell='zsh'
  endif
"
"       shiftwidth:  Number of spaces to use for each
"                    insertion of (auto)indent.
  set   shiftwidth=4
"
"       shortmess:   Kind of messages to show.   Abbreviate them all!
"          New since vim-5.0v: flag 'I' to suppress "intro message".
  set   shortmess=at
"
"       showcmd:     Show current uncompleted command?  Absolutely!
  set   showcmd
"
"       showmatch:   Show the matching bracket for the last ')'?
  set   showmatch
"
"       showmode:    Show the current mode?  YEEEEEEEEESSSSSSSSSSS!
  set   showmode
"
"       suffixes:    Ignore filename with any of these suffixes
"                    when using the ":edit" command.
"                    Most of these are files created by LaTeX.
  set   suffixes=.aux,.bak,.dvi,.gz,.idx,.log,.ps,.swp,.tar
"
"       startofline:  no:  do not jump to first character with page
"       commands, ie keep the cursor in the current column.
  set nostartofline
"
"       tabstop
  set   tabstop=4
"
"
" Set the colors for vim on "xterm"
  if &term=="xterm"
    set t_Co=8          " "terminal has eight colors"
    set t_Sb=[4%p1%dm    " escape sequence for background
    set t_Sf=[3%p1%dm    " escape sequence for foreground
"   source ~/.P/vim/syntax/colors.vim
"   http://www.math.fu-berlin.de/~guckes/vim/syntax/colors.vim
" [todo] Add this to the Vim FAQ
  endif

  set t_Co=256  "set terminal colors to 256 - urxvt"
"
"       textmode:    no - I am using Vim on UNIX!
  set notextmode
"
"       textwidth
  set   textwidth=500
"
"       title:
  set notitle
"
"       ttyfast:     are we using a fast terminal?
"                    seting depends on where I use Vim...
  set nottyfast
"
"       ttybuiltin:
  set nottybuiltin
"
"       ttyscroll:      turn off scrolling -> faster!
  set   ttyscroll=0
"
"       ttytype:
" set   ttytype=rxvt
"
"       viminfo:  What info to store from an editing session
"                 in the viminfo file;  can be used at next session.
  set   viminfo=%,'50,\"100,:100,n~/.viminfo
"
"       visualbell:
  set   visualbell
"
"       t_vb:  terminal's visual bell - turned off to make Vim quiet!
"       Please use this as to not annoy cow-orkers in the same room.
"       Thankyou!  :-)
  set   t_vb=
"
"       whichwrap:
  set   whichwrap=<,>
"
"       wildchar  the char used for "expansion" on the command line
"                 default value is "<C-E>" but I prefer the tab key:
  set   wildchar=<TAB>
"
"       wrapmargin:
  set   wrapmargin=1
"
"       writebackup:
  set nowritebackup
"

"       git:
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%04.8b]\ [HEX=\%04.4B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" ===================================================================
" ABbreviations
" ===================================================================
" 980701: Moved the abbreviations *before* the mappings as
" some of the abbreviations get used with some mappings.
"
" Abbreviations for some important numbers:
  iab Npi 3.1415926535897932384626433832795028841972
  iab Ne  2.7182818284590452353602874713526624977573
"
" Abbreviations for some classic long words:
"
"     Donau... is the German word for the (read in reverse)
"     "additional paragraph of the law regulating the pension of
"      widows to captains of the ship company on (the river) Danube"
"     (I am not making this up! ;-)
  iab YDD Donaudampfschiffahrtgesellschaftskapitaenwitwenrentengesetzzusatzparagraph
"
"     YLL : The name of a town in Wales.  I am not making this up!
  iab YLL    LLanfairpwllgwyngyllgogerychwyrndrobwllllantysiliogogogoch
" http://www.llanfairpwllgwyngyllgogerychwyrndrobwllllantysiliogogogoch.co.uk
" http://194.159.85.168/ - I am not making this up!  :-)
"
"     YTauma: The name of a hill in New Zealand.
  iab YTauma Taumatawhakatangihangakoauauotamateaturipukakapikimaungahoronukupokaiwenuakitanatahu
"
"     Yalpha : The lower letter alphabet.
  iab Yalpha abcdefghijklmnopqrstuvwxyz
"
"     YALPHA : The upper letter alphabet.
  iab YALPHA ABCDEFGHIJKLMNOPQRSTUVWXYZ
"
"     Ydigit : The ten digits.
  iab Ydigit 1234567890
"
"     Yruler : A ruler.
  iab Yruler 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890
"
"     Yupsidedown : This describes people from "down under"
"                   (Hi, Dean!).
  iab Yupsidedown umop-ap!sdn
"
"     Ysuper: A nice long word from the musical "Mary Poppins".
  iab Ysuper supercalifragilisticexpialidocious

"     Yanti:  The longest proper word in the English language?!
  iab Yanti antidisestablishmentarianism
"
"     Ypass : Standard answer to Usenet posts
"             with the "Subject: HELP"  (hehe)
  iab Ypass "You are in a maze of twisty little passages, all alike."
"
"     Ysesqui : "Sesquipedalophobia" means "fear of big words."  ;-)
  iab Ysesqui    sesquipedalophobia
"
" classic pangrams (which include every letter of the alphabet):
" German:
"   sylvia wagt quick den jux bei pforzheim
"   bayerische jagdwitze von maxl querkopf
"   zwei boxkaempfer jagen eva quer durch sylt
"   kaufen sie jede woche vier gute bequeme pelze
"   falsches üben von xylophonmusik quält jeden größeren zwerg.
"   Bei jedem klugen Wort von Sokrates rief Xanthippe zynisch: Quatsch!
" English:
"        the quick brown fox jumps over the lazy dog
" French:
"        voyez le brick geant que j'examine pres du wharf.
"
"       And a sentence to break some quoing levels:
"       "This man's house (which 's yellow) burned down."
"
"       And now for something completely different:
"       I couldn't bear to bear bears over the border.
"
" Inserting an ellipsis to indicate deleted text
  iab  Yell  [...]
  vmap ,ell c[...]<ESC>
"
" Correcting those typos. [I almost never get these right.  :-(]
" See also:  http://www.igd.fhg.de/~zach/programs/acl/
  iab alos also
  iab aslo also
  iab charcter character
  iab charcters characters
  iab exmaple example
  iab shoudl should
  iab seperate separate
  iab teh the
" Some frequent typos in German:
  iab nciht nicht
  iab doer oder
  iab Dreckfuhler Druckfehler
" Sorry, Laurent!
  iab Laurant Laurent
"
" See http://www.math.fu-berlin.de/~guckes/sig/:
  iab YDDS dash-dash-space
"
" For reports and texts on my studies:
  iab YKT Komplexitaetstheorie
  iab YRA Rechnerarchitektur
  iab YPM Pattern Matching
" see http://elib.zib.de/ICM98 :
  iab YICM International Congress of Mathematicians
"
" Some sentences that I really use often in emails about Vim:
  iab YAW You are welcome!  :-)
  iab YEV Enjoy Vim!
"
" Often used filenames - only needed these on the command line:
" see also:  http://www.math.fu-berlin.de/~guckes/setup/
"
  cab ELMALIAS  ~/.elm/aliases.text
  cab Erc       ~/.elm/elmrc
  cab Mrc       ~/.muttrc
  cab Src       ~/.slrnrc
  cab Zrc       ~/.zsh/.zshrc
  cab SIGs      ~/.P/sig/SIGS
"
" A list of filenames that are needed to shorten some autocommands:
" cab MAILNEWSFILES .article,.followup,.letter,mutt*[0-9],/postpone/*
" cab MAILNEWSFILES *.article,*.followup,*.letter,*mutt*
  let MAILNEWSFILES = "*.article,*.followup,*.letter,mutt*"
"
" see also:  http://www.math.fu-berlin.de/~guckes/sig/SIGS
"
"  Email Adresses:
"  I usually use these when adding addresses to the header
"  of emails (mutt) and posts (slrn).
"
"             Author of the Good NetKeeping Seal of Approval:
  ab Agnksa   js@xs4all.nl (Jeroen Scheerder)
"
"             Author of Mutt:
  ab Amutt    me@cs.hmc.edu (Michael Elkins)
"
"             Author of Slrn:
  ab Aslrn    davis@space.mit.edu (John E. Davis)
"
"             Author of Vim:
" ab Avim     mool@oce.nl (Bram Moolenaar)
  ab Avim     bram@vim.org (Bram Moolenaar)
"
"             Former Maintainer of the Vim FAQ:
  ab Avimfaq  laurent@Grafnetix.COM (Laurent Duperval)
"
"    Mailing Lists (MLs)
"
"    The Vim mailing lists: See http://www.vim.org/mail.html for more info!
  ab MLvim      vim@vim.org (VIM Help List)
  ab MLvimdev   vim-dev@vim.org (VIM Development List)
  ab MLvimmac   guckes-vimmac@math.fu-berlin.de (VIM on MacOS Development List)
"
" More mailing lists:
  ab MLgnksa    gnksa-workers@babayaga.math.fu-berlin.de (GNKSA Workers List)
  ab MLmuttdev  mutt-dev@mutt.org (Mutt Developer List)
  ab MLmuttuser mutt-users@mutt.org (Mutt Users List)   
  ab MLzsh      zsh-users@math.gatech.edu (ZShell Users List)
"
"
"   News: newsgroup names
"
" Newsgroup about "warloding" of signatures - see
" also http://www.math.fu-berlin.de/~guckes/afw/
  iab Nafw    alt.fan.warlord
  iab Nahbou  alt.humor.best-of-usenet
  iab Nzedat  bln.announce.fub.zedat.d
  iab Ncsd    bln.announce.fub.cs.d
  iab Nce     comp.editors
" Newsgroup about "lynx":
  iab Nhtml   comp.infosystems.www.authoring.html
" Newsgroup about "elm":  Elm is dead - long live Mutt!
  iab Nelm    comp.mail.elm
" Newsgroup about "pine":  When will they release pine-4?
" iab Ncmp    comp.mail.pine
  iab Npine   comp.mail.pine
" iab Ncsmd   comp.sys.mac.digest
" Newsgroup about "mobil phone systems":
  iab Ndcm    de.comm.mobil
  iab Nmobil  de.comm.mobil
" Newsgroup about "web browsers":
  iab Nlynx     comp.infosystems.www.browsers.misc
  iab Nnetscape comp.infosystems.www.browsers.misc
" Newsgroup about "mutt" [since 980401]:  The coolest mail user agent
  iab Nmutt   comp.mail.mutt
" Newsgroup about "nn":  Once was the best newsreader. Still good.
  iab Nnn     news.software.nn
" Newsgroup for "newbies".
" All you ever wanted to know - but were afraid to ask. ;-)
  iab Newbie  news.newusers.questions
" Newsgroup about "newsreader *agents*" (netscape and slrn):
  iab Nnsr    news.software.readers
"
" Usenet header lines (used when composing a post):
"
  iab UFT  Followup-To:
  iab UMCT Mail-Copies-To: MYADDR
  iab UNG  Newsgroups:
  iab URT  Reply-To: MYADDR
  iab UFUB Organization: Freie Universitaet Berlin
"
" Current version numbers of my favourite programs:
" http://www.math.fu-berlin.de/~guckes/sig/SIGS
" And some abbreviations to type them in mail&news:
"
  iab Velm  ELM2.4PL25 [951204]
  iab VElm  ELM2.5b2 [980213]
  iab Vlynx lynx-2.8.0 [980310
  iab Vmutt mutt-0.92.8 [980514]
  iab Vslrn slrn-0.9.5.2 [980503]
  iab Vvim  vim-5.1  [980407]
  iab Vvimdev vim-5.2c [980518]
"
" For current version numbers take a look at my signature file:
" http://www.math.fu-berlin.de/~guckes/sig/SIGS
"
"  My snail mail address, phone numbers, and email->pager gateway:
"  Postcards and FAXes are welcome (especially with cartoons :-).
"  If you want, you can send a message to my pager by email, too.
  iab Ypager To: ums@teco.edu<C-M>Subject: PAGE:01777777796
  iab Yphone TEL/FAX   (+49  30) 8838884<C-M>Cellphone (+49 177) 7777796
  iab Ysnail Sven Guckes<C-M>Pariser Str. 52<C-M>D-10719 Berlin
"
"  My addresses (Email and WWW)
"  makes it easy to type them without typos  ;-)
  ab Amaili guckes@inf.fu-berlin.de
  ab Amailm guckes@math.fu-berlin.de
  ab Amailv guckes@vim.org
  ab Amailz guckes@zedat.fu-berlin.de
  ab MYADDR guckes@math.fu-berlin.de
  ab MYNAME Sven Guckes
"
" Setting the reply address when replying as the guy from SKB:
  ab ASKB   Sprachboerse <sprachboerse@tu-berlin.de>
" See also: http://www.math.fu-berlin.de/~guckes/skb/
"
"  My Home Pages at the departments at the FUB
"
  ab WWWm   http://www.math.fu-berlin.de/~guckes/
  ab WWWi   http://www.inf.fu-berlin.de/~guckes/
  ab WWWz   http://userpage.zedat.fu-berlin.de/~guckes/
"
" WWW Pages base URLs
"
  ab HPA   http://www.math.fu-berlin.de/~guckes/afw/
  ab HPa   http://www.math.fu-berlin.de/~guckes/ascii/
  ab HPc   http://www.math.fu-berlin.de/~guckes/calvin/
  ab HPD   http://www.math.fu-berlin.de/~guckes/dos/
  ab HPe   http://www.math.fu-berlin.de/~guckes/eplus/ab.faq.html
  ab HPE   http://www.math.fu-berlin.de/~guckes/elm/
  ab HPI   http://www.math.fu-berlin.de/~guckes/irc/
  ab HPi   http://www.math.fu-berlin.de/~guckes/ispell/
  ab HPL   http://www.math.fu-berlin.de/~guckes/lynx/
  ab HPl   http://www.math.fu-berlin.de/~guckes/less/
  ab HPm   http://www.math.fu-berlin.de/~guckes/mail/
  ab HPM   http://www.math.fu-berlin.de/~guckes/mutt/
  ab HPN   http://www.math.fu-berlin.de/~guckes/nn/
  ab HPP   http://www.math.fu-berlin.de/~guckes/pine/
  ab HPp   http://www.math.fu-berlin.de/~guckes/procmail/
  ab HPr   http://babayaga.math.fu-berlin.de/~rxvt/
  ab HPR   http://www.math.fu-berlin.de/~guckes/rfc/
  ab HPs   http://www.math.fu-berlin.de/~guckes/screen/
  ab HPS   http://www.math.fu-berlin.de/~guckes/slrn/
  ab HPv   http://www.math.fu-berlin.de/~guckes/vi/
"    HPOV - the "original" URL of the Vim Home Page!
  ab HPOV  http://www.math.fu-berlin.de/~guckes/vim/
  ab HPV   http://www.vim.org/
  ab HPX   http://www.math.fu-berlin.de/~guckes/xmas/
  ab HPZ   http://www.math.fu-berlin.de/~guckes/zsh/
"
" Other important WWW addresses
"
  ab URLutefuchs  http://www.math.fu-berlin.de/~utefuchs/
  ab URLaltavista http://altavista.digital.com/
  ab URLftpsearch http://ftpsearch.ntnu.no/ftpsearch/
  ab URLvimfaq    http://www.grafnetix.com/~laurent/vim/faq.html
  ab URLbambi     http://www.math.fu-berlin.de/~leitner/CnH/bambi.html
  ab URLsecret    http://www.math.fu-berlin.de/~leitner/CnH/secret.html
  ab URLwhome     http://www.math.fu-berlin.de/~leitner/CnH/who.me.html
  ab URLstopspam  http://www.math.fu-berlin.de/~guckes/pics/stop.this.spam.jpg
  ab FTPFUB        ftp://ftp.fu-berlin.de/
  ab FTPVIM        ftp://ftp.fu-berlin.de/pub/misc/editors/vim/
"
" ===================================================================
" Abbreviations - Header Lines for Email and News
" ===================================================================
" Define regexpr for headers to use with mappings
" as it makes reading the mappings much easier:
" cab HADDR     From\\|Cc\\|To
  cab HEMAIL ^\(From\\|Cc\\|To\\|Date\\|Subject\\|Message-ID\\|Message-Id\\|X-\)
  cab HNEWS  ^\(From\\|Cc\\|To\\|Date\\|Subject\\|Message-ID\\|X-\\|Newsgroups\)
"
" ===================================================================
" Abbreviations - General Editing - Inserting Dates and Times
" ===================================================================
"
" First, some command to add date stamps (with and without time).
" I use these manually after a substantial change to a webpage.
" [These abbreviations are used with the mapping for ",L".]
"
  iab Ydate <C-R>=strftime("%y%m%d")<CR>
" Example: 971027
"
  iab Ytime <C-R>=strftime("%H:%M")<CR>
" Example: 14:28
"
  iab YDT   <C-R>=strftime("%y%m%d %T")<CR>
" Example: 971027 12:00:00
"
  iab YDATE <C-R>=strftime("%a %b %d %T %Z %Y")<CR>
" Example: Tue Dec 16 12:07:00 CET 1997
"
" On Windows the functions "strftime" seems to have a different
" format.  Therefore the following may be necessary:  [980730]
" if !has("unix")
" iab YDATE <C-R>=strftime("%c %a")<CR>
" else
" iab YDATE <C-R>=strftime("%D %T %a")<CR>
" endif
"
" ===================================================================
" MAPpings
" ===================================================================
" Caveat:  Mapping must be "prefix free", ie no mapping must be the
" prefix of any other mapping.  Example:  "map ,abc foo" and
" "map ,abcd bar" will give you the error message "Ambigous mapping".
"
" The backslash ('\') is the only(?) unmapped key, so this is the best
" key to start mappings with as this does not take away a command key.
" However, the backslash is never in the same position with keyboards.
" Eg on German keyboards it is AltGr-sz - don't ask.
" Anyway, I have decided to start mappings with the comma as this
" character is always on the same position on almost all keyboards
" and I hardly have a need for that command.
"
" The following maps get rid of some basic problems:
"
" With Vim-4 the format command was just 'Q' and
" I am too used to it.  So I need this back!
  nnoremap Q gq
  vnoremap Q gq
"
" 980527 I often reformat a paragraph to fit some textwidth -
" and I use the following mapping to adjust it to the
" current position of the cursor:
  map #tw :set textwidth=<C-R>=col(".")<C-M>
"
" 981210 Whenever I paste some text into VIM I have to
" toggle from "nopaste" to "paste" and back again:
" map <f4>   :set paste!<c-m>:set paste?<c-m>
  map <esc>[14~ :set paste!<c-m>:set paste?<c-m>
"
" "tal" is the "trailer alignment" filter program
" Hopefully it will ship with Vim one day.
" vmap #t !tal<CR>
" vmap #t !tal -p 0<CR>
"
" Disable the command 'K' (keyword lookup) by mapping it
" to an "empty command".  (thanks, Lawrence! :-):
" map K :<CR>
  map K :<BS>
"
" Disable the suspend for ^Z.
" I use Vim under "screen" where a suspend would lose the
" connection to the " terminal - which is what I want to avoid.
"  map <C-Z> :shell
"
" Make CTRL-^ rebound to the *column* in the previous file
  noremap <C-^> <C-^>`"
"
" Make "gf" rebound to last cursor position (line *and* column)
  noremap gf gf`"
"
" When I let Vim write the current buffer I frequently mistype the
" command ":w" as ":W" - so I have to remap it to correct this typo:
  nmap :W :w
  nmap :Q :q
" use <F6> to toggle line numbers
  nmap <silent> <F6> :set number!<CR>
" page down with <Space>
  nmap <Space> <PageDown>
"
" Are you used to the Unix commands "alias" and "which"?
" I sometimes use these to look up my abbreviations and mappings.
" So I need them available on the command line:
  map :alias map
  map :which map
"
" The command {number}CTRL-G show the current nuffer number, too.
" This is yet another feature that vi does not have.
" As I always want to see the buffer number I map it to CTRL-G.
" Pleae note that here we need to prevent a loop in the mapping by
" using the comamnd "noremap"!
  noremap <C-G> 2<C-G>
"
" 980311  Sourcing syntax files
" My personal syntax files are in ~/.P/vim/syntax/
" and I need a quick way to edit and source them.
" map ,SO :so ~/.P/vim/syntax/
"
"
" 980706  Sourcing syntax files from the distribution
" A nice and fast way to both source syntax files
" and to take a look at "what's there":
  map ,V  :so $VIM/syntax/
"
  map <F11>  :sp tags<CR>:%s/^\([^     :]*:\)\=\([^    ]*\).*/syntax keyword Tag \2/<CR>:wq! tags.vim<CR>/^<CR><F12>
  map <F12>  :so tags.vim<CR>
" ===================================================================
" Customizing the command line
" ===================================================================
" Valid names for keys are:  <Up> <Down> <Left> <Right> <Home> <End>
" <S-Left> <S-Right> <S-Up> <PageUp> <S-Down> <PageDown>  <LeftMouse>
"
" Many shells allow editing in "Emacs Style".
" Although I love Vi, I am quite used to this kind of editing now.
" So here it is - command line editing commands in emacs style:
  cnoremap <C-A> <Home>
  cnoremap <C-F> <Right>
  cnoremap <C-B> <Left>
" cnoremap <C-E> <End>
  cnoremap <ESC>b <S-Left>
  cnoremap <ESC>f <S-Right>
  cnoremap <ESC><C-H> <C-W>
"
" Additional codes for that "English" keyboard at the Xterminal
  cnoremap <ESC>[D <S-Left>
  cnoremap <ESC>[C <S-Right>
"
" Some editing is helpful in insert mode, too:
  inoremap <C-F> <Right>
  inoremap <C-B> <Left>
"
" Make the up and down movements move by "display/screen lines":
"      map j      gj
"      map <Down> gj
"      map k      gk
"      map <Up>   gk
"
" ===================================================================
" VIM - Editing and updating the vimrc:
" As I often make changes to this file I use these commands
" to start editing it and also update it:
  if has("unix")
    let vimrc='~/.vimrc'
  else
" ie:  if has("dos16") || has("dos32") || has("win32")
    let vimrc='$VIM\_vimrc'
  endif
  nn  ,u :source <C-R>=vimrc<CR><CR>
  nn  ,v :edit   <C-R>=vimrc<CR><CR>
"     ,v = vimrc editing (edit this file)
" map ,v :e ~/.vimrc<CR>
"     ,u = "update" by reading this file
" map ,u :source ~/.vimrc<CR>
" ===============================================================
"
" General Editing
"
" Define "del" char to be the same backspace (saves a LOT of trouble!)
" As the angle notation cannot be use with the LeftHandSide
" with mappings you must type this in *literally*!
" map <C-V>127 <C-H>
" cmap <C-V>127 <C-H>
" the same for Linux Debian which uses 
" imap <Esc>[3~ <C-H>
" imap        <C-H>
set t_kb=
set t_kD=[3~
"
"      ;rcm = remove "control-m"s - for those mails sent from DOS:
  cmap ;rcm %s/<C-M>//g
"
"     Make whitespace visible:
"     Sws = show whitespace
  nmap ,Sws :%s/ /_/g<C-M>
  vmap ,Sws :%s/ /_/g<C-M>
"
"     Sometimes you just want to *see* that trailing whitespace:
"     Stws = show trailing whitespace
  nmap ,Stws :%s/  *$/_/g<C-M>
  vmap ,Stws :%s/  *$/_/g<C-M>
"
" General Editing - Turning umlauts into ascii (for German keyboards)
"
" imap ä ae
" imap ö oe
" imap ü ue
" imap ß ss
"
" &#196; -> Ä  :%s/\&#196;/Ä/gc  -> D
" &#214; -> Ö  :%s/\&#214;/Ö/gc  -> V
" &#220; -> Ü  :%s/\&#220;/Ü/gc  -> \
" &#228; -> ä  :%s/\&#228;/ä/gc  -> d
" &#246; -> ö  :%s/\&#246;/ö/gc  -> v
" &#252; -> ü  :%s/\&#252;/ü/gc  -> |
"
" ===================================================================
" Inserting Dates and Times / Updating Date+Time Stamps
" ===================================================================
"     ,L  = "Last updated" - replace old time stamp with a new one
"        preserving whitespace and using internal "strftime" command:
"       requires the abbreviation  "YDATE"
  map ,L  1G/Last update:\s*/e+1<CR>CYDATE<ESC>
  map ,,L 1G/Last change:\s*/e+1<CR>CYDATE<ESC>
" Example:
" before:  "Last update:   Thu Apr  6 12:07:00 CET 1967"
" after:   "Last update:   Tue Dec 16 12:07:00 CET 1997"
"
"     ,L  = "Last updated" - replace old time stamp with a new one
"        using external "date" command (not good for all systems):
" map ,L 1G/Last update: */e+1<CR>D:r!date<CR>kJ
"
" ===================================================================
" General Editing - link to program "screen"
" ===================================================================
"
"       ,Et = edit temporary file of "screen" program
  map   ,Et :e /tmp/screen-exchange
"       as a user of Unix systems you *must* have this program!
"       see also:  http://www.math.fu-berlin.de/~guckes/screen/
"
" Email/News - Editing replies/followups
"
" Part 1 - prepare for editing
"
" Part 2 - getting rid of empty (quoted) lines and space runs.
"
"      ,cel = "clear empty lines"
"       - delete the *contents* of all lines which contain only whitespace.
"         note:  this does not delete lines!
" map ,cel :g/^[<C-I> ]*$/d
  map ,cel :%s/^\s\+$//
"      ,del = "delete 'empty' lines"
"       - delete all lines which contain only whitespace
"         note:  this does *not* delete empty lines!
  map ,del :g/^\s\+$/d
"
"      ,cqel = "clear quoted empty lines"
"       Clears (makes empty) all lines which start with '>'
"       and any amount of following spaces.
" nmap ,cqel :%s/^[> ]*$//
" vmap ,cqel  :s/^[> ]*$//
" nmap ,cqel :%s/^[><C-I> ]\+$//
" vmap ,cqel  :s/^[><C-I> ]\+$//
  nmap ,cqel :%s/^[>]\+$//
  vmap ,cqel  :s/^[><C-I> ]\+$//
" NOTE: If the meta sequence "\s" 
" The following do not work as "\s" is not a character
" and thus cannot be part of a "character set".
"  map ,cqel  :g/^[>\s]\+$/d
"
" Some people have strange habits within their writing.
" But if you cannot educate them - rewrite their text!  ;-)
"
" Jason "triple-dots" King elephant@onaustralia.com.au
" does uses ".." or "..." rather than the usual punctuation
" (comma, semicolon, colon, full stop). So...
"
" Turning dot runs with following spaces into an end-of-sentence,
" ie dot-space-space:
  vmap ,dot :s/\.\+ \+/.  /g
"
" Gary Kline (kline@tera.tera.com) indents his
" own text in replies with TAB or spaces.
" Here's how to get rid of these indentation:
  vmap ,gary :s/^>[ <C-I>]\+\([^>]\)/> \1/
"
"      ,ksr = "kill space runs"
"             substitutes runs of two or more space to a single space:
" nmap ,ksr :%s/  */ /g
" vmap ,ksr  :s/  */ /g
  nmap ,ksr :%s/  \+/ /g
  vmap ,ksr  :s/  \+/ /g
" Why can't the removal of space runs be
" an option of "text formatting"? *hrmpf*
"
"    ,Sel = "squeeze empty lines"
"    Convert blocks of empty lines (not even whitespace included)
"    into *one* empty line (within current visual):
   map ,Sel :g/^$/,/./-j
"
"    ,Sbl = "squeeze blank lines"
"    Convert all blocks of blank lines (containing whitespace only)
"    into *one* empty line (within current visual):
"  map ,Sbl :g/^\s*$/,/[^ <c-i>]/-j
"  map ,Sbl :g/^\s*$/,/[^ \t]/-j
   map ,Sbl :g/^\s*$/,/\S/-j
"
" ===================================================================
" Editing of email replies and Usenet followups - using autocommands
" ===================================================================
"
" Remove ALL auto-commands.  This avoids having the
" autocommands twice when the vimrc file is sourced again.
  autocmd!
"
" Let Vim identify itself when editing emails with Mutt:
au! BufNewFile mutt* let @"="X-Editor: Vim-".version." http://www.vim.org\n"|exe 'norm 1G}""P'
"
" set the textwidth to 70 characters for replies (email&usenet)
  au BufNewFile,BufRead .letter,mutt*,nn.*,snd.* set tw=78
"
" Try to use the mapping ",D" when doing a followup.
" autocmd BufNewFile ~/.followup ,D|
"
" Part 3 - Change Quoting Level
"
"      ,dp = de-quote current inner paragraph
"  map ,dp {jma}kmb:'a,'bs/^> //<CR>
   map ,dp vip:s/^> //<CR>
  vmap ,dp    :s/^> //<CR>
"
"      ,qp = quote current paragraph
"            jump to first inner line, mark with 'a';
"            jump to last  inner line, mark with 'b';
"            then do the quoting as a substitution
"            on the line range "'a,'b":
"  map ,qp {jma}kmb:'a,'bs/^/> /<CR>
"      vim-5 now has selection of "inner" and "all"
"      of current text object - mapping commented!
"
"      ,qp = quote current paragraph (old version)
"            jump to first inner line, Visual,
"            jump to last  inner line,
"            then do the quoting as a substitution:
"  map ,qp {jV}k:s/^/> /<CR>
"
"      ,qp = quote current inner paragraph (works since vim-5.0q)
"            select inner paragraph
"            then do the quoting as a substitution:
   map ,qp   vip:s/^/> /<CR>
"
"      ,qp = quote current paragraph
"            just do the quoting as a substitution:
  vmap ,qp    :s/^/> /<CR>

"
" Changing quote style to *the* true quote prefix string "> ":
"
"       Fix Supercite aka PowerQuote (Hi, Andi! :-):
"       before ,kpq:    >   Sven> text
"       after  ,kpq:    > > text
"      ,kpq kill power quote
  vmap ,kpq :s/^> *[a-zA-Z]*>/> >/<C-M>
"
"       Fix various other quote characters:
"      ,fq "fix quoting"
  vmap ,fq :s/^> \([-":}\|][ <C-I>]\)/> > /
"
" Part 4 - Weed Headers of quoted mail/post
"
" These mappings make use of the abbreviation that define a list of
" Email headers (HEMAIL) and News headers (HNEWS):
  nmap ,we vip:v/HEMAIL/d
  vmap ,we    :v/HEMAIL/d
  nmap ,wp vip:v/HNEWS/d
  vmap ,wp    :v/HNEWS/d
"
" Old versions for vim-4.6:
"      ,we = "weed email header"
" nmap ,we !ipegrep "^(Date:\|From \|From:\|Subject:\|To:\|$)"
" vmap ,we   !egrep "^(Date:\|From \|From:\|Subject:\|To:\|$)"
"      ,wp = "weed post header"
" nmap ,wp !ipegrep "^(Date:\|From:\|Subject:\|Newsgroups:\|Followup-To:\|Keywords:\|References:\|Message-ID\|$)"
" vmap ,wp   !egrep "^(Date:\|From:\|Subject:\|Newsgroups:\|Followup-To:\|Keywords:\|References:\|Message-ID\|$)"
"
"      ,ri = "Read in" basic lines from the email header
"            Useful when replying to an email:
" nmap ,ri :r!readmsg\|egrep "^From:\|^Subject:\|^Date:\|^To: \|^Cc:"
"            NOTE: "readmsg" ships with the mailer ELM.
"
"
" Part 5 - Reformatting Text
"
"  NOTE:  The following mapping require formatoptions to include 'r'
"    and "comments" to include "n:>" (ie "nested" comments with '>').
"
" Formatting the current paragraph according to
" the current 'textwidth' with ^J (control-j):
  imap <C-J> <c-o>gqap
   map <C-J> gqap
"
"      ,b = break line in commented text (to be used on a space)
" nmap ,b dwi<CR>> <ESC>
  nmap ,b r<CR>
"      ,j = join line in commented text
"           (can be used anywhere on the line)
" nmap ,j Jxx
  nmap ,j Vjgq
"
"      ,B = break line at current position *and* join the next line
" nmap ,B i<CR>><ESC>Jxx
  nmap ,B r<CR>Vjgq
"
"      ,,, break current line at current column,
"          inserting ellipsis and "filling space":
" nmap ,,,  ,,1,,2
" nmap ,,1  a...X...<ESC>FXr<CR>lmaky$o<CC-R>"<ESC>
" nmap ,,2  :s/./ /g<C-M>3X0"yy$dd`a"yP
"
"
" ===================================================================
" Edit your reply!  (Or else!)
" ===================================================================
"
" Part 6  - Inserting Special or Standard Text
" Part 6a - The header

"    Add adresses for To: and Cc: lines
"
"     ,ca = check alias (reads in expansion of alias name)
" map ,ca :r!elmalias -f "\%v (\%n)"
"     ,Ca = check alias (reads in expansion of alias name)
" map ,Ca :r!elmalias -f "\%n <\%v>"
"
"   ,cc = "copy notice"
"   Insert a Cc line so that person will receive a "courtesy copy";
"   this tells the addressee that text is a copy of a public article.
"   This assumes that there is exactly one empty line after the first
"   paragraph and the first line of the second paragraph contains the
"   return address with a trailing colon (which is later removed).
  map ,cc 1G}jyykPICc: <ESC>$x
" map ,cc ma1G}jy/ writes<CR>'aoCc: <ESC>$p
"
"     ,mlu = make letter urgent  (by giving the "Priority: urgent")
  map ,mlu 1G}OPriority: urgent<ESC>
"
"               Fixing the From: line
"
"     ,cS = change Sven's address.
  map ,cS 1G/^From: Sven Guckes/e+2<CR>C<Amailv><ESC>
"     Used when replying as the "guy from vim".
"
"               Fixing the Subject line
"
"    Pet peeve:  Unmeaningful Subject lines.  Change them!
"     ,cs = change Subject: line
  map ,cs 1G/^Subject: <CR>yypIX-Old-<ESC>-W
"    This command keeps the old Subject line in "X-Old-Subject:" -
"    so the recipient can still search for it and
"    you keep a copy for editing.
"
"
"     ,re : Condense multiple "Re:_" to just one "Re:":
  map ,re 1G/^Sub<CR>:s/\(Re: \)\+/Re: /<CR>
"
"     ,Re : Change "Re: Re[n]" to "Re[n+1]" in Subject lines:
  map ,Re 1G/^Subject: <C-M>:s/Re: Re\[\([0-9]\+\)\]/Re[\1]/<C-M><C-A>
"
" Put parentheses around "visual text"
"      Used when commenting out an old subject.
"      Example:
"      Subject: help
"      Subject: vim - using autoindent (Re: help)
"
"      ,) and ,( :
  vmap ,( v`<i(<ESC>`>a)<ESC>
  vmap ,) v`<i(<ESC>`>a)<ESC>
"
" Part 6  - Inserting Special or Standard Text
" Part 6a - Start of text - saying "hello".
"
"     ,hi = "Hi!"        (indicates first reply)
  map ,hi 1G}oHi!<CR><ESC>
"
"     ,ha = "helloagain"  (indicates reply to reply)
  map ,ha 1G}oHello, again!<CR><ESC>
"
"     ,H = "Hallo, Du!"  (German equivalent of "hi!" for replies)
  map ,H G/Quoting /e+1<CR>ye1G}oHallo, !<ESC>Po<ESC>
"
"
" Part 6  - Inserting Special or Standard Text
" Part 6b - End of text - dealing with "signatures".
"
"       remove signatures
"
"     ,kqs = kill quoted sig (to remove those damn sigs for replies)
"          goto end-of-buffer, search-backwards for a quoted sigdashes
"          line, ie "^> -- $", and delete unto end-of-paragraph:
  map ,kqs G?^\(\s*[>}]\s*\)\+--\s\=$<CR>d}gg/^$<CR>j
" map ,kqs G?^\(\s*[>}]\s*\)\+--\s\=$<CR>d}
" map ,kqs G?^> *-- $<CR>dG
"     ,kqs = kill quoted sig unto start of own signature:
" map ,kqs G?^> *-- $<CR>d/^-- $/<C-M>
"
"      ,aq = "add quote"
"            Reads in a quote from my favourite quotations:
  nmap ,aq :r!agrep -d "^-- $" ~/.P/quotes/collection<ESC>b
" see http://www.math.fu-berlin.de/~guckes/quotes/collection
"
"      ,s = "sign" -
"           Read in signature file (requires manual completion):
  nmap ,s :r!agrep -d "^-- $" ~/.P/sig/SIGS<S-Left>
"
" available as http://www.math.fu-berlin.de/~guckes/sig/SIGS
"
"      ,S = signature addition of frequently used signatures
  nmap ,SE :r!agrep -d "^-- $" comp.mail.elm ~/.P/sig/SIGS<S-Left>
  nmap ,SM :r!agrep -d "^-- $" WOOF ~/.P/sig/SIGS<S-Left>
  nmap ,SV :r!agrep -d "^-- $" IMproved ~/.P/sig/SIGS<S-Left>
"
"      ,at = "add text" -
"            read in text file (requires manual completion):
  nmap ,at :r ~/.P/txt/
"
" MUTT: Auto-kill signatures for replies
" map ,kqs G?^> *-- $<C-M>dG
" autocmd BufNewFile,BufRead .followup,.letter,mutt*,nn.*,snd.* :normal ,kqs
"
" At the end of editing your reply you should check your spelling
" with the spelling checker "ispell".
" These mappings are from Lawrence Clapp lclapp@iname.com:
" spellcheck the document -- skip quoted text
" nmap <F5> :w ! grep -v '^>' \| spell<CR>
" vmap <F5> :w ! grep -v '^>' \| spell<CR>
" At home under Linux it looks something more like this:
" nmap <F5> :w ! grep -v '^>' \| ispell -???<CR>
"
"  Tell the recipient that I was replying to an old email of his:
  ab SvenR Sven  [finally takeing the time to reply to old emails]
"
" Toggles:  [todo]
"
" toggle autoindent
" toggle hlsearch
" cycle textwidth between values 60, 70, 75, 80
"
" ===================================================================
" HTML - HTML - HTML - HTML - HTML - HTML - HTML - HTML
" ===================================================================
" This has become quite big - so I moved it out to another file:
" http://www.math.fu-berlin.de/~guckes/vim/source/html.vim [980227]
"  source /usr/share/vim/vim70/syntax/html.vim 
"
" ===================================================================
" LaTeX - LaTeX - LaTeX - LaTeX - LaTeX - LaTeX - LaTeX
" ===================================================================
" This has become quite big - so I moved it out to another file:
" http://www.math.fu-berlin.de/~guckes/vim/source/latex.vim
" source ~guckes/.P/vim/source/latex.vim
"
" ===================================================================
" PGP - encryption and decryption
" ===================================================================
"
" encrypt
  map ;e :%!/bin/sh -c 'gpg -sea 2>/dev/tty'  
" decrypt
  map ;d :/^-----BEG/,/^-----END/!/bin/sh -c 'gpg -d 2>/dev/tty'
" sign
  map ;s :,$! /bin/sh -c 'gpg --clearsign 2>/dev/tty'
  map ;v :,/^-----END/w !pgp -m
"
" PGP - original mappings
"
"       encrypt and sign (useful for mailing to someone else)
"csh: map #1 :,$! /bin/sh -c 'pgp -feast 2>/dev/tty^V|^V|sleep 4'
" sh: map #1 :,$! pgp -feast 2>/dev/tty^V|^V|sleep 4
"
"       sign (useful for mailing to someone else)
"csh: map #2 :,$! /bin/sh -c 'pgp -fast +clear 2>/dev/tty'
" sh: map #2 :,$! pgp -fast +clear 2>/dev/tty
"
"       decrypt
"csh: map #3 :/^-----BEG/,/^-----END/!\
"             /bin/sh -c 'pgp -f 2>/dev/tty^V|^V|sleep 4'
" sh: map #3 :/^-----BEG/,/^-----END/!\
"             pgp -f 2>/dev/tty^V|^V|sleep 4
"
"       view (pages output, like more)
"csh: map #4 :,/^-----END/w !pgp -m
" sh: map #4 :,/^-----END/w !pgp -m
"
"       encrypt alone (useful for encrypting for oneself)
"csh: map #5 :,$! /bin/sh -c 'pgp -feat 2>/dev/tty^V|^V|sleep 4'
" sh: map #5 :,$! pgp -feat 2>/dev/tty^V|^V|sleep 4
"
" Elijah http://www.mathlab.sunysb.edu/~elijah/pgppub.html says :
" The significant feature is that stderr is redirected independently
" of stdout, and it is redirected to /dev/tty which is a synonym for
" the current terminal on Unix.  I don't know why the ||sleep 4
" stuff is there, but it is harmless so I left it. Since csh is such
" junk, special rules are used if you are using it (tcsh, too).
" ksh and bash should use the sh form. zsh, et al: consult your
" manual.  The #<num> format is used to map function keys. If your
" terminal does not support the requested function key, use a
" literal #<num>.  Not all of the clones correctly support this.
"
" ===================================================================
" Useful stuff.  At least these are nice examples.  :-)
" ===================================================================
"
"     ,t = transpose two characters: from aXb -> bXa
" map ,t XplxhhPl
" This macros shortened by one character by
" Preben Guldberg c928400@student.dtu.dk
" map ,t XpxphXp
" map ,t xphXpxp
"
" make space move the cursor to the right - much better than a *beep*
" nmap \  l
"
"     ,E = execute line
" map ,E 0/\$<CR>w"yy$:<C-R>y<C-A>r!<C-E>
" This command excutes a shell command from the current line and
" reads in its output into the buffer.  It assumes that the command
" starts with the fist word after the first '$' (the shell prompt
" of /bin/sh).  Try ",E" on that line, ie place the cursor on it
" and then press ",E":
" $ ls -la
" Note: The command line commands have been remapped to tcsh style!!
"
"
"      ,dr = decode/encode rot13 text
  vmap ,dr :!tr A-Za-z N-ZA-Mn-za-m

"       Use this with an external "rot13" script:
"       "    ,13 - rot13 the visual text
"       vmap ,13 :!rot13<CR>
"
" Give the URL under the cursor to Netscape
" map ,net yA:!netscape -remote "openurl <C-R>""
"
"
" ===================================================================
" ===================================================================
" Buffer commands (split,move,delete) -
" this makes a little more easy to deal with buffers.
" (works for Linux PCs in room 030)
" map <F4>  :split<C-M>
" map <F5>  :bp<C-M>
" map <F6>  :bn<C-M>
" map <F12> :bd<C-M>
"
" Buffer commands (split,move,delete) -
" for Mac keyboard (Performa 5200, US keyboard)
"
  map <ESC>[19~ :split<C-M>
  map <ESC>[20~ :bp<C-M>
  map <ESC>[23~ :bn<C-M>
  map <ESC>[31~ :bd<C-M>
"
" Obvious mappings
"
" map <PageUp>   <C-B>
" map <PageDown> <C-F>
"
" Emacs style editing in insert mode
" This is something I tried for a minute
" and forgot about the minute after. ;-)
"
" imap <C-A>  <ESC>0i
" imap <C-B>  <ESC>hi
" imap <C-D>  <ESC>xi
" imap <C-E>  <ESC>A
" imap <C-F>  <ESC>lli
" imap <C-N>  <ESC>jli
" imap <C-P>  <ESC>kli
" imap <ESC>b <ESC>bi
" imap <ESC>f <ESC>lWi
"
" Normal mode - tcsh style movements [960425]
"
" nmap <C-A>  0
" nmap <C-B>  h
" nmap <C-D>  x
" nmap <C-E>  $
" nmap <C-F>  l
" nmap <ESC>b b
" nmap <ESC>f w
"
" DOS keyboard mapping for cursor keys
"
"  map <ESC>[A <Up>
"  map <ESC>[B <Down>
"  map <ESC>[C <Right>
"  map <ESC>[D <Left>
" imap <ESC>[A <Up>
" imap <ESC>[B <Down>
" imap <ESC>[C <Right>
" imap <ESC>[D <Left>
"
" DOS keyboard
" "insert"
"  map <ESC>[1~ i
"  map <ESC>[1~ <insert>
" "home"
"  map <ESC>[2~ ^
"  map <ESC>[2~ 0
"  map <ESC>[2~ <Home>
" "pgup"
"  map <ESC>[3~ <C-B>
"  map <ESC>[3~ <PageUp>
" "delete"
"  map <ESC>[4~ x
"  map <ESC>[4~ <Del>
" "end"
"  map <ESC>[5~ $
"  map <ESC>[5~ <END>
" "pgdn"
"  map <ESC>[6~ <C-F>
"  map <ESC>[6~ <PageDown>
"
" Keyboard mapping for cursor keys
" [works for SUNs in Solarium (room 030) - 970815]
"
   map <ESC>OA <Up>
   map <ESC>OB <Down>
   map <ESC>OC <Right>
   map <ESC>OD <Left>
  imap <ESC>OA <Up>
  imap <ESC>OB <Down>
  imap <ESC>OC <Right>
  imap <ESC>OD <Left>
"
" Keyboard mapping for cursor keys
" [works for XTerminals - 970818]
   map <ESC>[A <Up>
   map <ESC>[B <Down>
   map <ESC>[C <Right>
   map <ESC>[D <Left>
  imap <ESC>[A <Up>
  imap <ESC>[B <Down>
  imap <ESC>[C <Right>
  imap <ESC>[D <Left>
"
  imap <C-F> <C-X><C-O>
" ===================================================================
" AutoCommands
" ===================================================================
"
" Autocommands are the key to "syntax coloring".
" There's one command in your vimrc that should
" load/source the file $VIM/syntax/syntax.vim
" which contains the definition for colors and
" the autocommands that load other syntax files
" when necessary, ie when the filename matches
" a given pattern, eg "*.c" or *".html".
"
" just load the main syntax file when Vim was compiled with "+syntax"
  if has("syntax")
    " define my own syntax file (to be sourced t the end of syntax.vim):
    " let mysyntaxfile="~guckes/.P/vim/syntax/syntax.vim"
    " URL: http://www.math.fu-berlin.de/~guckes/vim/syntax/syntax.vim
    " The main/standard syntax file:
      so /usr/share/vim/vim74/syntax/syntax.vim
    "
    " Use my own syntax file on "mail/news messages":
      let aucommand = "au BufNewFile,BufRead ".MAILNEWSFILES
    " exe aucommand." source ~guckes/.P/vim/syntax/sven.vim"
    "
      hi! Comment  term=bold  ctermfg=Grey guifg=Blue
  endif
"
"
" EXAMPLE: Restricting mappings to some files only:
" An autocommand does the macthign on the filenames -
" but abbreviations are not expanded within autocommands.
" Workaround:  Use "exe" for expansion:
" let aucommand = "au BufNewFile,BufRead ".MAILNEWSFILES
" exe aucommand." :map ,hi 1G}oHi!<CR><ESC>"
" exe aucommand." :map ,ha 1G}oHello, again!<CR><ESC>"
" exe aucommand." :map ,H G/Quoting /e+1<CR>ye1G}oHallo, !<ESC>Po<ESC>"
" exe aucommand." :map ,re 1G}oRe!<CR><ESC>"
"
" Automatically place the cursor onto the first line of the mail body:
" autocmd BufNewFile,BufRead MAILNEWSFILES :normal 1G}j
"
" Toggle syntax coloring on/off with "__":
" nn __ mg:if has("syntax_items")<Bar>syn clear<CR>else<Bar>syn on<CR>en<CR>`g
" Note:  It works - but the screen flashes are quite annoying.  :-/
"
"
" ===================================================================
" EXAMPLES
" ===================================================================
"
" Visualizing trailing whitespace:
" :set hls
" /\s\+$
"
" Toggling a numerical variable between two values.
" Example:  Switch the textwidth (tw) between values "70" and "80":
" map \1 :let &tw = 150 - &tw<CR>
"
" Capitalizing the previously typed word,
" returning to the previous position:
" imap CAP <ESC>mzB~`za
"
" Uppercasing the previously typed word,
" returning to the previous position:
" imap CAP <ESC>mzvBU`za
" imap CAP <ESC>mzBvaWU`za
"
" ===================================================================
" TEMPORARY STUFF - TESTING THINGS
" ===================================================================
"
"   View a html document (or part of it) with lynx. You need
"   a system that supports the /def/fd/* file descriptors :-(
"nmap ,ly :w !lynx -force_html /dev/fd/0<CR>
"vmap ,ly :w !lynx -force_html /dev/fd/0<CR>
"
" Fri Jun 19 19:19:19 CEST 1998
" Hi, Vikas! vikasa@att.com
" The <Left> key produces the code "<Esc>OD" and Vikas wants to make
" Vim jump back one word in normal mode, ie using the command 'b':
" nmap <Esc>OD b
" Works for me!  :-)
"
" Some simple example of the "expand modifiers":
" insert the current filename *with* path:
  iab YPATHFILE <C-R>=expand("%:p")<cr>
" insert the current filename *without* path:
  iab YFILE <C-R>=expand("%:t:r")<cr>
" insert the path of current file:
  iab YPATH <C-R>=expand("%:h")<cr>
"
"     #b = "browse" - send selected URL to Netscape
 vmap #b y:!netscape -remote "openurl <C-R>""
"
" Toggle highlight search and report the current value:
" map #1 :set hls!<cr>
" map #2 :echo "HLSearch: " . strpart("OffOn",3*&hlsearch,3)<cr>
" map ## #1#2
"
" Sorting current line containing a list of numbers
" map ## :s/ /<C-M>/g<CR>vip!sort -n
"
" Replying to the mutt mailing list:
" Remove header lines Cc: and Bcc: and insert [mutt] at the beginning
" map ,MM 1G/^Cc:<CR>2dd}o[mutt]<CR>
"
" map ,U %s#<URL:\(.*\)>#<a href="\1"></a>#gc
" map ,F {jma}kmb:'a,'b!sed -e "s/^>//"<C-V><C-V>|\
"        sed -f ~/.P/elm/scripts/weedout.sed
" map ,mb ebi<CR><b><ESC>Ea</b><CR><ESC>dw
"
" stripping netscape bookmarks and making them list items
" vmap ,ns :.,$s/^ *<DT><\(A.*"\) ADD.*">\(.*\)$/<li> <\1><C-M><C-I>\2/
"
" Jump to the last space before the 80th column.
" map ,\| 80\|F 
"
" extracting variable names urom mutt's init.c
" :%s/^.*"\([a-z0-9_]*\)".*$/\1/
"
"     \<> = change to <> notation by substituting ^M and ^[
" cab \<> s/<C-V><ESC>/<ESC>/gc<C-M>:s/<C-V><C-M>/<C-M>/gc<C-M>
"
" Changing the From_ line in pseudo mail folders to an appropriate
"  value - so you can read them with a mailer.
" %s/^From /From guckes Thu Apr  6 12:07:00 1967/
"
" ===================================================================
" ASCII tables - you may need them some day.  Save them to a file!
" ===================================================================
"
" ASCII Table - | octal value - name/char |
"
" |000 nul|001 soh|002 stx|003 etx|004 eot|005 enq|006 ack|007 bel|
" |010 bs |011 ht |012 nl |013 vt |014 np |015 cr |016 so |017 si |
" |020 dle|021 dc1|022 dc2|023 dc3|024 dc4|025 nak|026 syn|027 etb|
" |030 can|031 em |032 sub|033 esc|034 fs |035 gs |036 rs |037 us |
" |040 sp |041  ! |042  " |043  # |044  $ |045  % |046  & |047  ' |
" |050  ( |051  ) |052  * |053  + |054  , |055  - |056  . |057  / |
" |060  0 |061  1 |062  2 |063  3 |064  4 |065  5 |066  6 |067  7 |
" |070  8 |071  9 |072  : |073  ; |074  < |075  = |076  > |077  ? |
" |100  @ |101  A |102  B |103  C |104  D |105  E |106  F |107  G |
" |110  H |111  I |112  J |113  K |114  L |115  M |116  N |117  O |
" |120  P |121  Q |122  R |123  S |124  T |125  U |126  V |127  W |
" |130  X |131  Y |132  Z |133  [ |134  \ |135  ] |136  ^ |137  _ |
" |140  ` |141  a |142  b |143  c |144  d |145  e |146  f |147  g |
" |150  h |151  i |152  j |153  k |154  l |155  m |156  n |157  o |
" |160  p |161  q |162  r |163  s |164  t |165  u |166  v |167  w |
" |170  x |171  y |172  z |173  { |174  | |175  } |176  ~ |177 del|
"
" ===================================================================
" ASCII Table - | decimal value - name/char |
"
" |000 nul|001 soh|002 stx|003 etx|004 eot|005 enq|006 ack|007 bel|
" |008 bs |009 ht |010 nl |011 vt |012 np |013 cr |014 so |015 si |
" |016 dle|017 dc1|018 dc2|019 dc3|020 dc4|021 nak|022 syn|023 etb|
" |024 can|025 em |026 sub|027 esc|028 fs |029 gs |030 rs |031 us |
" |032 sp |033  ! |034  " |035  # |036  $ |037  % |038  & |039  ' |
" |040  ( |041  ) |042  * |043  + |044  , |045  - |046  . |047  / |
" |048  0 |049  1 |050  2 |051  3 |052  4 |053  5 |054  6 |055  7 |
" |056  8 |057  9 |058  : |059  ; |060  < |061  = |062  > |063  ? |
" |064  @ |065  A |066  B |067  C |068  D |069  E |070  F |071  G |
" |072  H |073  I |074  J |075  K |076  L |077  M |078  N |079  O |
" |080  P |081  Q |082  R |083  S |084  T |085  U |086  V |087  W |
" |088  X |089  Y |090  Z |091  [ |092  \ |093  ] |094  ^ |095  _ |
" |096  ` |097  a |098  b |099  c |100  d |101  e |102  f |103  g |
" |104  h |105  i |106  j |107  k |108  l |109  m |110  n |111  o |
" |112  p |113  q |114  r |115  s |116  t |117  u |118  v |119  w |
" |120  x |121  y |122  z |123  { |124  | |125  } |126  ~ |127 del|
"
" ===================================================================
" ASCII Table - | hex value - name/char |
"
" | 00 nul| 01 soh| 02 stx| 03 etx| 04 eot| 05 enq| 06 ack| 07 bel|
" | 08 bs | 09 ht | 0a nl | 0b vt | 0c np | 0d cr | 0e so | 0f si |
" | 10 dle| 11 dc1| 12 dc2| 13 dc3| 14 dc4| 15 nak| 16 syn| 17 etb|
" | 18 can| 19 em | 1a sub| 1b esc| 1c fs | 1d gs | 1e rs | 1f us |
" | 20 sp | 21  ! | 22  " | 23  # | 24  $ | 25  % | 26  & | 27  ' |
" | 28  ( | 29  ) | 2a  * | 2b  + | 2c  , | 2d  - | 2e  . | 2f  / |
" | 30  0 | 31  1 | 32  2 | 33  3 | 34  4 | 35  5 | 36  6 | 37  7 |
" | 38  8 | 39  9 | 3a  : | 3b  ; | 3c  < | 3d  = | 3e  > | 3f  ? |
" | 40  @ | 41  A | 42  B | 43  C | 44  D | 45  E | 46  F | 47  G |
" | 48  H | 49  I | 4a  J | 4b  K | 4c  L | 4d  M | 4e  N | 4f  O |
" | 50  P | 51  Q | 52  R | 53  S | 54  T | 55  U | 56  V | 57  W |
" | 58  X | 59  Y | 5a  Z | 5b  [ | 5c  \ | 5d  ] | 5e  ^ | 5f  _ |
" | 60  ` | 61  a | 62  b | 63  c | 64  d | 65  e | 66  f | 67  g |
" | 68  h | 69  i | 6a  j | 6b  k | 6c  l | 6d  m | 6e  n | 6f  o |
" | 70  p | 71  q | 72  r | 73  s | 74  t | 75  u | 76  v | 77  w |
" | 78  x | 79  y | 7a  z | 7b  { | 7c  | | 7d  } | 7e  ~ | 7f del|
" ===================================================================
"
" ===================================================================
" If your read this...
" ===================================================================
" ... then please send me an email!  Thanks!  --Sven guckes@vim.org
" I have received some emails so far - thanks, folks!
" Enjoy Vim!  :-)
set expandtab
set wildmode=list:longest

nnoremap <F1> :exe ":!info ".expand("<cword>")
set foldmethod=syntax
let g:Header_name="Adam Tauber"
let g:Header_email="asciimoo@gmail.com"

" Toggle fold state between closed and opened.
"
" If there is no fold at current line, just moves forward.
" If it is present, reverse it's state.
fun! ToggleFold()
    if foldlevel('.') == 0
        normal! l
    else
        if foldclosed('.') < 0
            . foldclose
        else
            . foldopen
        endif
    endif
    " Clear status line
    echo
endfun

" Map this function to Space key.
noremap <space> :call ToggleFold()<CR> 

noremap! <Esc> <Esc>:match NONE<CR>

"autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
"autocmd BufRead *.py set tabstop=3

set encoding=utf-8
filetype plugin on
filetype indent on
syntax on

" ===================================================================
" Yet another example for an autocommand:  [980616]
" au VimLeave * echo "Thanks for using Vim"version". --Sven Guckes@vim.org!"
" ===================================================================
" Last but not least...
" =====================================================
" The last line is allowed to be a "modeline" with my setup.
" It gives vim commands for setting variable values that are
" specific for editing this file.  Used mostly for setting
" the textwidth (tw) and the "shiftwidth" (sw).
" Note that the colon within the value of "comments" needs to
" be escaped with a backslash!  (Thanks, Thomas!)
"       vim:tw=70 et sw=4 comments=\:\"


set so=10
let g:molokai_original = 1
colorscheme molokai
"hi Comment	guifg=yellow guibg=#000050 ctermfg=darkYellow
hi ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/ containedin=ALL
nnoremap <silent> <F6> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
set statusline+=%#warningmsg#
set statusline+=%*
let g:syntastic_enable_signs=1
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
let g:NERDTreeWinPos = "right"
set pastetoggle=<F2>
nnoremap <silent> <F3> :TlistToggle<CR>
nnoremap <silent> <F4> :NERDTreeToggle<CR>
nnoremap <F1> :set nonumber!<CR>
let g:posero_default_mappings = 1
highlight Pmenu ctermbg=grey gui=bold
" Execute a selection of code (very cool!)
" Use VISUAL to select a range and then hit ctrl-h to execute it.
python << EOL
import vim
def EvaluateCurrentRange():
    eval(compile('\n'.join(vim.current.range),'','exec'),globals())
EOL
map <C-d> :py EvaluateCurrentRange()
execute pathogen#infect()
set nonumber
" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

let g:pymode_rope = 0
let g:pymode_indent = 1

filetype plugin indent on

hi Normal ctermbg=NONE

let mapleader=" "
set wrap
