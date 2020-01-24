(` 1: "one"; ` 1: "two"); / This is evaluated Right to Left
` 1: ""

*("one"; "two");
` 1: "";

if[0=0;
  ` 1: "If True";]

` 1: ""

if[1=0;
  ` 1: "If not true";]

` 1: ""

/Multi line

if[1=1;
  {` 1: "If true 1";
  ` 1: "If true 2"}[]]

` 1: ""

$[1=1;
  {` 1: "Conditional true 1";
  ` 1: "Conditional true 2"}[];
  {` 1: "Conditional false 1";
  ` 1: "Conditional false 2"}[]]

` 1: ""

$[0=1;
  {` 1: "Conditional true 1";
  ` 1: "Conditional true 2"}[];
  {` 1: "Conditional false 1";
  ` 1: "Conditional false 2"}[]]


