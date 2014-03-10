/*ESPACIO PARA HACER COMENTARIOS GENERALES*/

/*
1-Feb: Hice una modificación en el nombre, es Contamirama. También lo
 cambié de MySQL, no se si ya lo habías linkeado, cualquier
 cosa fijate y modificalo.
 También quité la función smooth(); del setup porque a partir de
 la v 2.0 ya está por defecto, a menos que quieras cambiarle
 la intensidad del suavizado.
 
 ¿La base de datos no es mejor llamarla como un CSV?
 
 Agregada la Clase Turbidez
 
 Agregada BD como un CSV.
 
 agregada 2 formas de ver los datos 
 informacion() -->  se ven los datos en lista completa como el csv
 info2() --> con las teclas keycode left / right / up / down   -   lugar y año   -- en variables se guardan y mapean los datos de arsenico, oxigeno, sulfato, etc. 
 
 2-Feb: Sí, lo vi. Quedó buenisimo.
 
 Agregada la opacidad de la Turbidez con una variable global. También voy a modificar eso del array de los químicos para que solo agarre los metales y bacterias.
 Listo, también organicé los datos que dejaste en info2, pero les saqué el mapeo. Es preferible mapear lo que necesitemos despues 
 y mantener el valor puro.
 

 -buenisimo como cambia el fondo con los diferentes resultados. agregue otro para mejorar.
 
 con la 'm' abre un mapa, es una prueba, igual estuve localizando un par de los lugares pero los ultimos como que se van muy lejos. podriamos acortarlo o algo capas. utilizar los que son por la zona de capital federal y un poco mas.
 son unos 22 por la zona de cap.fed.
 
 6-Feb: Agregué un IF para que el mapa no ande cargando si no se está viendo, a mi por lo menos se me traba muchisimo. 
 Libera un poco de espacio, pero al turbidez sigue siendo peso plomo, a ver que se puede hacer.
 Ahi optimicé un poco el mapa y va fenómeno, pero la turbidez sigue siendo molesta. Hay algunas opciones para que ande mejor, nos tendremos que quedar con alguna.
 Saqué física porque, por ahora, no la vamos a usar. Si los ultimos lugares se van muy lejos no es mala idea achicar la base de datos, está pesando bastante igual, así que "recortarla" un poco nos daría una mano.
 
 9-Feb: Tuve una pequeña demora producto de muchos festejos pero ya volvi a programar. A ver, importante leer aca!! 
 Ya logré que ande divino lo de la turbidez sin que se trabe ni nada reemplezando el noise por una animación.
 Importante: Los 48 cuadros de la animación tienen que cargar una vez antes de andar fluidamente, asi que el sketch se traba los primeros 48 cuadros y después anda barbaro.
 Voy a buscarle una solución, pero no es fundamental hacerlo ahora, anda bastante bien. 
 Cambio de 48 a 24, funciona similar y es el doble de rapido al cargar.
 
 10-Feb
 Agregada la tab A_Funciones para poner funciones cortas, así organizamos un poco.
 
 ok, anda rapidisimo ajaj.
 
 Listo, agregada la comida de los metales y ya preparado para agregar las bacterias y los quimicos (se hizo facil)
 Por ahora son bolitas de colores, pero van a ser imagenes, traten de imaginarlo jaja. También comenté la tubidez que 
 ya sabemos que anda para poder probar más rápido los sketchs, sino un lío.
 
 Agregada la Bacteria, queda un Bicho y los Químicos. Copiando ests esquemas va a ser sencillo. Lo dejo para
 después, voy a ver que me sale del guante.
 
 11-Feb
 Ya están todos los contaminantes, faltaría el tercer bicho y tenemos lo básico programado.
 Se me ocurrió algo para el mapa, pero ya que nos vemos el miercoles lo hablamos ahi.
 
 13-Feb
 Agregué que se coman con el Mouse para ya ir probandolo. Despues eso lo modificamos para que 
 los coman las bacterias, pero será un simple cambio de variables.
 
 *cambie el mapa, ahora violeta, va mas con el estilo. seleccion de los lugares con el mapeo del mouseX.
 
 14-Feb
 Ahora los contaminantes estan como en forma de anillo alrededor del ambiente y todos mezclados.
 Ya fue, empecemos a programar en 1024x768
 Agregado el tercer Bicho, gira sobre si mismo y busca lentamente.
 
 15-Feb
 Ahora no se come más con el mouse, sino quelos bichos comen solos. Eso si, proximamente 
 se agregará que se de dirección con el mouse (sino comun muy poco)
 Proximamente que los bichos crezcan al comer.
 
 16-Feb_
 Modifique contaminantes(); --->  muestra_cont() - crea_cont() - borra_cont();
 ahora se habre el mapa y con el mousePressed LEFT se selecciona el lugar, ahi se borra y crean los objetos de acuerdo a los datos
 con mousePressed RIGHT se habre el mapa para seleccionar nuevamente.
 
 Muy bueno, lo que si la función con RIGHT no se va a poder hacer porque el guante solo tiene el boton LEFT
 Pero no importa, usamos la misma funcion que vuelve al mapa pero en lugar de llamarla con el botón que sea cuando se terminó
 la limpieza. En estos dias voy a estar diagramando todo para el pase de los años en cada lugar con un contador o algo
 y entonces ya nos quedaría poco. Habría que ver la fuente de texto, si podemos usar una tipografía más estilo "sucia" o algo.
 A ver que encontramos.
 
 *agregado, solo con mousePressed LEFT se activa y desactiva la eleccion de los lugares. 
 Tambien cambie la tipografia, una que es mas rustica, dsp podemos agregar otra.
 
 Me gusta la tipo, pero por ahi hay que ver si se le puede agregar un poco de transparencia
 Igual hay que ver como queda con las imagenes, ahi recien tendríamos que cambiarla, es un detalle nomás.
 Agregué también para que cambie con los años, por ahora presionando una tecla, pero después lo hacemos automático con un contador.
 Me dispongo a hacer que lso bichos crezcan al comer
 
 17-Feb
 Agregue rotación a los contaminantes para darle variedad así no son iguales cuando metamos las imagenes.
 Listo, los bichos crecen al comer, seguramente habrá que ajustarlo cuando tengamos las imagenes.

*no me aguante y puse la imagen del sulfuro y sales, para probar jajaj.
anda la transparencia del .png, el problema es cuando esta dentro de un PGraphics.
  
  23.Feb
  Quedó bueno, me parece que nos salteamos algunas fechas. Ahi agregué una suerte de control con mouse, creo que se la banca bien.
  Sino queda muy azaroso el juego de controlar con el guante, voy a ver si agrego ese efecto visual estilo agua sucia en el fondo.
  
  *buenisimo el efecto con el movimiento.
  agregue una pequeña estadistica donde mapea la cantidad de comida que comen. separado por (Metates, Quimicos, Bacterias).
  dsp vemos donde la ponemos y con que estetica.
  
  25-Feb
  Agregue las dos figuras con el tint, pero parece que lo pinta mal. A ver que sale.
  El tint no sirve, voy a cambiarle el color a los sprites manualmente y los cargo.
  De la nueva forma, o sea cargando desde el setup, se cargan mas rapido y mejor.
  
  no...si que anda, tiene que estar en blanco y negro  
  No, ni en blanco y negro anda como corresponde, ya lo probé.  
  claro, pone el tint a todo, vos queres que el centro sea de otro color nomas?  
  Exactamente, me parece que queda menos artificial. No es hay drama, son solo 4 colores distintos, se hace rapido y no consume tantos recursos.
  si mejor ,esta bien. jaja yo pase a chusmear no quise entrometer jaja.  
  No, está bien, si querés probar cosas probá. Para mañana tengo terminado esto y vemos que hacemos de sitio web.
  Ahí están las imagenes de los contaminantes que tenemos hasta ahora, falta nomás la de las bacterias comestibles y bueno, despues lo protagonistas.
  Agregado un fondo como de agua, pero lo comenté para que no sobrecargue al probar lo que falta.
  
  *agregue recuadro de agua estancada que bordea el mapa asi esta mas a tono.
  
  26-Feb
  Saqué el año del mapa porque ya no va a ser importante que esa info este de entrada. Le di algo de estética al cuadro también.
  Después con los bichos saqué el nombre del lugar porque ya lo tenes de entrada y puse nomás el año pero con transparencia, asi queda mas 
  minimalista e integrado.
  
  *El bicho "B" necesitaria recorrer mas los extremos ( derecha arriva y izquierda abajo ). no termina de comer por las zonas esas, entonces nunca comen todo.
  Si, ya lo había analizado. Ahora me pongo y corrigo eso.
  Ahi cambié el marco del mapa para que esté un poco más limpio eso.
  Ahi está el bicho B.
  Listo el Bicho C.
  
  *agregue un contador boolean para cada lugar y año,   "nivel superado" == true;   
  si un jugador pasa un año, se guarda que lo paso y la proxima entra directo al nivel siguiente.
  asi se puede ir limpiando en diferentes etapas.  
  si estan los 3 años limpios no deja entrar mas.
  
  27-Feb
  Que barbaro!!! Buenísimo!!
  
  Joya!.
  *Agregue tambien unos cartales que avizan cuando pasas de nivel y cuando se termina de limpiar una zona.
  *agregago tiempo para cada nivel superado.
 
 28-Feb
 Ya fue, creo que estamos, falta lo material.

 */
