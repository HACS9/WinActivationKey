function Get-WindowsKey {
    $key = (Get-WmiObject -Query 'SELECT * FROM SoftwareLicensingService').OA3xOriginalProductKey
    if ($key) {
        Write-Output "Klucz aktywacyjny Windows: $key"
    } else {
        Write-Output "Nie udało się znaleźć klucza aktywacyjnego."
    }
}

Get-WindowsKey
