function Invoke-Adventure {
    [CmdletBinding()]
    param()

    $option1 = '1) Run' 
    $option2 = '2) Prepare for battle'  
    $option3 = "3) Rub your lucky stone `n"       
    $death = (& 'C:\Users\calehum\AppData\Local\Programs\Python\Python311\python.exe' 'C:\Users\calehum\AppData\Local\Programs\Python\Python311\Scripts\death.py')                    
    $victory = (& 'C:\Users\calehum\AppData\Local\Programs\Python\Python311\python.exe' 'C:\Users\calehum\AppData\Local\Programs\Python\Python311\Scripts\victory.py')              
    $invalid_option=$false

    
    while ($true) { 
        Write-Host 'You are walking down a pristine path, when suddenly you hear a noise.'
        Start-Sleep -Seconds 2
        Write-Host 'BOOOOOOOOOOM!!! *Stomp Stomp Stomp*' -ForegroundColor DarkRed 
        Start-Sleep -Seconds 3 
        Write-Host 'What do you do?'
        Write-Host "$option1`n$option2`n$option3`n" -ForegroundColor Blue -BackgroundColor White
        $first_scenario = Read-Host -Prompt "Enter a number to select an option"

        switch ($first_scenario) {
                        '1' {
                Write-Host "You are surrounded by Orcs and killed.`n" -ForegroundColor Red
                $death
                break outer                                 
            }
            '2' {
                
                while ($true) {                    
                Write-Host "Three huge Orcs in dilapidated armor burst from the treeline... `n"
                Start-Sleep -Seconds 2
                Write-Host "Which do you choose? `n"

                $weapon1 = '1) Bow with exploding arrows'
                $weapon2 = '2) Sentinent sword of unknown origin'
                $weapon3 = "3) Rely on you magical knowledge `n"
                Write-Host "$weapon1 `n$weapon2 `n$weapon3 `n" -ForegroundColor Blue -BackgroundColor White
                $second_scenario = Read-Host -Prompt "Enter a number to select an option"

                    switch ($second_scenario) {
                        '1' {
                            Write-Host "Boooom! `n" -ForegroundColor Red
                            $death
                            break outer                                                 
                        }
                        '2' {
                            Write-Host "The sword laughs gleefully and consumes your soul. `n" -ForegroundColor Red
                            $death
                            break outer                                                 
                        }
                        '3' {
                            Write-Host "You are transported safely to the nearest tavern. Drinks are on the house. `n" -ForegroundColor Green
                            $victory
                            break outer                                          
                        }
                        default {
                            Write-Host "Play by the rules...try again" -ForegroundColor Red                                                   
                            continue                                                                   
                        }                                            
                                       
                    }          
                                 
                }
            }
                '3' {                                             
               
                    while ($true) {
                        $choice1 = '1) Slay my enemies'
                        $choice2 = '2) Grant me the power to save myself'
                        $choice3 = "3) Fly you fools!!! `n"
                        Write-Host "An ancient wizard appears before you! `n 'You have three choices, choose wisely', he says. `n"
                        Write-Host "$choice1 `n$choice2 `n$choice3 `n" -ForegroundColor Blue -BackgroundColor White
                        $third_scenario = Read-Host -Prompt "Enter a number to select an option"
                        if ($third_scenario -eq '1') {
                            Write-Host "Your entire travelling party drops dead, and the Orcs make you their king. `n" -ForegroundColor Green
                            $victory
                            break outer            
                        }
                        elseif ($third_scenario -eq '2') {
                            $death
                            break outer                
                        }
                        elseif ($third_scenario -eq '3') {
                            $death
                            break outer                
                        }  
   
                        else {
                            Write-Host "Play by the rules...try again" -ForegroundColor Red
                            continue
                        }
                    }
                }
                default {
                    Write-Host "Play by the rules...try again" -ForegroundColor Red
                    break                                
                }
            }
                                                         
        }                              
    }   

                                                                  
           
       
 

     
       
  

