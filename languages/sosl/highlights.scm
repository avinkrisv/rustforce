; Search term
(find_clause
  (term) @string)

; Object types
(sobject_return
  (identifier) @type)

; Operators
(with_type (_ "=" @operator))

; Keywords
[
  "ALL"
  "DIVISION"
  "EMAIL"
  "FIND"
  "ListView"
  "HIGHLIGHT"
  "IN"
  "METADATA"
  "NAME"
  "NETWORK"
  "PHONE"
  "PricebookId"
  "RETURNING"
  "SIDEBAR"
  "SNIPPET"
  "SPELL_CORRECTION"
  "target_length"
  "USING"
] @keyword
