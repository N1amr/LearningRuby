#RegEx
######

puts "foobarbar".sub('bar', 'foo') #foofoobar
puts "foobarbar".gsub('bar', 'foo') #foofoofoo
puts "foobarbar".sub(/^.../, 'Hello') #Hellobarbar

"xa1xxa2a3a4".scan(/a\d*/) { |s|
  puts s
}

puts %q[
Table 3-4. Basic Special Characters and Symbols Within Regular Expressions
Character  Meaning
^          Anchor for the beginning of a line
$          Anchor for the end of a line
\A         Anchor for the start of a string
\Z         Anchor for the end of a string
.          Any character
\w         Any letter, digit, or underscore
\W         Anything that \w doesn’t match
\d         Any digit
\D         Anything that \D doesn’t match (non-digits)
\s         Whitespace (spaces, tabs, newlines, and so on)
\S         Non-whitespace (any visible character)
]

puts %q[
Table 3-5. Regular Expression Character and Sub-Expression Modifiers
Modifier  Description
*         Match zero or more occurrences of the preceding character, and match as many as possible.
+         Match one or more occurrences of the preceding character, and match as many as possible.
*?        Match zero or more occurrences of the preceding character, and match as few as possible.
+?        Match one or more occurrences of the preceding character, and match as few as possible.
?         Match either one or none of the preceding character.
{x}       Match x occurrences of the preceding character.
{x,y}     Match at least x occurrences and at most y occurrences.
]

puts "String has vowels" if "This is a test" =~ /[aeiou]/
puts "String contains no digits" unless "This is a test".match("[0-9]")

#match returns a MatchData object that can be accessed like an array. The first element contains the data matched by the entire regular expression. However, each successive element contains that which was matched by each referenced section of the regular expression.
x = "This is a test".match(/(\w+) (\w+)/)
puts x[0] #This is
puts x[1] #This
puts x[2] #is

