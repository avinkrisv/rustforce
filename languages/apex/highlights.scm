; Punctuation
[
  "["
  "]"
  "{"
  "}"
  "?"
  ";"
  "("
  ")"
] @punctuation.bracket

["," "." ":"] @punctuation.delimiter

; Methods
(method_declaration
  name: (identifier) @function)
(method_declaration
  type: (type_identifier) @type)

(method_invocation
  name: (identifier) @function)
(argument_list
  (identifier) @variable)
(super) @function

(explicit_constructor_invocation
  arguments: (argument_list
    (identifier) @variable))

; Annotations
(annotation
  name: (identifier) @attribute)

"@" @operator

(annotation_key_value
  (identifier) @variable)

; Types - constants (SCREAMING_SNAKE_CASE)
((identifier) @constant
  (#match? @constant "^_*[A-Z][A-Z\\d_]+$"))

(interface_declaration
  name: (identifier) @type)
(class_declaration
  name: (identifier) @type)
(class_declaration
  (superclass) @type)
(enum_declaration
  name: (identifier) @enum)
(enum_constant
  name: (identifier) @constant)

(interfaces
  (type_list
    (type_identifier) @type))

(local_variable_declaration
  (type_identifier) @type)

(expression_statement (_ (identifier)) @variable)

(type_arguments "<" @punctuation.bracket)
(type_arguments ">" @punctuation.bracket)

(field_access
  object: (identifier) @type)

(generic_type
  (type_identifier) @type)
(type_arguments (type_identifier) @type)

(field_access
  field: (identifier) @property)

((scoped_identifier
  scope: (identifier) @type)
 (#match? @type "^[A-Z]"))
((method_invocation
  object: (identifier) @type)
 (#match? @type "^[A-Z]"))

(field_declaration
  type: (type_identifier) @type)

(formal_parameter
  type: (type_identifier) @type
  (identifier) @variable)

(method_declaration
  (formal_parameters
    (formal_parameter
      name: (identifier) @variable.parameter)))

(enhanced_for_statement
  type: (type_identifier) @type
  name: (identifier) @variable)

(enhanced_for_statement
  value: (identifier) @variable)

(enhanced_for_statement
  name: (identifier) @variable)

(object_creation_expression
  type: (type_identifier) @type)

(array_creation_expression
  type: (type_identifier) @type)

(array_type
  element: (type_identifier) @type)

(return_statement
  (identifier) @variable)

(local_variable_declaration
  (variable_declarator
    name: (identifier) @variable))

(for_statement
  condition: (binary_expression
    (identifier) @variable))

(for_statement
  update: (update_expression
    (identifier) @variable))

(constructor_declaration
  name: (identifier) @constructor)

(dml_type) @function

(bound_apex_expression
  (identifier) @variable)

(assignment_operator) @operator
(update_operator) @operator

(instanceof_expression
  left: (identifier) @variable
  right: (type_identifier) @type)

(cast_expression
  type: (type_identifier) @type
  value: (identifier) @variable)

(switch_expression
  condition: (identifier) @variable)

(switch_rule
  (switch_label
    (identifier) @constant))

(when_sobject_type
  (type_identifier) @type
  (identifier) @variable)

(trigger_declaration
  name: (identifier) @type
  object: (identifier) @type)

(trigger_event) @keyword

; Binary operators
(binary_expression
  operator: [
    ">"
    "<"
    ">="
    "<="
    "=="
    "==="
    "!="
    "!=="
    "&&"
    "||"
    "+"
    "-"
    "*"
    "/"
    "&"
    "|"
    "^"
    "%"
    "<<"
    ">>"
    ">>>"] @operator)

(binary_expression
  (identifier) @variable)

(unary_expression
  operator: [
    "+"
    "-"
    "!"
    "~"
  ] @operator)

("=>" @operator)

[
  (boolean_type)
  (void_type)
] @type.builtin

; Variables
(field_declaration (variable_declarator
  (identifier) @property))

(this) @variable.special

; Literals
(int) @number
(string_literal) @string

[
  (line_comment)
  (block_comment)
] @comment

; Keywords
[
  (abstract)
  (all_rows_clause)
  "break"
  "catch"
  "class"
  "continue"
  "do"
  "else"
  "enum"
  "extends"
  (final)
  "finally"
  "for"
  "get"
  (global)
  "if"
  "implements"
  "instanceof"
  "interface"
  "new"
  "on"
  (override)
  (private)
  (protected)
  (public)
  "return"
  "set"
  (static)
  "switch"
  (testMethod)
  (webservice)
  "throw"
  (transient)
  "try"
  "trigger"
  (virtual)
  "when"
  "while"
  (with_sharing)
  (without_sharing)
  (inherited_sharing)
] @keyword

(assignment_expression
  left: (identifier) @variable)

"System.runAs" @function

(scoped_type_identifier
  (type_identifier) @type)

; =============================================================================
; SOQL Highlighting (embedded in Apex)
; =============================================================================

; SOQL field identifiers
(field_identifier
  (identifier) @property)

(field_identifier
  (dotted_identifier
    (identifier) @property))

; SOQL storage/table names (FROM clause)
(storage_identifier
  (identifier) @type)

; SOQL function names (COUNT, SUM, etc.)
(function_expression
  function_name: (identifier) @function)

; SOQL alias
(alias_expression
  (identifier) @label)

; SOQL date literals
(date_literal) @constant

; SOQL operators
(value_comparison_operator) @operator
(set_comparison_operator) @operator

; SOQL/SOSL keywords (using @preproc for distinct styling)
[
  "SELECT"
  "FROM"
  "WHERE"
  "AND"
  "OR"
  "NOT"
  "IN"
  "LIKE"
  "ORDER_BY"
  "GROUP_BY"
  "HAVING"
  "LIMIT"
  "OFFSET"
  "ASC"
  "DESC"
  "NULLS_FIRST"
  "NULLS_LAST"
  "WITH"
  "USING"
  "SCOPE"
  "DATA_CATEGORY"
  "ABOVE"
  "BELOW"
  "ABOVE_OR_BELOW"
  "AT"
  "TYPEOF"
  "THEN"
  "END"
  "FOR"
  "UPDATE"
  "REFERENCE"
  "VIEW"
  "VIEWSTAT"
  "TRACKING"
  "ALL"
  "INCLUDES"
  "EXCLUDES"
  "NOT_IN"
  "FIELDS"
  "STANDARD"
  "CUSTOM"
  "LOOKUP"
  "BIND"
  "FIND"
  "RETURNING"
  "DIVISION"
  "EMAIL"
  "NAME"
  "PHONE"
  "SIDEBAR"
  "SNIPPET"
  "NETWORK"
  "METADATA"
  "SPELL_CORRECTION"
  "HIGHLIGHT"
] @preproc

; SOQL literals
(decimal) @number
(currency_literal) @number
(date) @constant
(date_time) @constant
(null_literal) @constant.builtin
"TRUE" @constant.builtin
"FALSE" @constant.builtin

; SOQL USING SCOPE values
[
  "delegated"
  "everything"
  "mine"
  "mine_and_my_groups"
  "my_territory"
  "my_team_territory"
  "team"
] @constant

; SOQL WITH clause values
[
  "Security_Enforced"
  "System_Mode"
  "User_Mode"
] @constant

; SOSL search term
(find_clause
  (term) @string)

; SOSL term separators
(term_separator_start) @punctuation.bracket
(term_separator_end) @punctuation.bracket

; SOSL object types
(sobject_return
  (identifier) @type)
