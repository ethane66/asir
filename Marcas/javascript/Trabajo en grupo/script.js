const title = prompt("Introduzca el encabezado de título:");
document.getElementById("title").textContent = title;

const subtitle = prompt("Introduzca el subtítulo de la página:");
document.getElementById("subtitle").textContent = subtitle;

let content = "";
while (true) {
  const choice = prompt("Introduzca 'p' para crear un párrafo o 'l' para crear una lista, o presione 'Cancelar' para terminar:");
  if (!choice) {
    break;
  } else if (choice === "p") {
    const paragraph = prompt("Introduzca el contenido del párrafo:");
    content += "<p>" + paragraph + "</p>";
  } else if (choice === "l") {
    const type = prompt("Introduzca 'ul' para una lista con viñetas o 'ol' para una lista numerada:");
    let list = "<" + type + ">";
    while (true) {
      const item = prompt("Introduzca un elemento de la lista o presione 'Cancelar' para terminar:");
      if (!item) {
        break;
      }
      list += "<li>" + item + "</li>";
    }
    list += "</" + type + ">";
    content += list;
  } else {
    alert("Opción inválida");
  }
}
document.getElementById("content").innerHTML = content;