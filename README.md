# VESTA · Velas Artesanales (WordPress + Blocksy Pro + Gutenberg)

Repositorio central, copia de seguridad y código fuente del proyecto **VESTA · Velas Artesanales**.  
Sitio web en producción/desarrollo: [https://lumina.pagify.es/](https://lumina.pagify.es/)  
Diseño de referencia: Atelier Sereno (Stitch).

---

## 🕯️ Filosofía y Lenguaje de Diseño

El sistema visual de VESTA encarna una filosofía de vida pausada (*slow-living*), artesanía botánica y serenidad táctil. El diseño equilibra la pureza editorial de publicaciones de arte con la calidez terrenal de materias primas no refinadas: cera virgen de soja, mechas de algodón puro, arcilla cocida, lino lavado y humo tenue.

### 🎨 Paleta Cromática (Tokens de Tema)

| Token Gutenberg | Color | Nombre de Taller | Uso Principal |
| :--- | :--- | :--- | :--- |
| `palette-color-1` | `#936B55` | Terracota Ceniza | Llamadas a la acción principales, acentos activos, badges |
| `palette-color-2` | `#78533E` | Arcilla Macerada | Etiquetas botánicas secundarias, subtítulos y acentos |
| `palette-color-3` | `#2B2623` | Espreso Humo | Textos descriptivos, precios y elementos estructurales |
| `palette-color-4` | `#1F1B18` | Negro Tinta Natural | Tipografía principal de titulares y contrastes altos |
| `palette-color-5` | `#EAE3D9` | Borde Lino | Delimitadores y bordes sutiles de 1px |
| `palette-color-6` | `#F4EFEA` | Superficie Arena | Tarjetas secundarias, fondos de reseñas y franjas |
| `palette-color-7` | `#FFF8F5` | Lienzo Crudo | Fondo principal del sitio web |
| `palette-color-8` | `#FFFFFF` | Blanco Hueso Puro | Contenedores y tarjetas de producto |

### 🖋️ Tipografía

- **Titulares & Encabezados:** `Playfair Display` (Pesos 400 y 500, espaciado -0.01em / -0.02em).
- **Cuerpo, Navegación y UI:** `Plus Jakarta Sans` (Pesos 300, 400 y 600).
- **Etiquetas Botánicas & Metadatos:** Mayúsculas con espaciado expandido (`letter-spacing: 0.12em - 0.16em`).

---

## 📁 Estructura del Repositorio

```text
stitch_home_peaceful_soy_candles/
├── pages/                          # Código nativo Gutenberg / Blocksy
│   ├── inicio.html                 # Página Principal (Hero, Filosofía, Colección, Testimonios)
│   ├── catalogo.html               # Catálogo Completo (Filtros, 6 Fichas Botánicas, Guía)
│   ├── manifiesto.html             # Manifiesto & Historia (Pilares, Alquimia viva, Firma)
│   └── pedidos-especiales.html     # Pedidos Especiales, Bodas & Gran Volumen (+ Formulario)
├── stitch_home_peaceful_soy_candles/ # Archivos fuente originales de Stitch
│   ├── atelier_sereno/DESIGN.md    # Especificaciones del sistema de diseño
│   ├── inicio_vesta_velas_artesanales/
│   ├── cat_logo_tienda_vesta/
│   ├── manifiesto_sobre_vesta/
│   └── pedidos_especiales_y_gran_volumen/
├── scripts/
│   ├── sync_to_wp.ps1              # Sincronización automatizada con WordPress vía API
│   └── push_to_github.ps1          # Control de versiones y push rápido
├── .gitignore
└── README.md
```

---

## 📑 Páginas Implementadas

1. **Inicio (`pages/inicio.html`):**
   - Hero editorial con badge "Alquimia Botánica & Sosiego", botones hacia colección y manifiesto, insignias de compromiso artesano y tarjeta flotante asimétrica.
   - 3 Bento Cards sensoriales ("Pureza de Origen", "Notas Botánicas", "Vaciado Lento").
   - Colección Esencial con 3 creaciones insignia.
   - Cita contemplativa del Manifiesto VESTA.
   - Ecos de Nuestro Santuario (3 testimonios verificados con puntuación).
   - Banner final de invitación con cerillas de madera natural.

2. **Catálogo (`pages/catalogo.html`):**
   - Métricas de taller (45-75h de combustión lenta, pabilo de algodón puro).
   - Pestañas de filtrado de colección ("Serie Serenidad", "Serie Bosque & Tierra", "Serie Cítrica", "Ediciones de Estación").
   - 6 Fórmulas Botánicas completas con notas olfativas, gramajes y precios.
   - Guía de 4 pasos para el ritual de cuidado y reposo de la vela.

3. **Manifiesto (`pages/manifiesto.html`):**
   - Prólogo contemplativo con icono sagrado de llama viva.
   - Narrativa del origen del taller (invierno de 2021) y rechazo a las parafinas derivadas del petróleo.
   - Placa técnica de vertido a 54.2°C.
   - Bento Grid con los 5 Principios Fundacionales innegociables.
   - Cierre con caligrafía y lema: *"Hecho a fuego lento"*.

4. **Pedidos Especiales (`pages/pedidos-especiales.html`):**
   - Modalidades: Bodas & Enlaces Íntimos (lote mínimo 25 uds), Regalos Corporativos (lote mínimo 50 uds) y Hostelería/Spas.
   - Proceso de creación en 4 fases (Diálogo, Cata olfativa a domicilio, Muestras con lacre, Vertido y entrega).
   - Formulario de solicitud y presupuesto con opción de Kit de 4 Muestras Olfativas en cera de cortesía.

---

## 🛠️ Stack Tecnológico

- **WordPress:** 6.x / 7.x
- **Tema:** Blocksy + Blocksy Companion Premium
- **Editor:** Gutenberg Nativo (Bloques modulares, 100% editables)
- **Formularios:** Fluent Forms
- **SEO:** Rank Math
- **Herramientas IA / MCP:** Novamira PRO

---

*Desarrollado y mantenido por Antigravity para VESTA · Atelier de Velas.*
