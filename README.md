# Kata Nómina

### Problema a resolver

Somos las dueñas del Family Vídeo club en Hawkins y necesitamos un programa que genere las nóminas de nuestros empleados mensualmente. Cada nómina contiene: id del empleado, nombre completo, salario bruto mensual, contribuciones de seguridad social e impuestos.

Como somos muy agile :troll face MUAHAHAH, lo vamos a hacer por iteraciones.

### Primera iteración:

Datos básicos de la nómina mensual

Dado que tengo un empleado que se llama Steve Harrington con id 67563 y con un salario anual en bruto de 5000K $.

Cuando se genere su nómina

Entonces la nómina contendrá la siguiente información:

- Employee ID: 67563

- Employee name: Steve Harrington

- Gross salary: 416.67$

La regla para calcular el salario en bruto es dividir el salario anual bruto entre 12 meses.

### Segunda iteración:

Necesitamos saber la contribución a la seguridad social.

Dado que tengo un empleado que se llama Robin Buckley con id  54637 y con un salario anual en bruto de 9060K $.

Cuando se genere su nómina

Entonces la nómina contendrá la siguiente información:

- Employee ID: 54637

- Employee name: Robin Buckley

- Gross salary: 755.00$

-  National Insurance contributions: 10.00$

Para calcular la contribución a la seguridad social se aplicará un 12% cuando el salario bruto anual supera los 8060$.

### Tercera iteración:

Le hemos subido el sueldo a Robin pero tendrá que pagar impuestos MUAHAHAHA.

Dado que tengo un empleado que se llama Robin Buckley con id  54637 y con un salario anual en bruto de 12000 $.

Cuando se genere su nómina

Entonces la nómina contendrá la siguiente información:

- Employee ID: 54637

- Employee name: Robin Buckley

- Gross salary: 1000.00$

- National Insurance contributions: 39.40$

- Taxable income: 83.33$

Para calcular el ingreso imponible se aplica un 20% de todo el salario bruto anual que supere los 11000$.

Podéis encontrar una tabla con varios ejemplos completos en [EXAMPLE.md](EXAMPLE.md)

## Contruir la imagen con Docker
`$ docker build -t workshop-tcr .`

## Cómo ejecutar los tests con Gradle
`$ ./gradlew test`

## Cómo ejecutar los tests con Docker
`$ docker run --rm workshop-tcr`

## Cómo ejecutar TCR en local
`$ chmod +x TCR.sh`
`$ ./TCR.sh`

## Cómo ejecutar TCR con Docker
`$ chmod +x TCR-docker.sh`
`$ ./TCR-docker.sh`

