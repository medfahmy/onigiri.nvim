; extends
(expansion [ "${" "}" ] @punctuation.special)
(subscript index: (word) @operator)
["[[" "]]" "]" "[" ] @string.delimiter

(string [ "\"" ] @string.delimiter)
(test_operator ) @operator

(
 (command
   name: (command_name (word) @_alias))
 (#match? @_alias "alias")) @keyword.function
