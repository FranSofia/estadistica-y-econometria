# Estadística y Econometría

Sitio web del curso "Estadística y Econometría", con presentaciones tipo slides y materiales de apoyo.

Ante todo, este es un respositorio *personal* que busca entregar contenido y herramientas de estadística y econometría. A su vez, tratar de presentar/enseñar contenidos es una forma en la que también se aprende, por lo que el repositorio también tiene una función cognitiva individual.

**Sitio web:** https://fransofia.github.io/estadistica-y-econometria/

## Descripción

Curso de fundamentos estadísticos y modelamiento econométrico, con énfasis en la comprensión teórica de los métodos y su aplicación en ciencias sociales. Las presentaciones están diseñadas en formato revealjs (similar a Beamer) con soporte completo de LaTeX.

## Contenido

| Clase | Tema |
|-------|------|
| | **Unidad I · Fundamentos de probabilidad** |
| 01 | Fundamentos de probabilidad |
| 02 | Variables aleatorias y distribuciones |
| 03 | Muestreo y teoría asintótica |
| | **Unidad II · Estimación** |
| 04 | Estimación puntual y propiedades de los estimadores |
| 05 | Máxima verosimilitud y método de momentos |
| 06 | Mínimos cuadrados ordinarios como estimador |
| | **Unidad III · Regresión** |
| 07 | Teoría asintótica de mínimos cuadrados |
| 08 | Regresión simple y múltiple en la práctica |
| 09 | Formas funcionales e interpretación de coeficientes |
| 10 | Pruebas de hipótesis e intervalos de confianza |
| | **Unidad IV · Introducción a la inferencia causal** |
| 11 | Causalidad, endogeneidad e identificación |
| 12 | Variables instrumentales |
| 13 | Diferencias en diferencias |
| 14 | Regresión discontinua |

## Bibliografía

La carpeta `bibliografia/` solo incluye los libros que sus autores distribuyen libremente (Hansen y Blitzstein y Hwang). El resto de la bibliografía del curso no está en el repositorio porque tiene derechos de autor. Si necesitas ayuda para conseguir algún texto, escríbeme a fnunezre@fen.uchile.cl.

## Estructura del proyecto

```
estadistica-y-econometria/
├── _quarto.yml              # Configuración del sitio
├── index.qmd                # Página principal
├── syllabus.qmd             # Programa del curso
├── recursos.qmd             # Materiales y recursos
├── weeks/                   # Carpeta con las clases
│   ├── week01/
│   │   ├── page.qmd         # Página de la clase 
│   │   └── slides.qmd       # Presentación revealjs
│   ├── week02/
│   │   ├── page.qmd
│   │   └── slides.qmd
│   └── ...
├── bibliografia/             # Libros de libre distribución
├── styles/
│   ├── custom.scss           # Tema del sitio web
│   ├── slides-theme.scss     # Tema de las presentaciones
│   └── extra.css             # Ajustes menores
├── figures/                  # Imágenes y logos
├── R/estilo.R                # Paleta y estilo común de los gráficos
├── referencias.bib           # Bibliografía citada en las slides
├── data/                     # Datasets
└── .github/workflows/        # GitHub Actions 
```

## Tecnologías

- [Quarto](https://quarto.org/) — Sistema de publicación científica
- [Revealjs](https://revealjs.com/) — Presentaciones HTML (vía Quarto)
- [R](https://www.r-project.org/) — Lenguaje estadístico
- [GitHub Pages](https://pages.github.com/) — Hosting

## Cómo usar este repositorio

1. Clona el repositorio:
```bash
git clone https://github.com/FranSofia/estadistica-y-econometria.git
```

2. Instala [Quarto](https://quarto.org/docs/get-started/)

3. Previsualiza:
```bash
quarto preview
```

4. Renderiza el sitio completo:
```bash
quarto render
```

## Licencia

Este material está bajo licencia [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).

## Contacto

**Fran Sofía Núñez Rebolledo**  
fnunezre@fen.uchile.cl
Universidad de Chile / Instituto Nacional de Estadísticas
