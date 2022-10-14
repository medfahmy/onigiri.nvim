; extends
(string
 start: "string_start" @string.delimiter
 end: "string_end" @string.delimiter)

(dot_index_expression ["."] @string.delimiter)
(method_index_expression [":"] @string.delimiter)
