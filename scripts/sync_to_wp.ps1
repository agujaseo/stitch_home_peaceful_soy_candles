# Script de sincronización con WordPress (lumina.pagify.es)
param (
    [string]$SiteUrl = "https://lumina.pagify.es",
    [string]$Token = ""
)

$headers = @{
    "Content-Type" = "application/json"
}

if ($Token) {
    $headers["Authorization"] = "Bearer $Token"
}

$pages = @(
    @{ Title = "Inicio"; Slug = "inicio"; File = "pages/inicio.html" },
    @{ Title = "Catálogo"; Slug = "catalogo"; File = "pages/catalogo.html" },
    @{ Title = "Manifiesto"; Slug = "manifiesto"; File = "pages/manifiesto.html" },
    @{ Title = "Pedidos Especiales"; Slug = "pedidos-especiales"; File = "pages/pedidos-especiales.html" }
)

foreach ($p in $pages) {
    if (Test-Path $p.File) {
        $content = Get-Content $p.File -Raw -Encoding UTF8
        Write-Host "Sincronizando página: $($p.Title)..." -ForegroundColor Cyan
        
        $body = @{
            title = $p.Title
            slug = $p.Slug
            content = $content
            status = "publish"
        } | ConvertTo-Json -Depth 5
        
        try {
            $res = Invoke-RestMethod -Uri "$SiteUrl/wp-json/wp/v2/pages" -Method Post -Headers $headers -Body $body
            Write-Host "✅ Página '$($p.Title)' sincronizada con ID $($res.id)" -ForegroundColor Green
        } catch {
            Write-Host "⚠️ No se pudo sincronizar '$($p.Title)' automáticamente (se requiere autorización Bearer): $($_.Exception.Message)" -ForegroundColor Yellow
        }
    }
}
