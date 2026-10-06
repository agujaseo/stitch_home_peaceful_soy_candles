---
name: web-native-editability
description: "Web Native Editability & Fidelity Skill. Proteger la editabilidad visual nativa en WordPress y la fidelidad de diseño en Blocksy Pro y Gutenberg."
---

# Web Native Editability & Fidelity Skill

## Purpose
Protect two things at the same time:
1. the user's ability to visually edit every WordPress page after AI implementation;
2. fidelity when translating a design, reference website, existing WordPress project or approved visual into native WordPress structures.

**Visual similarity alone is not completion.** A page is only complete when its visual result, block structure, semantics and editability are all coherent.

## Mandatory stack policy
- Blocksy PRO is the default theme/chassis for this workspace.
- Prefer an appropriate Blocksy PRO Starter Site as the starting canvas when one fits the project.
- Use Gutenberg-native structures and verified native blocks.
- Use Stackable and Greenshift only through their real registered block implementations and controls.
- Use Novamira PRO as the normal execution layer for WordPress work in this workspace.
- Prefer native theme/block settings over custom code whenever the requested result can be achieved natively.

## Fidelity rule: translate, do not flatten
When the task is a translation of a design/reference into WordPress:
- Treat the source as a **structural specification**, not merely as a screenshot to imitate.
- Identify sections, containers, columns, groups, headings, media, buttons, lists, forms, spacing, typography hierarchy, responsive behavior and reusable patterns before implementation.
- Map each source element to the closest verified native Gutenberg, Blocksy PRO, Stackable or Greenshift block/control.
- Preserve hierarchy and relationships between elements, not only their appearance.
- Preserve responsive intent: desktop/tablet/mobile behavior must be represented with native controls wherever those controls exist.
- Preserve semantic intent: headings must remain headings, lists remain lists, buttons remain buttons, navigation remains navigation, etc.
- Do not replace a native block with a visually equivalent HTML blob merely because the latter is faster.
- If an exact native equivalent does not exist, document the gap and choose the closest editable implementation rather than silently flattening the design into code.

## Fidelity rule: copy/migrate an existing project
When the request is to copy, clone, reproduce or migrate an existing website/project:
- First inspect the source project's actual WordPress structure, theme, active plugins, registered blocks, templates, template parts, patterns, menus, widgets, Customizer settings and relevant content model when access is available.
- Reproduce the **editable structure**, not only the rendered front-end HTML.
- Prefer official/native WordPress export/import, theme/plugin mechanisms, APIs or documented migration paths when available.
- Do not scrape rendered HTML and paste it into a Custom HTML/Code block as a substitute for migration.
- Do not invent Gutenberg block serialization, block names, attributes, theme_mods, plugin IDs or internal data structures.
- When a source component belongs to Blocksy, Stackable, Greenshift or another plugin, reproduce it using the corresponding real component and controls whenever available.
- When an exact source feature cannot be reproduced natively, flag it explicitly as a fidelity limitation; never disguise the limitation as a successful clone.
- Keep source and destination clearly separated. Never contaminate one client's Brand DNA, assets or configuration with another project's data.

## Prohibited implementation shortcuts
- Never invent Gutenberg comments, block names, attributes, unique IDs, serialized markup or plugin internals.
- Never paste a visually complete HTML page into a Gutenberg Code/HTML block merely because it looks correct in the browser.
- Never treat arbitrary HTML/CSS as equivalent to a native Stackable, Greenshift, Blocksy or Gutenberg component.
- Never use raw generated code to bypass an editor limitation without explicitly recording the limitation and obtaining the required approval.
- Never declare a reference copied faithfully if only its screenshot/rendered HTML was reproduced.

## Mandatory validation
Before a web task can be marked READY_FOR_APPROVAL:
1. Compare the implemented structure against the source/reference.
2. Parse/validate the resulting WordPress block structure.
3. Open the page in the WordPress editor.
4. Confirm no invalid or unexpected block warnings.
5. Confirm intended blocks expose their native controls.
6. Confirm Blocksy Customizer remains functional.
7. Confirm responsive behavior is controlled by native block/theme settings where applicable.
8. Run browser QA at desktop and mobile breakpoints.
9. Check semantic structure, accessibility, SEO-critical elements and performance-sensitive implementation choices.
10. Record any feature that could not be implemented natively or exactly.

## Fidelity verdicts
Use one of these explicit states:
- `FAITHFUL_NATIVE`: source intent reproduced with native/editable structures.
- `FAITHFUL_WITH_LIMITATIONS`: source intent reproduced closely, with documented native limitations.
- `BLOCKED`: fidelity or editability cannot be guaranteed safely.

Do not use a generic `DONE` status when a fidelity limitation remains undocumented.

## Failure behavior
If native editability or faithful structural translation cannot be guaranteed, do not silently fall back to generated code. Stop that implementation path, explain the limitation, and ask for an explicit decision only when no safe native alternative exists.
