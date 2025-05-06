// JavaScript source code
function control() {
    console.log("test");
    phoneNumber = document.getElementById("tel");
    const telNumber = "0123456789";
    const telRegex = /^0([1-8][-.][0-9]{8}){4}$/;
    if (telRegex.test(phoneNumber)) {
        console.log("Numéro valide");
    } else {
        console.log("Numéro invalide");
    }
    const Nom_de_Domaine = "https://dl.red.flag.domains/red.flag.domains.txt"
    const mailRegex = /^ [a-z-0-9.-_] +@ [a-z-0-9.-_]{2,} + \. [a-z]{2,4} $i/;
    if (mailRegex.test()) {
        console.log("Nom de Domaine valide");

    } else {
        console.log("Nom de Domaine invalide");
    }
}

