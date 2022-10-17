<#
 Program Name : color.ps1
 Date: 10/11/2022
 Author: Gilber
  Corse: CIT361 I, Gilber, affirm that I wrote this script as original work completed by me. 
 #>
 
 # User needs to guess the computer chosen color.
 #computer guess the color 
 $user_count=0
do{
    
    
     $syscolor = [System.Enum]::getvalues([System.ConsoleColor])
     $comp_guess = $syscolor|get-random

        #Time truck 
             $startime = Get-Date
             #Write-Host $comp_guess
             $debug = $Fales 
             if ($debug){Write-Host "Hey cheater, I $comp_guess"}
          while($user_guess -ne $comp_guess){
         #User guess 
             $user_guess = read-Host  "Guess what color did computer chose?"

            if ($user_guess -eq "quit"){
            break
            }
            elseif($user_guess -eq "ask"){
            Write-Host ($syscolor -join ',')
            }
            elseif($user_guess -eq "hint"){
             $hint = $comp_guess.ToString().substring(0,1)
            Write-Host " Okay, this is the hint: $hint"
   
            if ($hint -eq 'd'){
            $hint1 = $comp_guess.ToString().Substring(0,5)
            Write-Host " Okay, this is the hint: $hint1" 
            }

            }

            elseif($user_guess -notin $syscolor){
            $user_count += 1
            "You type in vailed color! Please guess again. Attempts $user_count"
            }
            elseif ($comp_guess -ne $user_guess){
            $user_count = $user_count + 1
            Write-Host "You guessed " -nonewline
            Write-Host $user_guess -ForegroundColor $user_guess -NoNewline
            Write-Host " You guessed wrong! Please guess again. Attempts $user_count"
            }
            else{
            $reslovetime = get-date
            $time = $reslovetime - $startime
            $user_count = $user_count - $user_count

            Write-Host "Correct, $comp_guess is my favorite color"
            "you spent {0:mm}mins  {0:ss}seconds." -f $time 
            }
            }
        $restart = Read-Host "Do you want to play again? type 'y' for yes, or 'n' for no" 
        $restart -eq 'n' 
       
        }while( $restart -eq 'y')

    