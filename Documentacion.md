# Tarea Programada 1
## Integrantes
 - Erick Blanco
 - Luis Ortiz 
 - Kenneth Corrales Lizano 2017151342

 ## Como ejecutar el proyecto
 Para poder utilizar el sistema, es necesario tener instalado docker y docker-compose. En caso de no tenerlo lo puede obtener del siguiente link:
 
 [Docker Installation](https://docs.docker.com/engine/install/)

Una vez con docker funcional unicamente es necesario ejuctar el docker-compose.yml. Para esto debemos ejecutar el siguiente comando:
 > docker compose up --build 

Este comando leera uno a uno los servicios y los dockerfile correspondientes para ejecutarse

## Pruebas realizadas
Para probar los web servers y el proxy reverso, se puede llamar a la ip del webproxy y enviarle el /web1 que corresponde al web server 1 o /web2 que corresponde al /web2

Ejemplo ping 10.0.0.20/web1
Se puede modificar el archivo hosts para modificar la ip en la ruta de google.com

## Recomendaciones 

1. Se recomienda aprender lo básico de la sintaxis YAML que es muy útil para la optimización de contenedores en Docker Compose. Por ejemplo, se puede disponer de servicios backend, frontend, base de datos, aplicaciones web, etc. Estos servicios necesitarán dependencias específicas; dependencias como redes, puertos y memoria para un funcionamiento óptimo. para ello siempre se debe de tener en cuenta que todo lo necesario para la aplicación completa estará definido en el archivo Docker Compose, para lo que será muy útil conocer la sintaxis.

2. Cuando a redes se refiere es vital instalar extensiones dentro de las imagenes de configuración de los equipos, esto con la finalidad de poder conocer mejor la configuración que se le está dando al equipo, además de poder ver más a detalles la información de lo que está pasando en la comunicación o configuración de dispositivos. BIND9 para usar nslookup es un ejemplo, además de brindar otro kit de comandos para poder ver las rutas y los archivos de configuración del DHCP.

3. Es recomendable tener un diagrama establecido antes de empezar a configurar dispositivos de red, saber por ejemplo que IP vamos a asignar a cada equipo, conocer las redes, conocer la cantidad de dispositivos que pueden estar dentro de una red y los distintos protocolos que se van a usar para establecer una comunicación segura y confiable.

4. Es Recomendable revisar la documentación de docker y a su vez la documentación de las imágenes que existen, ya que a través de esto podemos tener una mejor idea de qué se trata cada una y mayor conocimiento para tratarla.

5. 




## Conclusiones
1. El uso de docker facilita enormemente la manera en la cual se realizan los proyectos, en el caso de necesitar host de algun servicio base de datos, pagina web etc. es tan facil como crear la imagen correspondiente configurarla usando ya sea docker-compose o un dockerfile o ambas y listo. Para todos los demas, basta con levantar la imagen y el servicio estara de la misma manera que el creador de la imagen

2. Determinar el orden de prioridad de configuración de los elementos, ya que esto puede traer problemas conforme se vaya avanzando en el desarrollo del proyecto.