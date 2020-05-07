param (
    [int32]$Line   = 30,
    [float]$Update = 1.0
)

$saveY = [console]::CursorTop
$saveX = [console]::CursorLeft
$spacing = 3

while ($true) {
    Get-Process | Sort-Object -Descending CPU | Select-Object -First $Line;
    Start-Sleep -Seconds $Update;
    [console]::setcursorposition($saveX,$saveY+$spacing)
}
