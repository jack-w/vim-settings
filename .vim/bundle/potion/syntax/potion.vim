if exists("b:current_syntax")
    finish
endif

syntax keyword potionKeyword to times loop while
syntax keyword potionKeyword if elsif else
syntax keyword potionKeyword class return

syntax keyword potionFunction print join string

syntax match potionComment "\v#.*$"

syntax region potionString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region potionString start=/\v'/ skip=/\v\\./ end=/\v'/

syntax match potionOperator "\v\="
syntax match potionOperator "\v\*"
syntax match potionOperator "\v/"
syntax match potionOperator "\v\+"
syntax match potionOperator "\v-"
syntax match potionOperator "\v\?"
syntax match potionOperator "\v\*\="
syntax match potionOperator "\v/\="
syntax match potionOperator "\v\+\="
syntax match potionOperator "\v-\*"

syntax match potionNumber "\v[0-9]"
syntax match potionNumber "\v[0][x][a-f0-9]+"
syntax match potionNumber "\v[0-9]\.[0-9]"
syntax match potionNumber "\v[0-9]\.[0-9].*[e]\+[0-9]"
syntax match potionNumber "\v[0-9]\.[0-9].*[e]-[0-9]"
syntax match potionNumber "\v[0-9].*[e]\+[0-9]"
syntax match potionNumber "\v[0-9].*[e]-[0-9]"

highlight link potionKeyword Keyword
highlight link potionFunction Function
highlight link potionComment Comment
highlight link potionString String
highlight link potionOperator Operator
highlight link potionNumber Number



let b:current_syntax = "potion"

