# Estadística y Econometría

Sitio web del curso "Estadística y Econometría", con presentaciones tipo slides y materiales de apoyo.

Ante todo, este es un respositorio *personal* que busca entregar contenido y herramientas de estadística y econometría. A su vez, tratar de presentar/enseñar contenidos es una forma en la que también se aprende, por lo que el repositorio también tiene una función cognitiva individual.

**Sitio web:** https://fransofia.github.io/estadistica-econometria/

## Descripción

Curso de fundamentos estadísticos y modelamiento econométrico, con énfasis en la comprensión teórica de los métodos y su aplicación en ciencias sociales. Las presentaciones están diseñadas en formato revealjs (similar a Beamer) con soporte completo de LaTeX.

## Contenido

| Clase | Tema |
|-------|------|
| 01 | Fundamentos de Probabilidad |
| 02 | Variables Aleatorias y Distribuciones |
| 03 | Distribuciones Muestrales y Teorema Central del Límite |
| 04 | Estimación Puntual: Propiedades de los Estimadores |
| 05 | --- |
| 06 | Intervalos de Confianza y Pruebas de Hipótesis |
| 07 | El Modelo de Regresión Lineal Simple |
| 08 | Mínimos Cuadrados Ordinarios: Derivación y Propiedades |
| 09 | Regresión Lineal Múltiple y Teorema de Gauss-Markov |
| 10 | Inferencia en Regresión: Tests t, F y R² |
| 11 | Diagnóstico: Heterocedasticidad y Multicolinealidad |
| 12 | Variables Instrumentales y Endogeneidad |

## Estructura del proyecto

```
estadistica-econometria/
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
├── styles/
│   ├── custom.scss           # Tema del sitio web
│   ├── slides-theme.scss     # Tema de las presentaciones
│   └── extra.css             # Ajustes menores
├── figures/                  # Imágenes y logos
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
git clone https://github.com/FranSofia/estadistica-econometria.git
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
fransofia.nr@gmail.com  
Universidad de Chile / INE
