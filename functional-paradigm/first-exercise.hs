-- 5.1 Alumnos
-- Modelar un alumno, que define 
-- un nombre, 
-- la fecha de nacimiento, 
-- el legajo (sin dígito verificador), 
-- las materias que cursa 
-- y el criterio para estudiar ante un parcial:
-- algunos son estudiosos: estudian siempre, 
-- otros son hijos del rigor: estudian si el parcial tiene más de n preguntas, 
-- y también están los cabuleros, que estudian si la materia tiene una cantidad impar de letras. 

-- 5.2 Requerimientos
-- Modelar un parcial
-- Modelar el tipo que representa el criterio de estudio.
-- Modelar genéricamente un alumno.
-- Representar con la abstracción que crea más conveniente al criterio estudioso, hijo del rigor y cabulero.
-- Modelar a Nico, un alumno estudioso
-- Hacer que Nico pase de ser estudioso a hijo del rigor (buscar una abstracción lo suficientemente genérica)
-- Determinar si Nico va a estudiar para el parcial de Paradigmas
-- 5.3 Modelar un parcial
-- Para resolver este requerimiento, tenemos que abstraer la información necesaria para poder resolver lo que hoy nos piden. Hay mucha información que un parcial puede tener:
-- hora de comienzo
-- hora de fin
-- el/la docente que lo toma
-- la materia
-- el aula
-- la cantidad de alumnos presentes
-- la cantidad de preguntas
-- las preguntas propiamente dichas...
-- ... entre otros datos. Pero en este enunciado, solamente nos importan dos cosas: la materia (para los cabuleros) y la cantidad de preguntas que tiene un parcial (para los hijos del rigor).

import Text.Show.Functions -- We tell haskell how to display functions in the console

-- Parcial
data Parcial = Parcial String Int deriving (Show)

materia :: Parcial -> String
materia (Parcial mat _) = mat

cantidadPreguntas :: Parcial -> Int
cantidadPreguntas (Parcial _ cant) = cant

-- Criterios de estudio
type CriterioEstudio = Parcial -> Bool

-- Alumno genérico
data Alumno = Alumno {
   nombre :: String,
   fechaNacimiento :: (Int, Int, Int),
   legajo :: Int,
   materiasQueCursa :: [String],
   criterioEstudio :: CriterioEstudio
} deriving (Show)

-- Tipos de criterios
estudioso :: CriterioEstudio
estudioso _ = True

hijoDelRigor :: Int -> CriterioEstudio
hijoDelRigor n (Parcial _ preguntas) = preguntas > n

cabulero :: CriterioEstudio
cabulero (Parcial materia _) = (odd . length) materia

-- Nico
nico = Alumno {
    fechaNacimiento = (10, 3, 1993),
    nombre = "Nico",
    materiasQueCursa = ["sysop", "proyecto"],
    criterioEstudio = estudioso,
    legajo = 124124
}

-- Cambiar criterio
cambiarCriterioEstudio1 nuevoCriterio alumno = Alumno {
    nombre = nombre alumno,
    fechaNacimiento = fechaNacimiento alumno,
    legajo = legajo alumno,
    materiasQueCursa = materiasQueCursa alumno,
    criterioEstudio = nuevoCriterio
}

cambiarCriterioEstudio2 nuevoCriterio alumno = Alumno 
    (nombre alumno) (fechaNacimiento alumno)
    (legajo alumno) (materiasQueCursa alumno) nuevoCriterio

cambiarCriterioEstudio3 nuevoCriterio
    (Alumno nombre fecha legajo materias _)
    = (Alumno nombre fecha legajo materias nuevoCriterio)

-- ¿Va a estudiar?
estudia :: Parcial -> Alumno -> Bool
estudia parcial alumno = (criterioEstudio alumno) parcial

parcialPDP = Parcial "PDP" 3