# Postman Creative DS

Design system for Postman creative/marketing pages (solution pages, presales decks, campaign landing pages).

**Component library:** https://ryandonida-ship-it.github.io/creative-ds/
**Starter template:** https://ryandonida-ship-it.github.io/creative-ds/template.html

---

## Every page needs these in `<head>`

```html
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&family=IBM+Plex+Mono:wght@100;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://use.typekit.net/awv0awk.css">
<link rel="stylesheet" href="https://ryandonida-ship-it.github.io/creative-ds/tokens.css">
<link rel="stylesheet" href="https://ryandonida-ship-it.github.io/creative-ds/components.css">
```

And before `</body>`:
```html
<script src="https://ryandonida-ship-it.github.io/creative-ds/animations.js"></script>
```

---

## Design Tokens

| Token | Value | Use |
|---|---|---|
| `--orange` | `#FF6C37` | Brand orange, eyebrows, accents |
| `--orange-btn` | `#E0531F` | Button fill (darker for contrast) |
| `--light-orange-bg` | `#FFF2EB` | Metrics section bg, warm section bg |
| `--dark` | `#212121` | Primary text, headings |
| `--secondary` | `#6B6B6B` | Body text, nav links, footer links |
| `--border` | `#E6E6E6` | All card borders, dividers |
| `--white` | `#FFFFFF` | Card backgrounds, page bg |
| `--purple` | `#6F2CBA` | Footer "new" tags, accent |
| `--link-blue` | `#0265D2` | Link arrows, inline links |

---

## Typography

| Role | Font | Size / Weight |
|---|---|---|
| Hero H1 | Degular Display 700 | 55px / 60px lh |
| Section heading | Degular Display 600 | 36px / 42px lh — use `.section-h2` |
| Quote / pull text | Degular Display 600 | 28px / 32px lh |
| Hero subtitle | Inter 400 | 22px / 32px lh |
| Body | Inter 400 | 16px / 24px lh |
| Small body | Inter 400 | 14px / 22px lh |
| Eyebrow (large) | IBM Plex Mono 400 | 20px, uppercase, `letter-spacing:1.5px` — use `.eyebrow` |
| Eyebrow (small) | IBM Plex Mono 600 | 11–13px, uppercase, `letter-spacing:0.8px` |

---

## Card Pattern

All cards follow the same base rules:
- `border: 1px solid var(--border)`
- `border-radius: 12px`
- `padding: 24px`
- `background: var(--white)`
- Hover: `box-shadow: 0 8px 24px rgba(0,0,0,0.08)` + `transform: translateY(-2px)`
- Transition: `box-shadow 0.2s, transform 0.2s`

```html
<div style="border:1px solid var(--border);border-radius:12px;padding:24px;
     background:var(--white);display:flex;flex-direction:column;gap:12px;
     transition:box-shadow 0.2s,transform 0.2s;"
     onmouseenter="this.style.boxShadow='0 8px 24px rgba(0,0,0,0.08)';this.style.transform='translateY(-2px)'"
     onmouseleave="this.style.boxShadow='';this.style.transform=''">
  <div style="font-family:'IBM Plex Mono',monospace;font-size:11px;font-weight:600;
       color:var(--orange);letter-spacing:0.8px;text-transform:uppercase;">Eyebrow</div>
  <div style="font-family:'degular-display',sans-serif;font-weight:600;
       font-size:20px;line-height:26px;color:var(--dark);">Card Title</div>
  <div style="font-size:14px;line-height:22px;color:var(--secondary);">Body text.</div>
</div>
```

For card grids use: `display:grid; grid-template-columns:repeat(3,1fr); gap:16px`

---

## Buttons

```html
<!-- Primary CTA (large) -->
<a href="#" class="btn-primary">Get started free</a>

<!-- Nav buttons -->
<a href="#" class="btn-nav-secondary">Contact Sales</a>
<a href="#" class="btn-nav-primary">Launch Postman</a>

<!-- Ghost outlined -->
<a href="#" class="gb gb-md gb-ghost">See how it works</a>

<!-- Peach soft -->
<a href="#" class="gb gb-md gb-peach">Download</a>

<!-- Orange gradient (animated) -->
<a href="#" class="gb gb-md gb-orange-gradient">Start building</a>

<!-- Orange border gradient -->
<a href="#" class="gb gb-md gb-orange-border">Enterprise demo</a>

<!-- Link arrow -->
<a href="#" class="link-arrow">Learn more →</a>
```

---

## Quote Component

Animated gradient border on hover. Always inline the quotes SVG.

```html
<div class="quote-card">
  <div class="quote-mark-wrap">
    <svg class="quote-mark" width="48" height="48" ...><!-- inline quotes.svg --></svg>
  </div>
  <div class="quote-right">
    <div class="quote-top-row">
      <div class="quote-text">"Quote text here."</div>
    </div>
    <div class="quote-attr">
      <div class="quote-name">Name</div>
      <div class="quote-role">Title, Company</div>
    </div>
  </div>
</div>
```

---

## Resource Cards

```html
<div class="resources-grid">
  <div class="resource-card">
    <div class="resource-card-img"><img src="..." alt=""></div>
    <div class="resource-card-body">
      <div class="resource-eyebrow">Guide</div>
      <div class="resource-title">Title</div>
      <div class="resource-body">Description</div>
      <a href="#" class="link-arrow">Read more →</a>
    </div>
  </div>
</div>
```

---

## Forms

```html
<div class="form-row">
  <div class="form-group">
    <label class="form-label">First name</label>
    <input class="form-input" type="text">
  </div>
  <div class="form-group">
    <label class="form-label">Last name</label>
    <input class="form-input" type="text">
  </div>
</div>
<div class="form-group">
  <label class="form-label">Work email</label>
  <input class="form-input" type="email">
</div>
<div class="form-check">
  <input type="checkbox" id="cb">
  <label for="cb">I agree to the Terms of Service.</label>
</div>
<button class="btn-submit">Submit request</button>
```

---

## Animations

- **Scroll fade-up:** add `class="fade-up"` to any element. Triggers once when it enters the viewport.
- **Sticky nav shadow:** automatic — nav needs `id="main-nav"`.
- Both are initialized by `animations.js` — no extra JS needed.

---

## Section Spacing

- Standard section padding: `padding: 60px 160px`
- Hero padding: `padding: 120px 160px 140px`
- Section divider: `<hr class="section-divider">`
- Warm section background: `background: var(--light-orange-bg)` (`#FFF2EB`)

---

## Updating the design system

All styles live in `components.css` and `tokens.css` in this repo. Edit those files and push — every page referencing the CDN URL updates automatically. After changing a component, also update this CLAUDE.md and the visual library (`index.html`) to match.
