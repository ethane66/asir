// Titulo
var titulo;

titulo = prompt('Inserta un titulo','');
crearTitulo();

function crearTitulo(){
    let tituloEl = document.createElement("h1");
    document.body.appendChild(tituloEl);
    document.querySelector('h1').innerHTML = titulo; 
    tituloEl.id= "Titulo";
}

// Subtitulo

var Subtitulo;

Subtitulo = prompt('Introduce un subtitulo','');
creaSubtitulo();

function creaSubtitulo(){
    let SubtituloEl = document.createElement("h3");
    SubtituloEl.innerHTML = Subtitulo;
    document.body.appendChild(SubtituloEl);
    SubtituloEl.id = "Sub";
}
//Informacion de mas

var info;

info = prompt ('Quieres añadir info (si o no)','');

if (info.toLowerCase() == "si" ){

    var texto

    let masInfo = true;

    while (masInfo){
        let parr = prompt('¿Quieres introducir párrafos?','');
        if (parr.toLowerCase() == 'si'){
            agregarParrafo();
        }

        
        let otraInfo = prompt('¿Quiere añadir listas?','');
        if (otraInfo.toLowerCase() == 'si'){
            let tipoLista = prompt('¿Qué tipo de lista quieres (OL/UL)?','');
            agregarLista(tipoLista);
        }

        info = prompt('¿Quiere añadir más información (si/no)?','');
        if (info.toLowerCase() == 'no'){
            masInfo = false;
        }

    }    
}

function agregarParrafo(){

   

    let text = true ;

    while(text) {
            var txt 

            var parrafo = document.createElement('p');

            txt = prompt ('Introduzca la información que quiera','');

            parrafo.innerText = txt;

            document.body.appendChild(parrafo);

            let preguntatxt = prompt('¿Quieres añadir mas?','');
            if (preguntatxt.toLowerCase () == "Si"){

                agregarParrafo();
            } if (preguntatxt.toLowerCase () == "no")
            {
                text = false;
            }


    }



}

function agregarLista(tipoLista){

    if (tipoLista.toLowerCase() == 'ol'){
        var listaOl = document.createElement('ol');
        //bucle para añadir tantos items a la lista como el usuario quiera
        let elementos = true;
        while(elementos){
            let contenido = prompt('Introduzca el contenido del elemento','');
            let elem = document.createElement('li');
            elem.innerText = contenido;
            listaOl.appendChild (elem);

            let pregunta = prompt('¿Quiere añadir más elementos? (si/no)','');
            if (pregunta.toLowerCase() == 'no'){
                elementos = false;
            }
        }
        document.body.appendChild(listaOl);
    }

}
















    /*
    texto = prompt('Mete tu información','');

    let textoEl = document.createElement("p");

    textoEl.innerHTML = texto;

    document.body.appendChild(textoEl);

    textoEl.id= "Texto";

} else if (info == "no") {
    
    document.write("No");

} else {

 document.write("Paso");

}

//Listas

var listas 

listas = prompt('Quieres una lista (si o no)', '');

if (listas == "si"){

 //Meter lo de la listas

}

else if (listas == "no") {


}

else {



}

*/

