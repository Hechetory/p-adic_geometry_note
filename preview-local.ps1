$ErrorActionPreference = "Stop"

$quartoExe = "C:\Tools\Quarto-1.10.18\bin\quarto.exe"
$previewTemp = "C:\QuartoTemp"

if (-not (Test-Path -LiteralPath $quartoExe)) {
    throw "Quarto was not found at $quartoExe"
}

New-Item -ItemType Directory -Path $previewTemp -Force | Out-Null

# Quarto 1.10 on Windows can fail when its temporary files pass through a
# non-ASCII user-profile path. Keep preview-only temporary files in an ASCII
# path without changing the system-wide TEMP setting.
$env:TEMP = $previewTemp
$env:TMP = $previewTemp

& $quartoExe preview --no-browser @args

