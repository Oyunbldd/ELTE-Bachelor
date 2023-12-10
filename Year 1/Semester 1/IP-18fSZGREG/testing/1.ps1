param(
    [int]$n
)

function Fibonacci {
    param ($n)
    if ($n -eq 0) {
        return 0
    }
    elseif ($n -eq 1) {
        return 1
    }
    else {
        return (Fibonacci($n - 1)) + (Fibonacci($n - 2))
    }
}

for ($i = 1; $i -le $n; $i++) {
    $num = Fibonacci $i
    Write-Host -NoNewline "$num "
}