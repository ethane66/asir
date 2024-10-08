document.write("concat");
document.write("<br>");
let cadena = "caden a de prueba";
let cadena2 = " cadena2";

resultado = cadena.concat(cadena2);

document.write(resultado);

document.write("<br>");
document.write("<br>");
document.write("startswith");
document.write("<br>");


let cadena3 = "caden a de prueba";
let cadena4 = " cadena2";

resultado2 = cadena.startsWith(cadena4);

document.write(resultado2);

document.write("<br>");
document.write("<br>");
document.write("metodo cadena <b> split </b>");
document.write("<br>");

let cadena5 = "Hola,como,estas";
resultado3 = cadena5.split("como");
document.write(resultado3);

document.write("<br>");
let cadena6 = "ABCDEFG"
resultado4 = cadena6.substring(0,2);
document.write(resultado4)

document.write("<br>");
document.write("<br>");
document.write("metodo arrays <b> pop </b>");
document.write("<br>");

let nombres = ["pedro","maria","jorge"];

document.write(nombres + "<br>")
let resultado5 = nombres.shift() //cambia el pop por cualquier de la teoria para ver el ejemplo
document.write(resultado5 + "<br>");
document.write(nombres)

document.write("<br>");
document.write("<br>");
document.write("<b> splice </b>");
document.write("<br>");

let frutas = ["manzana","peras","fresas","Moras","melon","sandia"];
document.write("<b> Original: </b> "+ frutas);
document.write("<br>");
frutas.splice(1,3,"<b> Uvas </b>","<b> mandarina </b>");
document.write("<b> Despues </b> " + frutas)

document.write("<br>");
document.write("<br>");
document.write(" metodo accesores <b> join </b>");
document.write("<br>");

let frutas2 = ["manzana","peras","fresas","Moras","melon","sandia"];
document.write("<b> Original: </b> "+ frutas2);
document.write("<br>");
let resultado6 = frutas2.join(" - ");
document.write("<b> Despues </b> " + resultado6)

for