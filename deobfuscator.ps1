<#
.SYNOPSIS
    This script is used to deobfuscate PowerShell scripts.
.DESCIPTION
    The script takes an obfuscated PowerShell script as input and attempts to deobfuscate it by removing unnecessary characters, decoding encoded strings, and simplifying the code structure.
#>

function Decode-Base64 {
    param (
        [string]$Base64String
    )
    $bytes = [System.Convert]::FromBase64String($Base64String)
    return [System.Text.Encoding]::Unicode.GetString($bytes)
}

function Check-Obfuscation {
    param (
        [string]$InputString
        [bool]$IsBase64 = $false
        [bool]$BackTicks = $false
        [bool]$Concat = $false
    )
    
    # Check for base64
    if ($InputString -match '(-En?)(nc\w{0,11})?\s[''"]?([A-Za-z0-9+\/]+={0,2})[''"]?') {
        return $matches[3]
        $IsBase64 = $true
    } 

    # Check for back ticks
    if ($InputString -match ".*`.*") {
        $BackTicks = $true
    }

    # Check for concatenation
    if ($InputString -match "\+") {
        $Concat = $true
    }

}