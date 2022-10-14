; extends
[ "\"" "'" ] @string.delimiter
[ "`" ] @operator

(table
 (string) @field (#match? @field "^:"))

(list
 (string) @field (#match? @field "^:"))



(fn name: (symbol) @function)

(list (_) @operator (#any-of? @operator "=" "+"))

(hashfn ["#"] @operator)

(list 
 (symbol) @keyword (#match? @keyword "macro")
 (symbol) @function.macro
 (sequential_table))

(list 
 (symbol)
 (symbol) 
 (sequential_table
  [(sequential_table
    (symbol) @parameters)]))

(quoted_list
  (symbol) @keyword (#match? @keyword "let"))

(unquote [","] @operator)

(lambda ["lambda"] @keyword)
(match ["match"] @keyword.function)

