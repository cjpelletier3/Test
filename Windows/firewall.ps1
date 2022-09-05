#Set-ExecutionPolicy RemoteSigned -Force
New-NetFirewallRule -DisplayName 'PAR Pay (CCT)' -Profile @('Domain','Private','Public') -Direction Inbound -Action Allow -Protocol TCP -LocalPort @('8003')
New-NetFirewallRule -DisplayName 'PAR Pay (Pay @ Table)' -Profile @('Domain','Private','Public') -Direction Inbound -Action Allow -Protocol TCP -LocalPort @('9000')
New-NetFirewallRule -DisplayName 'PAR Pay (POS)' -Profile @('Domain','Private','Public') -Direction Inbound -Action Allow -Protocol TCP -LocalPort @('8001')
New-NetFirewallRule -DisplayName 'PAR Pay (SDK)' -Profile @('Domain','Private','Public') -Direction Inbound -Action Allow -Protocol TCP -LocalPort @('15583')
Start-Process wf.msc
Set-ExecutionPolicy Restricted -Scope LocalMachine -Force
exit