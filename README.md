![BrightCoders Logo](img/logo-bc.png)

# Gilded Rose Refactoring Kata

![cover](img/cover.jpg)

## Pre-requisitos

Antes de iniciar debes:

- [Instalar y utilizar Rubocop](https://github.com/bright-coders/commons/tree/master/topics/rubocop)
- [Instalar y utilizar Rubycritic](https://github.com/bright-coders/commons/tree/master/topics/rubycritic)

## Requerimientos funcionales

Hi and welcome to team Gilded Rose. As you know, we are a small inn with a prime location in a
prominent city ran by a friendly innkeeper named Allison. We also buy and sell only the finest goods.
Unfortunately, our goods are constantly degrading in quality as they approach their sell by date. We
have a system in place that updates our inventory for us. It was developed by a no-nonsense type named
Leeroy, who has moved on to new adventures. Your task is to add the new feature to our system so that
we can begin selling a new category of items. First an introduction to our system:

	- All items have a SellIn value which denotes the number of days we have to sell the item
	- All items have a Quality value which denotes how valuable the item is
	- At the end of each day our system lowers both values for every item

Pretty simple, right? Well this is where it gets interesting:

	- Once the sell by date has passed, Quality degrades twice as fast
	- The Quality of an item is never negative
	- "Aged Brie" actually increases in Quality the older it gets
	- The Quality of an item is never more than 50
	- "Sulfuras", being a legendary item, never has to be sold or decreases in Quality
	- "Backstage passes", like aged brie, increases in Quality as its SellIn value approaches;
	Quality increases by 2 when there are 10 days or less and by 3 when there are 5 days or less but
	Quality drops to 0 after the concert

We have recently signed a supplier of conjured items. This requires an update to our system:

	- "Conjured" items degrade in Quality twice as fast as normal items

Feel free to make any changes to the UpdateQuality method and add any new code as long as everything
still works correctly. However, do not alter the Item class or Items property as those belong to the
goblin in the corner who will insta-rage and one-shot you as he doesn't believe in shared code
ownership (you can make the UpdateQuality method and Items property static if you like, we'll cover
for you).

Just for clarification, an item can never have its Quality increase above 50, however "Sulfuras" is a
legendary item and as such its Quality is 80 and it never alters.

**IMPORTANTE** En [este enlace](https://github.com/emilybache/GildedRose-Refactoring-Kata) encontrarás una descripción detallada del algoritmo así como el [CODIGO INICIAL](https://github.com/emilybache/GildedRose-Refactoring-Kata)

## Requerimientos no-funcionales
- Calidad
  - Utilizar estilo de código definido por la comunidad (apoyarse en Rubocop)
  - Pruebas unitarias
  - Puntuación en Rubycritic: por lo menos 95 en la carpeta de la App y por lo menos 75 en las pruebas
- Ejecución
  - Puede ejecutarse desde la linea de comandos y mostrar la salida en consola- 
- Código fuente
  - Orientado a Objetos 
  - Métodos Pequeños
  - [Aplicar los principios SOLID](https://rubygarage.org/blog/solid-principles-of-ood)

## Tecnologías
- Lenguaje de programación Ruby
- Framework para pruebas [Rspec](https://rspec.info/) ó [Minitest](https://github.com/seattlerb/minitest)
- Línea de comando

## Entregable
- Código fuente en Github (1 por equipo)
- El repositorio debe reflejar el trabajo en equipo (en la conversación del repositorio, commits)
- Debe actualizar [este archivo](setup/README.md) en donde se describa el proceso para hacer funcionar el proyecto y el nombre de los integrantes del equipo
- Los commits de Git deben ser significativos
  
## Evaluación / Revisión
En sus valoraciones los mentores considaran los siguientes aspectos:
- Orientación a objetos
- Estructura de archivos
- Pruebas
- Código duplicado
- Separación de intereses (separation of concerns)
- Convenciones del lenguaje
- Claridad de la solución
- Abstracción
- Uso de características propias del lenguaje Ruby
- Uso de Git, commits bien definidos y atómicos
- Puntuación obtenida en RubyCritic

## Flujo de trabajo sugerido
1. Este ejercicio se realiza en formato de [Code Kata Grupal](https://github.com/bright-coders/commons/tree/master/topics/code-kata)
2. Dedica un tiempo para explorar y entender los requerimientos funcionales
3. **IMPORTANTE** En [este enlace](https://github.com/emilybache/GildedRose-Refactoring-Kata) encontrarás una descripción detallada del algoritmo así como el [CODIGO INICIAL](https://github.com/emilybache/GildedRose-Refactoring-Kata)
4. Ejecuta las pruebas y asegurate de que el código inicial las pasa
5. Inicia el proceso de refactorización, es decir, incorporar mejoras al código inicial tomando en cuenta lo especificado en los Requerimientos Funcionales
6. Agrega los nuevos features solicitados en los requerimientos funcionales
7. Agrega pruebas para cada feature implementado
8. Itera, refactoriza y asegurate de que las pruebas sigan pasando
9. En todo momento asegurate de tu código cumpla con los requerimientos funcionales solicitados.
10. Una vez terminada tu implementación envíala #support para recibir retroalimentación
11. Asegurate de que por lo menos 1 de los mentores apruebe tu solución

## Resumen 
- Tienes un máximo de 5 días para terminar esta kata
- Durante el proceso de desarrollo debes mantener actualizado este repositorio
- [Los commits deben ser significativos](https://medium.com/better-programming/you-need-meaningful-commit-messages-d869e44e98d4)
- Se requiere por lo menos la aprobación de por lo menos 1 mentor
- Incluir pruebas (TDD)
- Deberás incluir el linter RuboCop en tu proyecto
- Debes utilizar Rubycritic y obtener por lo menos una puntuación de 95 en la carpeta de tu app y 75 en la de pruebas
- NO es un examen sino un ejercicio por lo que puedes apoyarte en tus compañeros y mentores para recibir ayuda, así que si tienes dudas, pregunta, pregunta pregunta!

## Setup
En [este elnace](setup/README.md) se describen los pasos necesarios para ejecutar/probar este proyecto, así como los integrantes de este equipo

## Enlaces
### Commits
- [You Need to Write Meaningful Commit Messages](https://medium.com/better-programming/you-need-meaningful-commit-messages-d869e44e98d4) 
- [Writing meaningful git commit messages](https://medium.com/@menuka/writing-meaningful-git-commit-messages-a62756b65c81)
- [How to Write a Git Commit Message](https://chris.beams.io/posts/git-commit/)
### The Gilded Rose Refactoring Kata
- [The Gilded Rose Refactoring Kata](https://github.com/emilybache/GildedRose-Refactoring-Kata)
### Tools
- [Rubocop](https://rubocop.org/)
- [Rubycritic](https://github.com/whitesmith/rubycritic) 
- [Rspec](https://rspec.info/)
- [Minitest](https://github.com/seattlerb/minitest)
### Solid Principles
- [SOLID Object-Oriented Design Principles with Ruby Examples](https://rubygarage.org/blog/solid-principles-of-ood)
- [Back to Basics: SOLID](https://thoughtbot.com/blog/back-to-basics-solid)
- [SOLID Principles](https://www.netguru.com/codestories/solid-principles-1-single-responsibility-principle) 

### Mi Score En carpeta APP (Aplicación)
![Score_App](badges/rubycritic_badge_score.svg)

