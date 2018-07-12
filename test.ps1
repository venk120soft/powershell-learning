#Learning Powershell
#this is comment
<#
this is multi line
comment
#>
#
[int]$a=12 # this is variable declaration
$a=12 # both are same

[string] $myString="This is string"
[boolean]$bo=$false

$c="$a"+$myString
Write-Host $C
write-host ("$a" + "$myString")
write-host "$a" + "$myString" #if you dont put the br
#write-host ($a +""+ $myString) # this wont work bcz mis match datatype
Write-Host ("Hay "+$myString)
Write-Host ""
#any data type to string

Write-Host "-------------------------"
$a = 121
Write-Host "$a"
$b = $a.ToString()

Write-Host $b.GetType()
$b ="$a"
Write-Host $b.GetType()

$b = [string]$a
Write-Host $b.GetType()

$i = "India is my country"
$x = $i.Split(" ")
$x.GetType()
$x | Where-Object {$_ -imatch "I"}

$process = Get-Process

write-Host "$XXX"

Function ABC()
{
    Write-Host ABCDDDD
}