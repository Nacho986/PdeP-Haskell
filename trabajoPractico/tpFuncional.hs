--Punto 1
data Planta = Planta {
    nombre::String,
	puntosDeVida :: Int,
    generaSoles :: Int,
    poderDeAtaque :: Int
}deriving (Show)

data Zombie = Zombie {
    nombreZombie :: String,
    nivelDeMuerte :: Int,
    articulos :: Int,
    poderDeMordida :: Int
}deriving (Show)

data LineaDeDefensa = LineaDeDefensa { 
	plantas ::[Planta], 
	zombies :: [Zombie]
} deriving (Show)

peaShooter = Planta {nombre = "Peashooter" , puntosDeVida = 5, generaSoles =0, poderDeAtaque = 2}
repeater = Planta {nombre = "Repeater" , puntosDeVida = 5, generaSoles =0, poderDeAtaque = 4} -- hacer con copia?
sunFlower = Planta {nombre = "Sunflower" , puntosDeVida = 7, generaSoles =1, poderDeAtaque = 0}
nut = Planta {nombre = "Nut" , puntosDeVida = 100, generaSoles =0, poderDeAtaque = 0}

zombieBase = Zombie {nombreZombie = "Zombie", nivelDeMuerte = 6, articulos=0, poderDeMordida=1}
ballonZombie = Zombie {nombreZombie = "Pepe colgado", nivelDeMuerte = 12, articulos=1, poderDeMordida=1}
paperZombie = Zombie {nombreZombie = "Betl el chismoso", nivelDeMuerte = 16, articulos=1, poderDeMordida=2}
gargantuar = Zombie {nombreZombie = "Gargantuar Hulk Smash Puni god", nivelDeMuerte = 30, articulos=2, poderDeMordida=30}

--Punto 2
especialidad :: Planta -> String
esPeligroso :: Zombie -> Bool

--Item a
especialidad (Planta _ puntosDeVida generaSoles poderDeAtaque ) | (poderDeAtaque*2)>puntosDeVida = "Atacante" | generaSoles==1 = "Provedora" | otherwise = "Defensiva"

--Item b
esPeligroso (Zombie _ nivelDeMuerte articulos _) = nivelDeMuerte > 10 || articulos > 1

--Punto 3
linea1 = LineaDeDefensa { 
	plantas =[sunFlower, sunFlower, sunFlower], 
	zombies =[]
}

linea2 = LineaDeDefensa { 
	plantas = [peaShooter, peaShooter, sunFlower, nut], 
	zombies = [zombieBase, paperZombie]
}

linea3 = LineaDeDefensa { 
	plantas = [sunFlower, peaShooter], 
	zombies = [gargantuar, zombieBase, zombieBase]
}

linea4 = LineaDeDefensa { 
	plantas = [peaShooter], 
	zombies = [zombieBase]
}