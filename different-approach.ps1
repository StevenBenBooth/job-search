foreach($line in Get-Content .\urls.txt) {
  Start-Process $line
}