
try 
{
    $FirstNumber = [decimal](Read-Host -Prompt "Print the first number...")
    $SecondNumber = [decimal](Read-Host -Prompt "Print the second number...")
    $Operation = Read-Host "What is your operation?"
    if ( $Operation -ne '+' -and $Operation -ne '-' -and $Operation -ne '*' -and $Operation -ne '/')
    {
        #Throw "'$Operation' Operation not supported"
    }    
    switch ($Operation) 
    {
        '+' { ($FirstNumber + $SecondNumber) }
        '-' { ($FirstNumber - $SecondNumber) }
        '/' { ($FirstNumber / $SecondNumber) }
        '*' { ($FirstNumber * $SecondNumber) }
        Default { Write-Host "'$Operation' Operation not supported"}
    }
}
catch
{
    $line = $_.InvocationInfo.ScriptLineNumber
    $script_name = ($_.InvocationInfo.ScriptName).Replace($PWD,".")
    $ErrorMessage =  $_.Exception.Message #$_ same
    write-host "EXCEPTION : $ErrorMessage"
    Write-host "Source : Line $line in script $script_name."
}
finally
{
    #To clean the values in local variables.
    Get-Variable -Scope Local | Remove-Variable -ErrorAction SilentlyContinue
    Set-Variable -Name XXX -Value "222222222222" -Scope Global
    Import-Module .\test.ps1 -Verbose -Force
    ABC
}