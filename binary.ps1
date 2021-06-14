for($x = 1; $x -le 100; $x++) {
  $Threes = $x % 3
  $Fives = $x % 5

  if (($Threes -eq 0) -and ($Fives -eq 0)) {
    Write-Output "FizzBuzz"
  } else if ($Threes -eq 0) {
    Write-Output "Fizz"
  } else if ($Fives -eq 0) {
    Write-Output "Buzz"
  } else {
    Write-Output $x
  }
}
