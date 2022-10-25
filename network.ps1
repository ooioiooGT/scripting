<#
 Program Name : network.ps1
 Date: 10/18/2022
 Author: Gilber
  Corse: CIT361 I, Gilber, affirm that I wrote this script as original work completed by me. 
 #>

 # (Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias Ethernet).IPAddress

 #Purpose: user input the ip address and submask than result as a networkID
 Function Get-IPNetwork([Net.ipaddress]$IP_address,[net.ipaddress]$submask){
    
    
    #caculate the networkID
    [net.ipaddress]$result = $IP_address.Address -band $submask.Address
    #print the result
    Write-Host $result
 }

 #Funtion2 : test the IP address in the same net work. 
 Function Test-IPNetwork([net.ipaddress]$IP_address1, [net.ipaddress]$IP_address2, [net.ipaddress]$submask1){
    #caculate the first networkID
    [net.ipaddress]$result1 = $IP_address1.Address -band $submask1.Address
    #caculate the second networkID
    [net.ipaddress]$result2 = $IP_address2.Address -band $submask1.Address
    Write-Host $result1
    Write-Host $result2

    if ($result1 -eq $result2){
        $true
        } 
    else{
        $false
        }
 }

 $ip1 = Read-Host "What is first IP address?" 
 $ip2 = Read-Host "What is second IP address?"
 $sub = Read-Host "What is submask?"

 Test-IPNetwork $ip1 $ip2 $sub
