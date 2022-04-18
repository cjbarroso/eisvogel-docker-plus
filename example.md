---
title: "Boxes with pandoc-latex-environment and awesomebox"
author: Teracloud Engineering
date: "2020-01-01"
subject: "Markdown"
keywords: [Markdown, Example]
lang: "en"
colorlinks: true
titlepage: true
toc: true
toc-own-page: true
toc-depth: 2
titlepage-text-color: "FFFFFF"
titlepage-rule-color: "FFFFFF"
titlepage-rule-height: 2
header-left: "Confidential"
titlepage-color: "3C9F53"
page-background: /opt/pandoc/bg-body-teracloud.pdf
titlepage-background: /opt/pandoc/bg-titlepage-teracloud.pdf
header-includes:
- |
  ```{=latex}
  \usepackage{awesomebox}
  ```
pandoc-latex-environment:
  noteblock: [note]
  tipblock: [tip]
  warningblock: [warning]
  cautionblock: [caution]
  importantblock: [important]
...

# Boxes with `pandoc-latex-environment` and `awesomebox`

This example demonstrates the use of the filter [`pandoc-latex-environments`] to create custom boxes with the [`awesomebox`] package. *pandoc-latex-environment* is a pandoc filter for adding LaTeX environement on specific HTML div tags.

titlepage-rule-color: "360049"

## Box Types

For a list of all available boxes and options visit the [`awesomebox` documentation](https://ctan.org/pkg/awesomebox).

```markdown
::: note
Lorem ipsum dolor ...
:::
```

::: note
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam aliquet libero
quis lectus elementum fermentum.

Fusce aliquet augue sapien, non efficitur mi ornare sed. Morbi at dictum
felis. Pellentesque tortor lacus, semper et neque vitae, egestas commodo nisl.
:::

```markdown
::: tip
Lorem ipsum dolor ...
:::
```

::: tip
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam aliquet libero
quis lectus elementum fermentum.

Fusce aliquet augue sapien, non efficitur mi ornare sed. Morbi at dictum
felis. Pellentesque tortor lacus, semper et neque vitae, egestas commodo nisl.
:::

```markdown
::: warning
Lorem ipsum dolor ...
:::
```

::: warning
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam aliquet libero
quis lectus elementum fermentum.

Fusce aliquet augue sapien, non efficitur mi ornare sed. Morbi at dictum
felis. Pellentesque tortor lacus, semper et neque vitae, egestas commodo nisl.
:::

```markdown
::: caution
Lorem ipsum dolor ...
:::
```

::: caution
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam aliquet libero
quis lectus elementum fermentum.

Fusce aliquet augue sapien, non efficitur mi ornare sed. Morbi at dictum
felis. Pellentesque tortor lacus, semper et neque vitae, egestas commodo nisl.
:::

```markdown
::: important
Lorem ipsum dolor ...
:::
```

::: important
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam aliquet libero
quis lectus elementum fermentum.

Fusce aliquet augue sapien, non efficitur mi ornare sed. Morbi at dictum
felis. Pellentesque tortor lacus, semper et neque vitae, egestas commodo nisl.
:::

One can also use raw HTML `div` tags to create the custom environments.

```markdown
<div class="important">
Lorem ipsum dolor ...
</div>
```

<div class="important">
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam aliquet libero
quis lectus elementum fermentum.
</div>

Markdown formatting inside the environments is supported.

::: important
**Lorem ipsum dolor** sit amet, `consectetur adipiscing` elit.

```
if(args.length < 2) {
	System.out.println("Lorem ipsum dolor sit amet");
}
```

*Nam aliquet libero
quis lectus elementum fermentum.*
:::

[`pandoc-latex-environments`]: https://github.com/chdemko/pandoc-latex-environment/
[`awesomebox`]: https://ctan.org/pkg/awesomebox
