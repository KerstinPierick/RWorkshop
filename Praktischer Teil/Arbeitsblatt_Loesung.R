# Arbeitsblatt Lösungen

# 2 Vektoren

# a) Erzeugt folgende Vektoren
#    - 1 2 3 4 5 6 7
a <- 1:7
a
#    - 5 3 9 12
b <- c(5, 3, 9, 12)
b
#    - 1 1 1 2 2 2 3 3 3 
c <- rep(1:3, each = 3)
c
#    - 5 6 7 5 6 7 
d <- rep(5:7, times = 2)
d
#    - 2 4 6 8 10
e <- seq(2, 10, by = 2)
e

# b) Sortiere den Vektor b
sort(b)
# c) Erzeuge einen Vektor, der die Werte des Vektors c jeweils nur einmal enthält
unique(c)
# d) Wähle das 2. und 3. Element des Vektors e aus 
e[2:3]
# e) Wähle alle Elemente außer dem dritten und fünften des Vektors d aus
d[-c(3, 5)]
# f) Wähle alle Elemente des Vektors a aus, die größer als 4 sind
a[a > 4]

# 3 Rechnen mit Vektoren 
# a) Welches ist das größte Element in Vektor e?
max(e)
# b) Was ist der Median des Vektors a?
median(a)
# c) Berechne die Summe der natürlichen Logarithmen aller Elemente des Vektors b 
sum(log(b))
# d) Berechne den Logarithmus des zweiten Elements von c und runde den Wert auf zwei 
#    Nachkommastellen
round(log(d[2]), 2)

# 4 Datentypen

# a) Erzeuge folgende Vektoren: 
# - TRUE, FALSE, TRUE
f <- c(TRUE, FALSE, TRUE)
f
# - "Apfel", "Birne", "Mango"
g <- c("Apfel", "Birne", "Mango")
g
# - 5, 6, "Obstsalat"
h <- c(5, 6, "Obstsalat")
h
# - 3, 5, FALSE, TRUE
i <- c(3, 5, FALSE, TRUE)
i
# - "A", FALSE, TRUE
j <- c("A", FALSE, TRUE)
j
# Nach welchen Regeln werden Datentypen angepasst, um einen einheitlichen Vektor zu erzeugen?
# - Wenn character-Daten involviert sind, wird alles andere auch als character interpretiert
# - Wenn Zahlen zusammen mit logical-Daten vorkommen, werden die logicals als 0 (F) und 1 (T) 
#   interpretiert

# b) Mit den Funktionen typeof() und is.character(), is.logical() und is.numeric() kann man
# den Datentyp abfragen. Probiert die Funktionen an den eben erzeugten Vektoren aus.
typeof(f)
is.numeric(f)
is.logical(f)

# c) Datentypen können mit den Funktionen as.numeric(), as.logical() und as.character() ineinander 
# umgewandelt werden. Mache...
# - Vektor f zu einem numerischen und zu einem character Vektor
as.numeric(f)
as.character(f)
# - Vektor i zu einem character und zu einem logischen Vektor
as.character(i)
as.logical(i)
# - Vektor h zu einem numerischen und einem logischen Vektor
as.numeric(h)
as.logical(h)

# 4.5 Fehlende Werte (nur Code durchführen)

# 5 Data Frames

# a) Probiere folgenden Code aus

# b) Lade den in R vorhandenen Datensatz "iris". 
data("iris")
iris

# c) Wie viele Zeilen und Spalten hat der Datensatz?
nrow(iris)
ncol(iris)
dim(iris)

# d) Wie lautet die Beobachtung in der dritten Spalte und dreißigsten Zeile?
iris[30,3]
# e) Was ist der Mittelwert der Variable Sepal.Length?
mean(iris$Sepal.Length)
# f) Was ist der Datentyp der Variable Sepal.Length?
typeof(iris$Sepal.Length)

# 6 Einlesen von Daten

test <- read.csv("test.csv")
test


# 7 Exportieren von Daten
# Erstelle einen eigenen kleinen Datensatz in R zu einem Thema deiner Wahl und exportiere ihn
# mit der Funktion write.csv() (siehe Cheatsheet).

df <- data.frame(a = 1:4, b = 5:6)
write.csv(df, "my_dataset.csv")


# 8 Plotting
# Erstelle mit dem iris-Datensatz folgende Plots (siehe auch Base R Cheatsheet):
# a) Mit der Funktion plot(): einen Scatterplot mit Petal.Length auf der x-Achse und Petal.Width
# auf der y-Achse
plot(iris$Petal.Length, iris$Petal.Width)
# b) Mit der Funktion hist(): Ein Histogramm der Variable Sepal.Length
hist(iris$Sepal.Length)
# c) Versuche, folgenden Boxplot nachzubauen. Die benötigte Funktion steht nicht auf dem 
# Cheatsheet, benutze eine Suchmaschine.
boxplot(iris$Sepal.Length ~ iris$Species)
