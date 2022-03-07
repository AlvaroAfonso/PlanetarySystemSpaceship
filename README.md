# PlanetarySystemSpaceship
Proyecto de "Creando interfaces de usuario", asignatura de la ULPGC (Universidad de Las Palmas de Gran Canaria) hecho por **Álvaro Javier Afonso López**

### Introducción
El objetivo de esta práctica es crear un sistema planetario (partiendo del proyecto anterior "PlanetarySystem") por el cual el usuario pueda
desplazarse por él con unos controles establecidos. La finalidad es aprender el maneno de las perspecticas y la cámara.

![Gif de una prueba del proyecto](https://github.com/AlvaroAfonso/PlanetarySystemSpaceship/blob/main/PlanetarySystemSpaceship/PlanetarySystemSpaceship/export.gif)

### Desarrollo
Dado que la práctica es una continuación de la anterior, que es la que lleva el mayor peso del trabajo, esta se ha basado únicamente en el manejo de la cámara.
Para ello, la estrategia que he usado es tomar como punto base el punto centrar del sistema solar y a partir de él hacer las variaciones de movimiento según los controles
del usuario.

### Controles
* ESC para cerrar la aplicación
* Flechas para mover la posición de la cámara.
* Teclas ASDW para mover el foco de la escena.

### Dificultades
Hasta la práctica anterior conseguía entender perfectamente el manejo de las coordenadas, guardarlas en pila para cambiar el sistema de coordenadas a otro más adecuado, etc... Pero en esta práctica, al haber metido también 
la cámara se me ha dificultado mucho la comprensión general de todo lo anterior con respecto a perspectivas. Según tenía entendido la cámara era simplemente colocar el ojo en
algún punto del mapa para observar correctamente, esto previo a haber creado la escena, pero una vez hecha la escena, el manejo de la cámara parecia modificar también el comportamiento de la escena, cosa que aún no consigo entender
a que se debía.

### Bibliografía
* Documentos de la propia práctica
* Página oficial de Proccesing
* http://planetpixelemporium.com/planets.html
