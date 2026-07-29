Modus Zenburn
=============

A pair of GNU Emacs themes built on [Modus themes](https://protesilaos.com/emacs/modus-themes/) `5.0.0` or newer: the classic dark Zenburn palette and an original light adaptation.

## Installation

Choose one:

``` elisp
(use-package modus-zenburn
  :vc (:url "https://github.com/kiennq/modus-zenburn" :rev :newest)
  :defer 0
  :custom
  (modus-themes-bold-constructs t)
  :config
  (enable-theme 'modus-zenburn-light)
  (modus-themes-load-theme 'modus-zenburn-light)
  ;; (modus-themes-load-theme 'modus-zenburn)
  )

```

## Screenshots
### Zenburn theme
![ca11f959](./assets/README.md_ca11f959-8df9-45c7-a96e-2bc9aac8ea51.jpg)

### Zenburn light theme
![f1974107](./assets/README.md_f1974107-e02c-48fe-8e2d-c9ad92e7e143.jpg)
