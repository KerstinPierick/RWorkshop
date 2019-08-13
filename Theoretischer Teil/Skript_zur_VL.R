###################################################################
######## "Statistik und Programmieren mit R" ######################
###################################################################
########### Workshop von Kerstin Pierick ##########################
################### Campus 2019 ###################################
###################################################################

############### Skript zur Vorlesung ##############################

# 1. Grundrechenoperationen ---------------------------------------

1
1 + 2
2 - 1
3 * 3
10/2
5^2

# Logische Abfragen
5 == 5  # gleich
5 > 5   # größer als
5 >= 5  # größer gleich
5 != 5  # ungleich

# 2. Objekte und Zuordnung ----------------------------------------

a <- 5 # Der Operator "<-" weist a den Wert 5 zu
a

# Jetzt kann mit dem Objekt a gerechnet werden
a * 2

# Regeln  für Benennung von Objekten:
# - case sensitive 
A
# - Nur Zahlen, Buchstaben, "." und "_"
# - darf nicht mit Zahl anfangen, muss Buchstaben enthalten


# Objekte werden überschrieben, wenn man sie erneut zuweist
a <- 6
a

# 3. Vektoren ---------------------------------------------------

b <- c(3, 4, 5, 6) # Die Funktion c() fügt die einzelnen Elemente zu einem Vektor zusammen
b
c <- 3:6           # Der Doppelpunkt kann mit "bis" übersetzt werden
c
# Überprüfen, ob b und c übereinstimmen
b == c             
# Einzelne Elemente aufrufen 
b[1]
b[1:3]
b[c(1, 4)]
# Mit Vektoren rechnen
a * b
d <- a * b # Ergebnis als Objekt d speichern
d
b + c

# 4. Funktionen ---------------------------------------------------

log(a)     # Logarithmus von a
sqrt(a)    # Quadratwurzel von a
sqrt(b)    # Bei Vektoren mit >1 Elementen: Funktion wird auf jedes Element angewendet
sum(b)     # Summe
mean(b)    # Mittelwert
sd(b)      # Standardabweichung
length(b)  # Länge des Vektors
cor(b, d)  # Korrelationskoeffizient zweier Vektoren

# Eigene Funktion schreiben
# Für die Berechnung des Standardfehlers des Mittelwerts
se_of_mean <- function(x){
  sd(x)/sqrt(length(x))
}

se_of_mean(b)

# Funktionen für einfache Plots
hist(b)
plot(b, d)


# 5. Pakete -----------------------------------------------------

# Beispiel-Datensatz von R
data(iris)
iris

# Installation
install.packages("dplyr") # Installiert das Paket dplyr (bei install.packages immer mit "")

# Paket laden
library(dplyr)    # Stellt die Funktionen im Paket dplyr bereit (hier immer ohne "")

# Dokumentation des Pakets
help(package = dplyr)

# Eine Funktion aus dem Paket: select()
select(iris, Petal.Length)

# 6. Lineare Regression ------------------------------------------------------

# Modell formulieren: dist in Abhängigkeit von speed aus dem Datensatz cars
mod <- lm(dist ~ speed, data=cars) 
# Erbebnis begutachten
summary(mod)
plot(cars$speed, cars$dist)
abline(mod)
