# Prepara una base liviana de CASEN 2024 para las clases del curso.
#
# Entrada:  data/raw/ (la base original en .RData; no se sube al repositorio)
# Salida:   data/casen2024_ocupados.csv (personas ocupadas, variables seleccionadas)
#
# Fuente: Ministerio de Desarrollo Social y Familia, Encuesta Casen 2024.
# Nombres de variables según el Libro de códigos Casen 2024 (data/docs/).

archivo <- list.files("data/raw", pattern = "\\.RData$", full.names = TRUE)
stopifnot(length(archivo) == 1)

entorno <- new.env()
objetos <- load(archivo, envir = entorno)
print(objetos)                        # nombre(s) del objeto guardado
casen <- get(objetos[1], envir = entorno)
rm(entorno); gc()

vars <- c("region", "area", "sexo", "edad", "esc", "activ", "asalariado",
          "o10", "yoprcor", "ytrabajocor", "expr", "varstrat", "varunit")
stopifnot(all(vars %in% names(casen)))

base <- as.data.frame(casen[, vars])
rm(casen); gc()

# Clase de cada columna: deben ser numéricas o "haven_labelled", no factores
print(sapply(base, function(x) class(x)[1]))

# Quitar etiquetas y dejar los códigos numéricos originales
base[] <- lapply(base, function(x) as.numeric(unclass(x)))

# Solo personas ocupadas (activ = 1)
ocupados <- base[!is.na(base$activ) & base$activ == 1, ]
ocupados$activ <- NULL

# Horas: -88 (no sabe) y otros códigos negativos pasan a NA
ocupados$o10[ocupados$o10 < 0] <- NA

write.csv(ocupados, "data/casen2024_ocupados.csv", row.names = FALSE)

# Diagnóstico para revisar en la consola
cat("\nOcupados en la muestra:", nrow(ocupados), "\n")
cat("Con ingreso de la ocupación principal:", sum(!is.na(ocupados$yoprcor)), "\n")
cat("Ocupados expandidos (suma de expr):", sum(ocupados$expr), "\n\n")
print(summary(ocupados[, c("edad", "esc", "o10", "yoprcor", "ytrabajocor", "expr")]))

y <- ocupados$yoprcor; w <- ocupados$expr; ok <- !is.na(y)
cat("\nyoprcor, media simple:     ", mean(y[ok]), "\n")
cat("yoprcor, media ponderada:  ", weighted.mean(y[ok], w[ok]), "\n")
cat("yoprcor, mediana simple:   ", median(y[ok]), "\n")
cat("Tamaño del archivo (MB):   ", file.size("data/casen2024_ocupados.csv") / 1e6, "\n")
