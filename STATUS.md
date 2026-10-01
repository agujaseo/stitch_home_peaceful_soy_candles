# STATUS · VESTA · Velas Artesanales

> Fuente de verdad operativa. **Leer al inicio de cada sesión.**

## 1. Estado actual

**Fase:** Producción activa · iteración continua sobre `main`.
**Entorno:** WordPress + Blocksy Pro sobre `https://lumina.pagify.es/`.
**Sincronización:** local → WP vía `scripts/sync_to_wp.ps1` (PowerShell).

## 2. Stack tecnológico

| Capa | Tecnología |
|---|---|
| CMS | WordPress |
| Tema | Blocksy Pro (tokens `palette-color-1` … `palette-color-8`) |
| Tipografías | Playfair Display (display) + Plus Jakarta Sans (UI/cuerpo) |
| Construcción | Gutenberg nativo + plantillas HTML de Blocksy |
| Formularios | Fluent Forms (carrito artesanal, sin WooCommerce) |
| Emails | Plantillas HTML responsive branded (welcome, order, aviso artesano) |
| Sync | `scripts/sync_to_wp.ps1` |

## 3. Último commit de referencia

```
55a9b51  feat(email): responsive branded HTML email templates for customer
         welcome/order and artisan notification
```

Histórico inmediato:
```
776c957  feat: sistema de carrito y bolsa de encargo artesanal sin WooCommerce
         con Fluent Forms
f313414  feat: integrar velas de arena, goteros botánicos y centros de mesa
         efímeros en toda la web
```

## 4. Tareas completadas recientes

- [x] Plantillas de email HTML responsive branded (cliente + notificación artesano).
- [x] Sistema de carrito y bolsa de encargo artesanal con Fluent Forms (sin WooCommerce).
- [x] Integración transversal de conceptos: velas de arena, goteros botánicos, centros de mesa efímeros.

## 5. Tareas pendientes inmediatas

- [ ] QA end-to-end del flujo carrito → email → confirmación (cross-client: Gmail, Outlook, Apple Mail).
- [ ] Revisar accesibilidad (contraste) de `palette-color-*` en formularios Fluent Forms.
- [ ] Verificar fallbacks de fuentes (Playfair Display / Plus Jakarta Sans) y `font-display`.
- [ ] Auditoría de plantillas HTML de Blocksy tras cambios recientes.
- [ ] Documentar la estructura de campos de Fluent Forms (carrito bolsa de encargo).

## 6. Decisiones técnicas y restricciones clave

**No romper:**
- Tokens de diseño VESTA `palette-color-1` … `palette-color-8`: usar siempre vía variables CSS, nunca hardcodear hex.
- Tipografías fijas: **Playfair Display** (display) + **Plus Jakarta Sans** (cuerpo).
- **WooCommerce PROHIBIDO**: el carrito se resuelve con Fluent Forms.
- Preservar `scripts/sync_to_wp.ps1` como canal oficial de despliegue.
- Estética editorial "Atelier Sereno": anti-slop, sin genéricos ni ornamentos decorativos arbitrarios.

**Arquitectura vigente:**
- Carrito/bolsa de encargo = Fluent Forms + plantillas HTML de Blocksy (Gutenberg nativo).
- Emails branded versionados en el repo junto al resto de plantillas.
