function pushy() {
    var x = document.createElement("INPUT");
    x.setAttribute("type", "text");
    x.setAttribute("name", "name[]");
    x.setAttribute("placeholder", "Name");
    var duh = document.getElementById("duh");
    duh.appendChild(x);
}