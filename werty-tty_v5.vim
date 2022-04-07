" Vim color file for tty terminals
" Maintainer: <mnosinov@gmail.com>

set background=dark
set t_Co=256
let g:colors_name="werty-tty"

"let python_highlight_all = 1

" Highlighting Function ------------------------------------------------------
function! s:HL(group, fg, ...)
    " Arguments: group, guifg, guibg, gui, guisp
    " see: vimdoc.sourceforge.net/htmldoc/syntax.html
    " group: e.g. - Normal, Keyword, Cursor, Identifier, SpecialKey,
    " 			SqlFunction, etc.
    " guifg - foreground color: e.g red is: ['ff0000', 9]
    " guibg - background color: e.g black is: ['000000', 0]
    " gui - text formatting: underline, undercurl, bold, italic, inverse, 
    " 		etc.: 'underline,bold'
    " guisp - color of undercurl, that is not always used for group

    let histring = 'hi ' . a:group . ' '

    if strlen(a:fg)
        if a:fg == 'fg'
            let histring .= 'guifg=fg ctermfg=fg '
        else
            let c = get(s:bwc, a:fg)
            let histring .= 'guifg=#' . c[0] . ' ctermfg=' . c[1] . ' '
        endif
    endif

    if a:0 >= 1 && strlen(a:1)
        if a:1 == 'bg'
            let histring .= 'guibg=bg ctermbg=bg '
        else
            let c = get(s:bwc, a:1)
            let histring .= 'guibg=#' . c[0] . ' ctermbg=' . c[1] . ' '
        endif
    endif

    if a:0 >= 2 && strlen(a:2)
        let histring .= 'gui=' . a:2 . ' cterm=' . a:2 . ' '
    endif

    if a:0 >= 3 && strlen(a:3)
        let c = get(s:bwc, a:3)
        let histring .= 'guisp=#' . c[0] . ' '
    endif

    " echom histring

    execute histring
endfunction
" ----------------------------------------------------------------------------

" Define pallete
let s:bwc = {}
let s:bwc.Red = ['ff0000', 9]
let s:bwc.Purple = ['ff00ff', 13]
let s:bwc.Black = ['000000', 0] 
let s:bwc.Gray = ['808080', 243]
let s:bwc.Blue = ['0000ff', 12] 
let s:bwc.DarkBlue = ['0000b3', 18] 
let s:bwc.Lime = ['00ff00', 10] 
let s:bwc.Yellow = ['ffff00', 'Yellow'] 
let s:bwc.White = ['ffffff', 15]
if !empty($DISPLAY) || !empty($SSH_CONNECTION)
	let s:bwc.Orange = ['008000', 208]
	let s:bwc.Maroon = ['ff0000', 196]
	let s:bwc.DarkGreen = ['008000', 35]
	let s:bwc.DarkCyan = ['ffff0f', 39]
	let s:bwc.Silver = ['c0c0c0', 231]
	let s:bwc.LightCyan = ['ffff0f', 51]
	hi Type		ctermfg=46      ctermbg=None        cterm=None
	hi DiffChange	ctermfg=None     ctermbg=53         cterm=None
	hi DiffText	ctermfg=16     ctermbg=11         cterm=None
	hi DiffDelete	ctermfg=0     ctermbg=3         cterm=None
else
	let s:bwc.Orange = ['008000', 142]
	let s:bwc.Maroon = ['800000', 124]
	let s:bwc.DarkGreen = ['008000', 2]
	let s:bwc.DarkCyan = ['ffff0f', 6]
	let s:bwc.Silver = ['c0c0c0', 7] 
	let s:bwc.LightCyan = ['ffff0f', 'LightCyan']
	hi Type		ctermfg=76      ctermbg=None        cterm=None
	hi DiffText	ctermfg=16     ctermbg=11         cterm=None
	hi DiffDelete	ctermfg=0     ctermbg=1         cterm=None
endif

" Default Syntax colors tweeks
call s:HL('Normal', 'Silver', '', 'None', '')
call s:HL('Comment', 'Gray', '', 'None', '')
call s:HL('Cursor', '', '', 'inverse', '')
call s:HL('CursorLine', 'White', 'DarkBlue', '', '')
call s:HL('SpecialKey', 'Purple', '', '', '')
call s:HL('Identifier', 'Orange', '', '', '')
call s:HL('Directory', 'Orange', '', '', '')
call s:HL('Constant', 'DarkGreen', '', '', '')
call s:HL('Todo', 'Blue', '', '', '')
call s:HL('Statement', 'Maroon', '', '', '')
call s:HL('Special', 'DarkGreen', '', '', '')
call s:HL('PreProc', 'DarkCyan', '', '', '')
call s:HL('Title', 'Purple', '', '', '')

" Search
call s:HL('Search', '', 'Yellow', '', '')

" Line numbers 
call s:HL('LineNr', 'Gray', '', '', '')

"Status Line
"call s:HL('StatusLine', 'White', 'Gray', '', '')
"call s:HL('StatusLineNC', 'Silver', 'Gray', '', '')

" The rest colors - may be modified in future by necessity
"hi StatusLineNC ctermfg=248     ctermbg=239         cterm=None
"hi StatusLine   ctermfg=39      ctermbg=239         cterm=None


hi MatchParen ctermbg=blue guibg=lightblue

hi TabLine      ctermfg=245     ctermbg=239         cterm=None
hi TabLineFill  ctermfg=239     ctermbg=239
hi TabLineSel   ctermfg=104     ctermbg=236         cterm=None

hi ErrorMsg     ctermfg=160     ctermbg=None        cterm=None
hi NonText	ctermfg=105     ctermbg=None        cterm=None

hi SpellBad 	ctermfg=None	ctermbg=None	    cterm=None
hi SpellCap	ctermfg=None	ctermbg=None	    cterm=None
hi SpellLocal	ctermfg=None	ctermbg=None	    cterm=None
hi SpellRare	ctermfg=None	ctermbg=None	    cterm=None

hi Error	ctermfg=160     ctermbg=None        cterm=None
hi Ignore       ctermfg=125     ctermbg=None        cterm=None
hi Underline    ctermfg=6       ctermbg=None        cterm=Italic

hi FoldColumn	ctermfg=132     ctermbg=None        cterm=None
hi Folded       ctermfg=132     ctermbg=None        cterm=None

hi Visual       ctermfg=248     ctermbg=53          cterm=None

hi VertSplit    ctermfg=239     ctermbg=239         cterm=None

hi DiffDelete  ctermbg=88	cterm=None

" CtrlP plugin primary colors
call s:HL('CtrlPMatch', 'Lime', '', '', '')
call s:HL('CtrlPPrtBase', 'Silver', '', '', '')
call s:HL('CtrlPLinePre', 'Silver', '', '', '')
call s:HL('CtrlPPrtText', 'Silver', 'Red', '', '')
call s:HL('CtrlPPrtText', 'Silver', 'Gray', '', '')

" CtrlP plugin secondary colors
hi CtrlPTabExtra ctermbg=235 ctermfg=250 guibg=#262626 guifg=#bcbcbc cterm=NONE gui=NONE
hi CtrlPBufName ctermbg=235 ctermfg=250 guibg=#262626 guifg=#bcbcbc cterm=NONE gui=NONE
hi CtrlPTagKind ctermbg=235 ctermfg=250 guibg=#262626 guifg=#bcbcbc cterm=NONE gui=NONE
hi CtrlPqfLineCol ctermbg=235 ctermfg=250 guibg=#262626 guifg=#bcbcbc cterm=NONE gui=NONE
hi CtrlPUndoT ctermbg=235 ctermfg=250 guibg=#262626 guifg=#bcbcbc cterm=NONE gui=NONE
hi CtrlPUndoBr ctermbg=235 ctermfg=250 guibg=#262626 guifg=#bcbcbc cterm=NONE gui=NONE
hi CtrlPUndoNr ctermbg=235 ctermfg=250 guibg=#262626 guifg=#bcbcbc cterm=NONE gui=NONE
hi CtrlPUndoSv ctermbg=235 ctermfg=250 guibg=#262626 guifg=#bcbcbc cterm=NONE gui=NONE
hi CtrlPUndoPo ctermbg=235 ctermfg=250 guibg=#262626 guifg=#bcbcbc cterm=NONE gui=NONE
hi CtrlPBookmark ctermbg=235 ctermfg=250 guibg=#262626 guifg=#bcbcbc cterm=NONE gui=NONE
hi CtrlPMode1 ctermbg=235 ctermfg=250 guibg=#262626 guifg=#bcbcbc cterm=NONE gui=NONE
hi CtrlPMode2 ctermbg=235 ctermfg=250 guibg=#262626 guifg=#bcbcbc cterm=NONE gui=NONE
hi CtrlPStats ctermbg=235 ctermfg=250 guibg=#262626 guifg=#bcbcbc cterm=NONE gui=NONE

" YouCompleteMe Plugin popup window colors customizatin
call s:HL('Pmenu', 'White', 'Blue', '', '')
call s:HL('PmenuSel', 'White', 'DarkGreen', '', '')
call s:HL('PmenuSbar', 'Blue', '', '', '')
call s:HL('PmenuThumb', 'Red', '', '', '')

" Terminal color - windows after ":term" command
call s:HL('Terminal', '', 'Black', '', '')

" Some Python syntax tweeks
call s:HL('pythonDecorator', 'LightCyan', '', '', '')
"call s:HL('pythonFunction', 'Lime', '', '', '')
"┌────────────────────┬───────────────┬──┬────────────────────┬───────────────┐
"│ Specialized Group  │ Default Group │  │ Specialized Group  │ Default Group │
"├────────────────────┼───────────────┼──┼────────────────────┼───────────────┤
"│ pythonComment      │ Comment       │  │ pythonTripleQuotes │ pythonQuotes  │
"│ pythonConditional  │ Conditional   │  │ pythonRepeat       │ Repeat        │
"│ pythonDecorator    │ Define        │  │ pythonEscape       │ Special       │
"│ pythonDoctestValue │ Define        │  │ pythonDoctest      │ Special       │
"│ pythonSpaceError   │ Error         │  │ pythonStatement    │ Statement     │
"│ pythonException    │ Exception     │  │ pythonString       │ String        │
"│ pythonFunction     │ Function      │  │ pythonRawString    │ String        │
"│ pythonBuiltin      │ Function      │  │ pythonQuotes       │ String        │
"│ pythonInclude      │ Include       │  │ pythonExceptions   │ Structure     │
"│ pythonNumber       │ Number        │  │ pythonTodo         │ Todo          │
"│ pythonOperator     │ Operator      │  │                    │               │
"└────────────────────┴───────────────┴──┴────────────────────┴───────────────┘


" Some SQL syntax tweeks
call s:HL('sqlStatement', 'Orange', '', '', '')
call s:HL('sqlKeyword', 'Orange', '', '', '')

"┌───────────────────┬─────────────┬──┬───────────────────┬─────────────┐
"│ Specialized Group │   Default   │  │ Specialized Group │   Default   │
"├───────────────────┼─────────────┼──┼───────────────────┼─────────────┤
"│ sqlComment        │ Comment     │  │ sqlParenEmpty     │ Operator    │
"│ sqlParen          │ Comment     │  │ sqlSetOptions     │ Operator    │
"│ sqlConditional    │ Conditional │  │ sqlKeyword        │ Special     │
"│ sqlError          │ Error       │  │ sqlSetValues      │ Special     │
"│ sqlUnknownFunc    │ Exception   │  │ sqlAnyString      │ sqlString   │
"│ sqlFunction       │ Function    │  │ sqlAnyVariable    │ sqlVariable │
"│ sqlParenFunc      │ Function    │  │ sqlStatement      │ Statement   │
"│ sqlVariable       │ Identifier  │  │ sqlString         │ String      │
"│ sqlSpecial        │ Keyword     │  │ sqlTodo           │ Todo        │
"│ sqlNumber         │ Number      │  │ sqlType           │ Type        │
"│ sqlOperator       │ Operator    │  │                   │             │
"└───────────────────┴─────────────┴──┴───────────────────┴─────────────┘


" Some HTML syntax tweeks
call s:HL('htmlStatement', 'Orange', '', '', '')
call s:HL('htmlEvent', 'Lime', '', '', '')

"┌─────────────────────────┬─────────────────────────┬──┬──────────────────────┬─────────────────────┐
"│    Specialized Group    │         Default         │  │  Specialized Group   │       Default       │
"├─────────────────────────┼─────────────────────────┼──┼──────────────────────┼─────────────────────┤
"│ htmlComment             │ Comment                 │  │ htmlTagName          │ htmlStatement       │
"│ htmlCommentPart         │ Comment                 │  │ htmlItalicUnderline  │ htmlUnderlineItalic │
"│ htmlCssStyleComment     │ Comment                 │  │ htmlEndTag           │ Identifier          │
"│ htmlPreError            │ Error                   │  │ htmlEvent            │ javaScript          │
"│ htmlPreProcAttrError    │ Error                   │  │ javaScriptExpression │ javaScript          │
"│ htmlError               │ Error                   │  │ htmlLeadingSpace     │ None                │
"│ htmlSpecialTagName      │ Exception               │  │ htmlHead             │ PreProc             │
"│ htmlTag                 │ Function                │  │ htmlPreStmt          │ PreProc             │
"│ htmlItalicBold          │ htmlBoldItalic          │  │ htmlPreProc          │ PreProc             │
"│ htmlUnderlineBold       │ htmlBoldUnderline       │  │ htmlPreProcAttrName  │ PreProc             │
"│ htmlBoldItalicUnderline │ htmlBoldUnderlineItalic │  │ htmlSpecial          │ Special             │
"│ htmlUnderlineItalicBold │ htmlBoldUnderlineItalic │  │ htmlSpecialChar      │ Special             │
"│ htmlUnderlineBoldItalic │ htmlBoldUnderlineItalic │  │ javaScript           │ Special             │
"│ htmlItalicBoldUnderline │ htmlBoldUnderlineItalic │  │ htmlCssDefinition    │ Special             │
"│ htmlItalicUnderlineBold │ htmlBoldUnderlineItalic │  │ htmlStatement        │ Statement           │
"│ htmlCommentError        │ htmlError               │  │ htmlValue            │ String              │
"│ htmlTagError            │ htmlError               │  │ htmlPreAttr          │ String              │
"│ htmlH2                  │ htmlH1                  │  │ htmlString           │ String              │
"│ htmlH3                  │ htmlH2                  │  │ htmlH1               │ Title               │
"│ htmlH4                  │ htmlH3                  │  │ htmlTitle            │ Title               │
"│ htmlH5                  │ htmlH4                  │  │ htmlArg              │ Type                │
"│ htmlH6                  │ htmlH5                  │  │ htmlLink             │ Underlined          │
"└─────────────────────────┴─────────────────────────┴──┴──────────────────────┴─────────────────────┘


" Some CSS syntax tweeks
 
"┌─────────────────────────────┬───────────┬──┬───────────────────────┬──────────────┐
"│      Specialized Group      │  Default  │  │   Specialized Group   │   Default    │
"├─────────────────────────────┼───────────┼──┼───────────────────────┼──────────────┤
"│ cssIncludeKeyword           │ atKeyword │  │ cssGridProp           │ cssProp      │
"│ cssMedia                    │ atKeyword │  │ cssHyerlinkProp       │ cssProp      │
"│ cssPage                     │ atKeyword │  │ cssLineboxProp        │ cssProp      │
"│ cssPageMargin               │ atKeyword │  │ cssListProp           │ cssProp      │
"│ cssKeyFrame                 │ atKeyword │  │ cssMarqueeProp        │ cssProp      │
"│ cssComment                  │ Comment   │  │ cssMultiColumnProp    │ cssProp      │
"│ cssVendor                   │ Comment   │  │ cssPagedMediaProp     │ cssProp      │
"│ cssHacks                    │ Comment   │  │ cssPositioningProp    │ cssProp      │
"│ cssPseudoClassLang          │ Constant  │  │ cssPrintProp          │ cssProp      │
"│ cssFunction                 │ Constant  │  │ cssRubyProp           │ cssProp      │
"│ cssColor                    │ Constant  │  │ cssSpeechProp         │ cssProp      │
"│ cssKeyFrameSelector         │ Constant  │  │ cssTableProp          │ cssProp      │
"│ cssFontDescriptorFunction   │ Constant  │  │ cssTextProp           │ cssProp      │
"│ cssUnicodeRange             │ Constant  │  │ cssTransformProp      │ cssProp      │
"│ cssAttr                     │ Constant  │  │ cssTransitionProp     │ cssProp      │
"│ cssAnimationAttr            │ cssAttr   │  │ cssUIProp             │ cssProp      │
"│ cssBackgroundAttr           │ cssAttr   │  │ cssIEUIProp           │ cssProp      │
"│ cssBorderAttr               │ cssAttr   │  │ cssAuralProp          │ cssProp      │
"│ cssBoxAttr                  │ cssAttr   │  │ cssRenderProp         │ cssProp      │
"│ cssContentForPagedMediaAttr │ cssAttr   │  │ cssMobileTextProp     │ cssProp      │
"│ cssDimensionAttr            │ cssAttr   │  │ cssMediaProp          │ cssProp      │
"│ cssFlexibleBoxAttr          │ cssAttr   │  │ cssPageProp           │ cssProp      │
"│ cssFontAttr                 │ cssAttr   │  │ cssFontDescriptorProp │ cssProp      │
"│ cssGeneratedContentAttr     │ cssAttr   │  │ cssDeprecated         │ Error        │
"│ cssGridAttr                 │ cssAttr   │  │ cssBraceError         │ Error        │
"│ cssHyerlinkAttr             │ cssAttr   │  │ cssError              │ Error        │
"│ cssLineboxAttr              │ cssAttr   │  │ cssFunctionName       │ Function     │
"│ cssListAttr                 │ cssAttr   │  │ cssFunctionComma      │ Function     │
"│ cssMarginAttr               │ cssAttr   │  │ cssIdentifier         │ Function     │
"│ cssMarqueeAttr              │ cssAttr   │  │ cssBraces             │ Function     │
"│ cssMultiColumnAttr          │ cssAttr   │  │ cssClassName          │ Function     │
"│ cssPaddingAttr              │ cssAttr   │  │ cssClassNameDot       │ Function     │
"│ cssPagedMediaAttr           │ cssAttr   │  │ cssInclude            │ Include      │
"│ cssPositioningAttr          │ cssAttr   │  │ cssNoise              │ Noise        │
"│ cssGradientAttr             │ cssAttr   │  │ cssMediaComma         │ Normal       │
"│ cssPrintAttr                │ cssAttr   │  │ cssValueLength        │ Number       │
"│ cssRubyAttr                 │ cssAttr   │  │ cssValueInteger       │ Number       │
"│ cssSpeechAttr               │ cssAttr   │  │ cssValueNumber        │ Number       │
"│ cssTableAttr                │ cssAttr   │  │ cssValueAngle         │ Number       │
"│ cssTextAttr                 │ cssAttr   │  │ cssValueTime          │ Number       │
"│ cssTransformAttr            │ cssAttr   │  │ cssValueFrequency     │ Number       │
"│ cssTransitionAttr           │ cssAttr   │  │ cssUnitDecorators     │ Number       │
"│ cssUIAttr                   │ cssAttr   │  │ cssPseudoClassId      │ PreProc      │
"│ cssIEUIAttr                 │ cssAttr   │  │ cssPagePseudo         │ PreProc      │
"│ cssAuralAttr                │ cssAttr   │  │ atKeyword             │ PreProc      │
"│ cssRenderAttr               │ cssAttr   │  │ cssSelectorOp         │ Special      │
"│ cssCommonAttr               │ cssAttr   │  │ cssSelectorOp2        │ Special      │
"│ cssMediaAttr                │ cssAttr   │  │ cssAttrComma          │ Special      │
"│ cssFontDescriptorAttr       │ cssAttr   │  │ cssImportant          │ Special      │
"│ cssAnimationProp            │ cssProp   │  │ cssUnicodeEscape      │ Special      │
"│ cssBackgroundProp           │ cssProp   │  │ cssMediaType          │ Special      │
"│ cssBorderProp               │ cssProp   │  │ cssFontDescriptor     │ Special      │
"│ cssBoxProp                  │ cssProp   │  │ cssTagName            │ Statement    │
"│ cssColorProp                │ cssProp   │  │ cssMediaKeyword       │ Statement    │
"│ cssContentForPagedMediaProp │ cssProp   │  │ cssProp               │ StorageClass │
"│ cssDimensionProp            │ cssProp   │  │ cssURL                │ String       │
"│ cssFlexibleBoxProp          │ cssProp   │  │ cssStringQQ           │ String       │
"│ cssFontProp                 │ cssProp   │  │ cssStringQ            │ String       │
"│ cssGeneratedContentProp     │ cssProp   │  │ cssAttributeSelector  │ String       │
"└─────────────────────────────┴───────────┴──┴───────────────────────┴──────────────┘


" Some JavaScript syntax tweeks

"┌────────────────────────────┬───────────────────┬──┬────────────────────────┬───────────┐
"│     Specialized Group      │      Default      │  │   Specialized Group    │  Default  │
"├────────────────────────────┼───────────────────┼──┼────────────────────────┼───────────┤
"│ javaScriptBoolean          │ Boolean           │  │ javaScriptNull         │ Keyword   │
"│ javaScriptCharacter        │ Character         │  │ javaScriptMessage      │ Keyword   │
"│ javaScriptComment          │ Comment           │  │ javaScriptGlobal       │ Keyword   │
"│ javaScriptLineComment      │ Comment           │  │ javaScriptMember       │ Keyword   │
"│ javaScriptConditional      │ Conditional       │  │ javaScriptReserved     │ Keyword   │
"│ javaScriptBranch           │ Conditional       │  │ javaScriptLabel        │ Label     │
"│ javaScriptDebug            │ Debug             │  │ javaScriptConstant     │ Label     │
"│ javaScriptError            │ Error             │  │ javaScriptOperator     │ Operator  │
"│ javaScriptParensError      │ Error             │  │ javaScriptRepeat       │ Repeat    │
"│ javaScriptException        │ Exception         │  │ javaScriptSpecial      │ Special   │
"│ javaScriptDeprecated       │ Exception         │  │ javaScriptStatement    │ Statement │
"│ javaScriptFunction         │ Function          │  │ javaScriptStringS      │ String    │
"│ javaScriptBraces           │ Function          │  │ javaScriptStringD      │ String    │
"│ javaScriptIdentifier       │ Identifier        │  │ javaScriptRegexpString │ String    │
"│ javaScriptSpecialCharacter │ javaScriptSpecial │  │ javaScriptCommentTodo  │ Todo      │
"│ javaScriptNumber           │ javaScriptValue   │  │ javaScriptType         │ Type      │
"└────────────────────────────┴───────────────────┴──┴────────────────────────┴───────────┘


" Some JSON syntax tweeks

"┌────────────────────────┬───────────┬──┬───────────────────┬──────────┐
"│   Specialized Group    │  Default  │  │ Specialized Group │ Default  │
"├────────────────────────┼───────────┼──┼───────────────────┼──────────┤
"│ jsonBoolean            │ Boolean   │  │ jsonNull          │ Function │
"│ jsonBraces             │ Delimiter │  │ jsonTest          │ Label    │
"│ jsonNumError           │ Error     │  │ jsonKeyword       │ Label    │
"│ jsonCommentError       │ Error     │  │ jsonNoise         │ Noise    │
"│ jsonSemicolonError     │ Error     │  │ jsonNumber        │ Number   │
"│ jsonTrailingCommaError │ Error     │  │ jsonPadding       │ Operator │
"│ jsonMissingCommaError  │ Error     │  │ jsonQuote         │ Quote    │
"│ jsonStringSQError      │ Error     │  │ jsonEscape        │ Special  │
"│ jsonNoQuotesError      │ Error     │  │ jsonString        │ String   │
"│ jsonTripleQuotesError  │ Error     │  │                   │          │
"└────────────────────────┴───────────┴──┴───────────────────┴──────────┘


" Some XML syntax tweeks

"┌────────────────────┬────────────┬──┬───────────────────┬────────────┐
"│ Specialized Group  │  Default   │  │ Specialized Group │  Default   │
"├────────────────────┼────────────┼──┼───────────────────┼────────────┤
"│ xmlAttribPunct     │ Comment    │  │ xmlCdataCdata     │ Statement  │
"│ xmlComment         │ Comment    │  │ xmlDocTypeKeyword │ Statement  │
"│ xmlCommentPart     │ Comment    │  │ xmlString         │ String     │
"│ xmlProcessingDelim │ Comment    │  │ xmlCdata          │ String     │
"│ xmlCommentError    │ Error      │  │ xmlNamespace      │ Tag        │
"│ xmlError           │ Error      │  │ xmlTodo           │ Todo       │
"│ xmlTag             │ Function   │  │ xmlEntityPunct    │ Type       │
"│ xmlTagName         │ Function   │  │ xmlAttrib         │ Type       │
"│ xmlDocTypeDecl     │ Function   │  │ xmlProcessing     │ Type       │
"│ xmlInlineDTD       │ Function   │  │ xmlCdataStart     │ Type       │
"│ xmlEndTag          │ Identifier │  │ xmlCdataEnd       │ Type       │
"│ xmlEntity          │ Statement  │  │ xmlCommentStart   │ xmlComment │
"└────────────────────┴────────────┴──┴───────────────────┴────────────┘



" Some Markdown syntax tweeks

"┌───────────────────────────┬────────────────┬──┬───────────────────────────┬───────────────────────┐
"│     Specialized Group     │    Default     │  │     Specialized Group     │        Default        │
"├───────────────────────────┼────────────────┼──┼───────────────────────────┼───────────────────────┤
"│ markdownBlockquote        │ Comment        │  │ markdownItalic            │ htmlItalic            │
"│ markdownHeadingDelimiter  │ Delimiter      │  │ markdownLinkText          │ htmlLink              │
"│ markdownUrlTitleDelimiter │ Delimiter      │  │ markdownUrlDelimiter      │ htmlTag               │
"│ markdownCodeDelimiter     │ Delimiter      │  │ markdownListMarker        │ htmlTagName           │
"│ markdownError             │ Error          │  │ markdownIdDelimiter       │ markdownLinkDelimiter │
"│ markdownUrl               │ Float          │  │ markdownOrderedListMarker │ markdownListMarker    │
"│ markdownBold              │ htmlBold       │  │ markdownHeadingRule       │ markdownRule          │
"│ markdownBoldItalic        │ htmlBoldItalic │  │ markdownAutomaticLink     │ markdownUrl           │
"│ markdownH1                │ htmlH1         │  │ markdownRule              │ PreProc               │
"│ markdownH2                │ htmlH2         │  │ markdownEscape            │ Special               │
"│ markdownH3                │ htmlH3         │  │ markdownUrlTitle          │ String                │
"│ markdownH4                │ htmlH4         │  │ markdownId                │ Type                  │
"│ markdownH5                │ htmlH5         │  │ markdownIdDeclaration     │ Typedef               │
"│ markdownH6                │ htmlH6         │  │                           │                       │
"└───────────────────────────┴────────────────┴──┴───────────────────────────┴───────────────────────┘


" Some diff tool colors tweeks

"┌───────────────────┬──────────┬──┬───────────────────┬────────────┐
"│ Specialized Group │ Default  │  │ Specialized Group │  Default   │
"├───────────────────┼──────────┼──┼───────────────────┼────────────┤
"│ diffComment       │ Comment  │  │ diffOldFile       │ diffFile   │
"│ diffOnly          │ Constant │  │ diffNewFile       │ diffFile   │
"│ diffIdentical     │ Constant │  │ diffAdded         │ Identifier │
"│ diffDiffer        │ Constant │  │ diffChanged       │ PreProc    │
"│ diffBDiffer       │ Constant │  │ diffSubname       │ PreProc    │
"│ diffIsA           │ Constant │  │ diffRemoved       │ Special    │
"│ diffNoEOL         │ Constant │  │ diffLine          │ Statement  │
"│ diffCommon        │ Constant │  │ diffFile          │ Type       │
"└───────────────────┴──────────┴──┴───────────────────┴────────────┘




