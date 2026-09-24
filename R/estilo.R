# Estilo gráfico del curso: misma paleta que el preámbulo LaTeX de los apuntes.

rojo      <- "#69000C"   # darkRed
rojo2     <- "#7F000D"   # deepRed
azul      <- "#19375A"   # darkBlue
gris      <- "#464646"   # darkGray
azul_gris <- "#466F9D"   # grayBlue
sombra    <- adjustcolor(rojo, alpha.f = 0.18)   # darkRed!18
gris_suave <- adjustcolor(gris, alpha.f = 0.15)  # darkGray!15

palette(c(rojo, azul, gris, azul_gris, rojo2))

estilo_par <- function() {
  par(bty = "n", las = 1, family = "sans",
      fg = gris, col.axis = gris, col.lab = gris, col.main = gris,
      cex.axis = 0.85, cex.lab = 0.95, cex.main = 1, font.main = 1,
      mgp = c(2.3, 0.6, 0), tcl = -0.25, lwd = 1,
      mar = c(4, 4, 1.5, 1))
}

# knitr reinicia par() en cada chunk; este hook lo vuelve a aplicar.
knitr::knit_hooks$set(estilo = function(before, options, envir) {
  if (before) estilo_par()
})

knitr::opts_chunk$set(estilo = TRUE, fig.align = "center",
                      dev.args = list(bg = "transparent"))
