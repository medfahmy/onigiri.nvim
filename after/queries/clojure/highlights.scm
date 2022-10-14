; extends 

((sym_lit) @keyword (#any-of? @keyword "let" "defn"))

(regex_lit
 marker: "#" @string.delimiter)

