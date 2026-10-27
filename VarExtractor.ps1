#Identify and output all the variable names in a string


param (
    [string]$inputString
    )

    $checkstring = $inputString -split ' '
    $varList = @()

for ($i = 0; $i -le $checkstring.Length; $i++) {
   if ($checkstring[$i] -match "\$\w+") {
    $varList += $Matches[0]
   }
}

$sortedVarList = $varList | Sort-Object -Unique

for ($i = 0; $i -le $sortedVarList.Length; $i ++) {
    Write-Host $sortedVarList[$i]
}