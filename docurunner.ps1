param(
  [string]$Proyecto = (Get-Location).Path,
  [string]$Salida = (Join-Path (Get-Location).Path "documentacion.docx")
)

$repo = $PSScriptRoot
$env:PYTHONPATH = $repo
Push-Location $repo
try {
  python -m app.main $Proyecto -o $Salida
}
finally {
  Pop-Location
}
