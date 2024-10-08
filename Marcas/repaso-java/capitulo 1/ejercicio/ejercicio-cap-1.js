//Ejercicio A
dineroCofla = prompt("Cuanto dinero tienes Cofla");
dineroRoberto = prompt("Cuanto dinero tienes Roberto");
dineroPedro = prompt("Cuanto dinero tienes Pedro");

dineroCofla = parseInt(dineroCofla);

//dinero Cofla

if (dineroCofla >= 0.6 && dineroCofla < 1 ) {
    alert("Cofla Comprate el helado de agua");
    alert("Y te sobran " + (dineroCofla - 0.6));
}

else if (dineroCofla >= 1 && dineroCofla < 1.6){
    alert("Cofla Comprate el helado de crema");
    alert("Y te sobran " + (dineroCofla - 1));
}
else if (dineroCofla >= 1.6 && dineroCofla < 1.7){
    alert("Cofla Comprate el helado de heladix");
    alert("Y te sobran " + (dineroCofla - 1.6));
}
else if (dineroCofla >= 1.7 && dineroCofla < 1.8){
    alert("Cofla Comprate el helado de heladovich");
    alert("Y te sobran " + (dineroCofla - 1.7));
}
else if (dineroCofla >= 1.8 && dineroCofla < 2.9){
    alert("Cofla Comprate el helado de helardo");
    alert("Y te sobran " + (dineroCofla - 1.8));
}
else if (dineroCofla >= 2.9 ){
    alert("Cofla Comprate el helado de confites o pote de cuarto de kilo");
    alert("Y te sobran " + (dineroCofla - 2.9));
}

else {
    alert("Cofla Eres un pobre de mierda")
}

//dinero Roberto

if (dineroRoberto >= 0.6 && dineroRoberto < 1 ) {
    alert("Roberto Comprate el helado de agua");
}

else if (dineroRoberto >= 1 && dineroRoberto < 1.6){
    alert("Roberto Comprate el helado de crema");
}

else if (dineroRoberto >= 1.6 && dineroRoberto < 1.7){
    alert("Roberto Comprate el helado de heladix");
}
else if (dineroRoberto >= 1.7 && dineroRoberto < 1.8){
    alert("Roberto Comprate el helado de heladovich");
}
else if (dineroRoberto >= 1.8 && dineroRoberto < 2.9){
    alert("Roberto Comprate el helado de helardo");
}
else if (dineroRoberto >= 2.9 ){
    alert("Roberto Comprate el helado de confites o pote de cuarto de kilo");
}

else {
    alert("Roberto Eres un pobre de mierda");
}

//dinero Pedro
if (dineroPedro >= 0.6 && dineroPedro < 1 ) {
    alert("Pedro Comprate el helado de agua");
}

else if (dineroPedro >= 1 && dineroPedro < 1.6){
    alert("Pedro Comprate el helado de crema");
}

else if (dineroPedro >= 1.6 && dineroPedro < 1.7){
    alert("Pedro Comprate el helado de heladix");
}
else if (dineroPedro >= 1.7 && dineroPedro < 1.8){
    alert("Pedro Comprate el helado de heladovich");
}
else if (dineroPedro >= 1.8 && dineroPedro < 2.9){
    alert("Pedro Comprate el helado de helardo");
}
else if (dineroPedro >= 2.9 ){
    alert("Pedro Comprate el helado de confites o pote de cuarto de kilo");
}

else {
    alert("Pedro Eres un pobre de mierda");
}

//Ejercicio B