# Workshop Test, Commit || Revert

Vamos a jugar a un juego

![](https://media.giphy.com/media/3o7TKSxdQJIoiRXHl6/giphy.gif)

Hoy vamos a trastear un poco con la técnica de programación Test,Commit||Revert (TCR) que consiste en
definir un test e intentar ponerlo en verde, si en este proceso la ejecución de nuestros tests falla se hará un revert,
divertido ¿no?

## ¿Cómo vamos a hacerlo?
Os hemos preparado un script para hacer más rápido el proceso, teneís la posibilidad de
ejecutarlo en vuestro local si teneís ya instalado jdk11 o podeís ejecutarlo usando docker.

### Ejecución en local
Primero daremos permiso de ejecución al script
```
chmod +x TCR.sh
```
Y ya podeis ejecutarlo sin problemas
```
./TCR.sh
```

En el caso de windows tenéis el siguiente script
```
TCR.bat
```

### Ejecución con Docker
Primero daremos permiso de ejecución al script
```
chmod +x TCR-docker.sh
```
Y ya podeis ejecutarlo sin problemas
```
./TCR-docker.sh
```

> 🚨 Usad siempre el script para avanzar, si no estaréis haciendo trampa!!


## Kata Nómina

### Problema a resolver

Somos las dueñas del Family Vídeo club en Hawkins y necesitamos un programa que genere las nóminas de nuestros empleados mensualmente. Cada nómina contiene: id del empleado, nombre completo, salario bruto mensual, contribuciones de seguridad social e impuestos.

Como somos muy agile :troll face MUAHAHAH, lo vamos a hacer por iteraciones.

### Primera iteración:

Datos básicos de la nómina mensual

Dado que tengo un empleado que se llama Steve Harrington con id 67563 y con un salario anual en bruto de 5000 $.

Cuando se genere su nómina

Entonces la nómina contendrá la siguiente información:

- Employee ID: 67563

- Employee name: Steve Harrington

- Monthly gross salary: 416.67$

La regla para calcular el salario en bruto es dividir el salario anual bruto entre 12 meses.

### Segunda iteración:

Necesitamos saber la contribución a la seguridad social.

Dado que tengo un empleado que se llama Robin Buckley con id  54637 y con un salario anual en bruto de 9060 $.

Cuando se genere su nómina

Entonces la nómina contendrá la siguiente información:

- Employee ID: 54637

- Employee name: Robin Buckley

- Monthly gross salary: 755.00$

- National Insurance contributions: 10.00$

Para calcular la contribución a la seguridad social se aplicará un 12% cuando el salario bruto anual supera los 8060$.

### Tercera iteración:

Le hemos subido el sueldo a Robin pero tendrá que pagar impuestos MUAHAHAHA.

Dado que tengo un empleado que se llama Robin Buckley con id  54637 y con un salario anual en bruto de 12000 $.

Cuando se genere su nómina

Entonces la nómina contendrá la siguiente información:

- Employee ID: 54637

- Employee name: Robin Buckley

- Monthly gross salary: 1000.00$

- National Insurance contributions: 39.40$

- Taxable income: 83.33$

Podéis encontrar una tabla con varios ejemplos completos en [EXAMPLE.md](EXAMPLE.md)
