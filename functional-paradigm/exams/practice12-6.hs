-- 1)
data Pelicula = Pelicula {
    nombrePelicula :: String,
    genero :: String,
    duracion :: Float,
    origen :: String
} deriving Show

psicosis = Pelicula "Psicosis" "Terror" 109 "Estados Unidos"
perfumeDeMujer= Pelicula "Perfume de Mujer" "Drama" 150  "Estados Unidos"
elSaborDeLasCervezas = Pelicula "El sabor de las cervezas"  "Drama" 95 "Iran"
lasTortugasTambienVuelan = Pelicula "Las tortugas también vuelan" "Drama" 103 "Iran"


data Usuario = Usuario {
    nombreUsuario :: String,
    edad :: Integer,
    categoria :: String,
    paisDeResidencia :: String,
    peliculasVistas :: [Pelicula],
    estadoDeSalud :: Integer
} deriving Show

-- 2)
juan = Usuario "juan" 23 "estandar"  "Argentina" [perfumeDeMujer] 60

ver :: Usuario -> Pelicula -> Usuario
ver usuario pelicula = usuario { peliculasVistas = peliculasVistas usuario ++ [pelicula] }
-- ":" añade un elemento al inicio de una lista

-- 3)

-- premiar :: [Usuario] -> [Usuario]
-- premiar = filter candidato
-- where
--     candidato :: Usuario -> Bool
--     candidato usuario =
--         let peliculasNoYankees = filter (not . yankee) (peliculasVistas usuario)
--         in largoGenerico noYankee > 20


-- premiarInterFieles :: [Usuario] -> [Usuario]
-- premiarInterFieles usuarios = map premiar

-- subirCategoria :: Usuario -> Usuario
-- subirCategoria usuario = usuario {categoria = nuevaCategoria.categoria $ usuario}

-- nuevaCategoria :: String -> String
-- nuevaCategoria "basica" = "estandar"
-- nuevaCategoria _ = "premium"

-- 4)