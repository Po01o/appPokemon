# Integrantes del equipo

- Víctor Alejandro Márquez Mares
- Luis Fernando Maldonado Ramírez
- Carlos Joel Martínez López
- Jesús Emiliano Rodríguez Muñoz

# Pokédex APP

Una APP desarrollada en SWIFT UI que simula la estructura de una pokedex, para usarse solamente se debe desplazar por la lista de pokemones mostrada en la pantalla y dar click en cualquiera para ver su información detallada.

## MODELO

### `PokemonModel`

Incluye toda la información de los pokemones y su tipo de dato, se recolecta desde la API

```
struct PokemonModel: Codable, Identifiable {
    let id: Int
    let imagen: String
    let nombre: String
    let tipo: String
    let descripcion: String
}
```
## COMPONENTES / VISTAS

### PokemonCard

Permite mostrar a los Pokemones en la pantalla, teniendo su imagen, nombre y tipo.
Requiere del siguiente valor:

- `pokemon`: De tipo PokemonModel, accede a la información de los pokemones para mostrarla

### botonLargo

Sección decorativa que simula ser un boton.
Requiere de los siguientes valores:

- `color1`: Color de fondo o sombra
- `color2`: Color del boton

### botonMas

Sección decorativa que simula ser un "Joystick".
Requiere de los siguientes valores:

- `color1`: Color de fondo o sombra
- `color2`: Color del boton

### botonesTop

Sección decorativa que simula ser una pequeña luz o foco al superior de los segmentos.
Requiere de los siguientes valores:

- `color1`: Color de fondo o sombra
- `color2`: Color del boton

### pantalla

Sección decorativa que simula ser una pantalla al inferior.
Requiere de los siguientes valores:

- `color`: Color de la pantalla

### recuadro

Sección decorativa que muestra la información de los pokemones en el modal.
Requiere de los siguientes valores:

- `nombre`: Titulo de la información
- `valor`: Datos del pokemon
