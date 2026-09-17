# Script de sincronización y subida a GitHub para VESTA
param (
    [string]$CommitMessage = "Actualización de páginas y recursos VESTA"
)

git add .
git commit -m "$CommitMessage"
git push origin main
Write-Host "✅ Cambios subidos correctamente a GitHub." -ForegroundColor Green
