document.write("arrays asociativos");
document.write("<br>");

let pc = {
    nombre: "EthanPC",
    procesador: "ryzen 5",
    ram: "48GB",
    espacio: "1TB"
};

let nombre = pc["nombre"];
let procesador = pc["procesador"]
let ram = pc["ram"];
let espacio = pc["espacio"];

let frase = `el nombre de mi pc es: <b>${nombre}</b><br>
        el procesador de mi pc es: <b>${procesador}</b><br>
        la memoria ram es: <b>${ram}</b><br>
        el espacio en disco es de: <b>${espacio}</b><br>
`;

document.write(frase + "<br>");

document.write("bucles for");
document.write("<br>");

for (let i = 0; i < 6; i++ ) {
    document.write(i+ "<br>")
};
document.write("<br>")

document.write("Sentencia continue");
document.write("<br>");


for (let i = 0; i < 20; i++ ) {
    if (i ==12){
        continue
    }
    document.write(i +"<br>")
};
document.write("<br>")
document.write("Sentencia for in and for of");
document.write("<br>");
document.write("<br>");
//sentencia for in y fo of
document.write("sentencia for in")
document.write("<br>")
let animales =["gato","perro","girafa"];


for (animal in animales) {
    document.write(animal + "<br>")
};
document.write("<br>")
document.write("sentencia for of")
document.write("<br>")

for (animal of animales) {
    document.write(animal + "<br>")
};

document.write("<br>");
document.write("Sentencia label");
document.write("<br>");
document.write("<br>");


array1 = ["maria","josefa","roberta"];
array2 = ["pedro","marcelo",array1,"josefina"];

forEjemplo:
for (let array in array2) {
    if (array ==2 ){
        for (let array of array1) {
            continue forEjemplo; //va saltar la vuelta entera una vez la posicion sea 2 del array2, se salta el array 1 y muestra josefina
            document.write(array + "<br>");
        }
    }else {
        document.write(array2[array] + "<br>");
    }
};

document.write("<br>");
document.write("funciones");
document.write("<br>");
document.write("Es el alert y el prompt");
document.write("<br>");



function saludar () {
    respuesta = prompt("Hola Ethan, como fue tu dia?");
    if (respuesta == "bien") {
        alert("Me alegro");
        return "Tuviste un buen dia"
    }else {
        alert("Una pena");
        return "Tuviste un mal dia"
    }
}
let saludo = saludar();
document.write(saludo);

document.write("<br>");
document.write("<br>");
document.write("parametros");
document.write("<br>");

function suma (num1,num2){
    let res = num1 + num2;
    document.write(res);
        document.write("<br>");
}
suma(12,32)
suma(22,55)

document.write("<br>");
document.write("otra manera de hacerlo en codigo");
document.write("<br>");
function suma1(num3,num4){
    let res2 = num3 + num4;
    return res2
}

let resultado2 = suma1(20,25);
document.write(resultado2);




