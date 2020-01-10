g: {[x] x + 1 }

g[1]

f: {[x]
  z: x + 1
  z + 1} / trailing bracket must be on same line as last line

f[1]


{ ` 1: "One";
  ` 1: "Two"}[]

{
  ` 1: "One"
  ` 1: "Two"}[]

/note: you cannot have new lines in multi-line functions

{{g[1]}[]}[]


{
  a: 7
  a}[]

b: 10
{{{b}[]}[]}[]

{
  a: 1
  a
  {a}[]}[]

{
  a: 2
  a
  {a}[]}[]


{a: 1;{a}[]}[]
