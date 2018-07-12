$number=Read-Host "Please Enter the Number you want to convert to words"
$number=[int]$number
function GretSingleNumberInWord ($number) 
{
    switch ($number) {
        '0' {return "Zero"}
        '1' {return "One"}
        '2' {return "Two"}
        '3' {return "Three"}
        '4' {"Four"}
        '5' {"Five"}
        '6' {"Six"}
        '7' {"Seven"}
        '8' {"Eight"}
        '9' {"Nine"}
    }
} 
function GetDoubleNumberInword($number)
{
    switch ($number) {
        '10' {return "Ten"}
        '11' {return "Eleven"}
        '12' {return "Twelve"}
        '14' {return "Fourteen"}
        '15' {return "Fifteen"}
        '16' {return "Sixteen"}
        '17' {return "Seventeen"}
        '18' {return "Eighteen"}
        '19' {return "Nineteen"}
    }
}
if($number.Length -lt 0)
{
    Write-Host "Write some number"
}
elseif ($number.Length -eq 1) {
    $output= GretSingleNumberInWord($number)
   Write-Host $output
}
elseif ($number.Length -eq 2) {
    if($number -le 20){
    $output=  GetDoubleNumberInword($number)
    }
    else {
        $firstPosition=""
        $singleNumer=GretSingleNumberInWord($number[1])
           if ($number -ge '20' -and $number -le '29')  { $firstPosition="Twenty"}
           elseif ($number -ge '30' -and $number -le '39')  {$firstPosition="Thirty"}
           elseif ($number -ge '40' -and $number -le '49')  {$firstPosition= "Fourty"}
           elseif ($number -ge '50' -and $number -le '59')  {$firstPosition= "Fifty"}
           elseif ($number -ge '60' -and $number -le '69')   {$firstPosition= "Sixty"}
           elseif ($number -ge '70' -and $number -le '79')  {$firstPosition= "Seventy"}
           elseif ($number -ge '80' -and $number -le '89')  {$firstPosition= "Eighty"}
           elseif ($number -ge '90' -and $number -le '99')   {$firstPosition= "Ninty"}
            }
            return ($firstPosition+" "+ $singleNumer);
            Write-Host $output
        }


$a=$()
$b=$()
$myArray="Ramesg is s s  s sgsadf sdf dsf s sdf d s".Split(" ")
#$myArray | ForEach-Object{ Write-Host $_}
$myArray | Where-Object { $_ -match 's' }

n