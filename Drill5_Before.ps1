mkdir Drill5

cd Drill5

$applications = @("Macbook", "Server", "Laptop")
$now = [System.DateTime]::Now
for ($i = 0; $i -lt 30; $i++) {
    New-Item ("Log_{0}_{1:yyyyMMdd}.txt" -f $applications[$i % 3], $now.AddDays(-$i)) -Force
}