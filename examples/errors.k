0 / Trapping (catching) an error

1 + `something
0 / throws 'type error'

{1 + `something}/:()

0/ returns `type (doesn't throw)


{[a] 3 4 + a}/:1 2 /passing arguments
0/ returns 4 6

{[a] 3 4 + a}/:(`something; 2)
0 / returns `type (doesn't throw)
