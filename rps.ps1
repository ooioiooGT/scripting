<#
 Program Name : rps
 Date: 10/04/2022
 Author: Gilber
  Corse: CIT361 I, Gilber, affirm that I wrote this script as original work completed by me. 
 #>


#pseudocode
#match: a sequence of game, keep playing until the player wants to quit
#game: a swquence of rounds, keep playing until either computer or player has won twice
 $c_win = 0
 $P_win = 0
 $round = 0

#rounds: a swquence of rps choices 
do{
 Write-Host "Total Score 'User' $total_rounds_usr - 'Computer' $total_rounds_com" -f yellow
 $comp_score = 0 
 $user_score = 0

do{
    Write-Host "User score: $user_score" -f yellow
    Write-Host "Computer score: $comp_score" -f green
#   computer chooses
    $comp_choice = 'r','p','s'|Get-Random
#   user chooses
    $per_choice = Read-Host "Choose r for Rock, p for Paper, or s for Scissors?"
#   determins the winner
   
    if ($comp_choice -eq $per_choice){
    $round += 1
    Write-Host "Computer $comp_choice The player $per_choice. You are tie"
    }
    elseif(($comp_choice -eq 'r') -and ($per_choice -eq 'p')){
    $user_score += 1
    $round += 1
    Write-Host "Computer $comp_choice The player $per_choice. The player win"
    }
    elseif(($comp_choice -eq 'r') -and ($per_choice -eq 's')){
    $comp_score += 1
    $round += 1
    Write-Host "Computer $comp_choice The player $per_choice. The computer win"
    }
    elseif(($comp_choice -eq 'p') -and ($per_choice -eq 'r')){
    $comp_score += 1
    $round += 1
     Write-Host "Computer $comp_choice The player $per_choice. The computer win"
    }
    elseif(($comp_choice -eq 's') -and ($per_choice -eq 'r')){
    $user_score += 1
    $round += 1
    write-host "Computer $comp_choice the player $per_choice. The player win"
    }
    elseif(($comp_choice -eq 'p') -and ($per_choice -eq 's')){
    $user_score += 1
    $round += 1
    Write-Host "Computer $comp_choice The player $per_choice. The player win"
    }
    elseif(($comp_choice -eq 's') -and ($per_choice -eq 'p')){
    $comp_score+= 1
    $round += 1
    Write-Host "Computer $comp_choice The player $per_choice. The computer win $round $c_win $comp_scor"
    }
    
  }until (($user_score  -eq 2)  -or ($comp_score -eq 2))
   if ($user_score -eq 2){Write-Host "You won game $user_score - $comp_score" -f green
        $P_win += 1 
        Write-Host "Match Score: Computer: $c_win - User: $P_win" -f green
        } else {
            $c_win += 1 
            Write-Host "Match Score: Computer: $c_win - User: $P_win" -f red
            Write-Host "Computer won game $comp_score - $user_score" -f red
        } 
        $restart = Read-Host "Do you want to play again? type 'y' for yes, or 'n' for no" 
        $restart -eq 'n' 
}while (
    $restart -eq 'y'
)
if ($c_win -gt $P_win) {
    Write-Host "Computer Wins" -f red 
} elseif($P_win -gt $c_win) {
    Write-Host "User Wins" -f green
} elseif($P_win -eq $c_win){
    Write-Host "Tie Game" -f green
}

Write-Host "FINAL SCORE: COMPUTER: $c_win - USER: $P_win "

#   update cariables, have other round until game is over 