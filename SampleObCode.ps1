# --- Example 1: Basic string concatenation ---
$part1 = "He" + "ll" + "o"
$part2 = (" Wo") + ("rld")
Write-Host ($part1 + $part2)

# --- Example 2: Parenthesized concatenation ---
$greeting = ("G" + "r" + "ee" + "t") + ("i" + "ngs")
Write-Host $greeting

# --- Example 3: Mixed quotes + variables ---
$a = "Las"
$b = ' Vegas'
Write-Host ($a + $b)

# --- Example 4: Nested parentheses ---
$nested = ((("Ne") + ("st"))) + ("ed")
Write-Host $nested

# --- Example 5: Fake encoded-command style Base64 chunks ---
$chunk1 = "U3Rh" + "cnQ"
$chunk2 = ("gIFRlc3" + "Rpbmc=")
$fakeEncoded = $chunk1 + $chunk2
Write-Host "FakeEncoded: $fakeEncoded"

# --- Example 6: -join obfuscation ---
$joined = ("Po","we","rS","he","ll") -join ""
Write-Host $joined

# --- Example 7: Backtick obfuscation (harmless) ---
$bt = "`W`r`i`t`e-`H`o`s`t"
& $bt "Backtick example"

# --- Example 8: Whitespace obfuscation ---
$weird   =    "Odd"    +    " Spacing"
Write-Host $weird

# --- Example 9: Subexpression inside concatenation ---
$timeMsg = "The time is: " + "$(Get-Date)"
Write-Host $timeMsg
