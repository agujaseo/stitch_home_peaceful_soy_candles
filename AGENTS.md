# AGENTS.md · Directrices operativas VESTA

## 0. Arranque obligatorio

- **Leer `STATUS.md`** al inicio de cualquier sesión o tarea, sin excepción.
- Si `STATUS.md` no refleja la realidad del repo, detente y actualízalo antes de continuar.

## 1. Reglas inquebrantables

1. **Prohibido borrar código funcional previo.** Refactor = extender, no eliminar.
2. **Prohibido placeholders / TODOs.** Nada de `lorem ipsum`, `TODO`, `FIXME`, `XXX`, código muerto o stubs.
3. **Sin commits silenciosos.** Tras cada hito → actualizar `STATUS.md` + commit local descriptivo.
4. **Sin `git push` automático a producción.** Siempre requiere confirmación explícita del usuario.

## 2. Estilo de comunicación

- Conciso, técnico, directo.
- Sin relleno, sin disculpas, sin preámbulos.
- Reportar: qué se hizo → dónde → qué falta.
- Bloqueadores y decisiones se comunican explícitamente.

## 3. Flujo de trabajo por hito

```
1. Leer STATUS.md
2. Ejecutar la tarea
3. Verificar (local + sync WP si aplica)
4. Actualizar STATUS.md (estado, completadas, pendientes, decisiones)
5. git add + git commit -m "<tipo>(<scope>): <descripción>"
   → NO git push sin confirmación
```

**Convención de commits:** `feat|fix|refactor|docs|chore(scope): descripción imperativa`.

## 4. Reglas específicas del proyecto VESTA

### 4.1 Diseño — preservar tokens
- Usar exclusivamente tokens `palette-color-1` … `palette-color-8` vía variables CSS.
- **Nunca** hardcodear colores hex/rgb que contradigan la paleta.
- Tipografías fijas: **Playfair Display** (display/headings) + **Plus Jakarta Sans** (UI/cuerpo). No introducir otras.

### 4.2 Comercio — sin WooCommerce
- **WooCommerce está prohibido.** El carrito, la bolsa de encargo y el checkout se resuelven con **Fluent Forms** + plantillas HTML de Blocksy.
- Cualquier nueva funcionalidad de compra se implementa sobre Fluent Forms.

### 4.3 Sincronización con WordPress
- El canal oficial de despliegue es `scripts/sync_to_wp.ps1`.
- **No modificar, renombrar ni eliminar** este script sin decisión explícita documentada en `STATUS.md`.
- Verificar rutas y parámetros del script antes de invocarlo.

### 4.4 Estética "Atelier Sereno" (anti-slop editorial)
- Tono visual: editorial, cálido, artesanal, silencioso.
- **Anti-slop:** sin gradientes genéricos, sin iconografía stock sin criterio, sin sombras pesadas, sin plantillas de landing SaaS.
- Coherencia con conceptos del proyecto: velas de arena, goteros botánicos, centros de mesa efímeros.

## 5. Checklist antes de cerrar una tarea

- [ ] No se borró código funcional previo.
- [ ] Cero TODOs / placeholders / código muerto.
- [ ] Tokens de color y tipografías respetados.
- [ ] Sin WooCommerce introducido.
- [ ] `scripts/sync_to_wp.ps1` intacto y funcional.
- [ ] `STATUS.md` actualizado.
- [ ] Commit local descriptivo creado (sin push).
