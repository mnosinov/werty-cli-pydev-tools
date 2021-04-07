let s:N1 = [ '#141413' , '#aeee00' , 10 , 19 ] " blackestgravel & lime
let s:N2 = [ '#f4cf86' , '#45413b' , 7 , 13 ] " dirtyblonde    & deepgravel
let s:N3 = [ '#8cffba' , '#242321' , 3 , 13 ] " saltwatertaffy & darkgravel
let s:N4 = [ '#666462' , 241 ]                   " mediumgravel

let s:I1 = [ '#141413' , '#0a9dff' , 15 , 10  ] " blackestgravel & tardis
let s:I2 = [ '#f4cf86' , '#005fff' , 7 , 13  ] " dirtyblonde    & facebook
let s:I3 = [ '#0a9dff' , '#242321' , 3  , 13 ] " tardis         & darkgravel

let s:V1 = [ '#141413' , '#ffa724' , 14 , 182 ] " blackestgravel & orange
let s:V2 = [ '#000000' , '#fade3e' , 7 , 13 ] " coal           & dalespale
let s:V3 = [ '#000000' , '#b88853' , 3 , 13 ] " coal           & toffee
let s:V4 = [ '#c7915b' , 173 ]                   " coffee

let s:PA = [ '#f4cf86' , 222 ]                   " dirtyblonde
let s:RE = [ '#ff9eb8' , 211 ]                   " dress

let s:IA = [ s:N3[1] , s:N2[1] , s:N3[3] , s:N2[3] , '' ]

let g:airline#themes#badwolf#palette = {}

let g:airline#themes#badwolf#palette.accents = {
      \ 'red': [ '#ff2c4b' , '' , 196 , '' , '' ]
      \ }

let g:airline#themes#badwolf#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#badwolf#palette.normal_modified = {
      \ 'airline_b': [ s:N2[0]   , s:N4[0]   , s:N2[2]   , s:N4[1]   , ''     ] ,
      \ 'airline_c': [ s:V1[1]   , s:N2[1]   , s:V1[3]   , s:N2[3]   , ''     ] }


let g:airline#themes#badwolf#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#badwolf#palette.insert_modified = {
      \ 'airline_c': [ s:V1[1]   , s:N2[1]   , s:V1[3]   , s:N2[3]   , ''     ] }
let g:airline#themes#badwolf#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , s:PA[0]   , s:I1[2]   , s:PA[1]   , ''     ] }


let g:airline#themes#badwolf#palette.replace = copy(airline#themes#badwolf#palette.insert)
let g:airline#themes#badwolf#palette.replace.airline_a = [ s:I1[0] , s:RE[0] , s:I1[2] , s:RE[1] , '' ]
let g:airline#themes#badwolf#palette.replace_modified = g:airline#themes#badwolf#palette.insert_modified


let g:airline#themes#badwolf#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#badwolf#palette.visual_modified = {
      \ 'airline_c': [ s:V3[0]   , s:V4[0]   , s:V3[2]   , s:V4[1]   , ''     ] }


let g:airline#themes#badwolf#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#badwolf#palette.inactive_modified = {
      \ 'airline_c': [ s:V1[1]   , ''        , s:V1[3]   , ''        , ''     ] }

" CtrlP
"if !get(g:, 'loaded_ctrlp', 0)
"  finish
"endif

"let s:CP1 = [ '#141413' , '#aeee00' , 10 , 238 ] " blackestgravel & lime
"let s:CP2 = [ '#f4cf86' , '#45413b' , 10 , 238 ] " dirtyblonde    & deepgravel
"let s:CP3 = [ '#8cffba' , '#242321' , 10 , 235 ] " saltwatertaffy & darkgravel
"
"
"let g:airline#themes#badwolf#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)
