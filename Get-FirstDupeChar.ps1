<#
    .SYNOPSIS
        Author: James Miller
        Date: 03-27-2021
        Summary: Script to return the first duplicated character in a string
    .PARAMETER String
        Alphanumeric string value expected.
    .EXAMPLE
        $foo = "abcdedcba"
        .\Get-FirstDupeChar.ps1 -String $foo
    .NOTES
        Created for assessment.
        https://github.com/squidflex/jm-pwsh
#>
param (
    [string]$String
)
$hash = @()
for ($i = 0; $i -lt $string.Length; $i++) {
    $char = $string[$i]
    if ($hash.Contains($char)) {return $char}
    else {$hash += $char}
}