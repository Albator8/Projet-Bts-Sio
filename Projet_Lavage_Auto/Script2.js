// JavaScript source code
phoneNumber = document.getElementById("tel");
const telNumber = "0123456789";
const telRegex = /^0([1-8][-.][0-9]{8}){4}$/;
if (telRegex.test(phoneNumber)) {
    console.log("Num�ro valide");
} else {
    console.log("Num�ro invalide");
}
Nom_de_domaine = document.getElementById("Email")
const mailRegex = /^ [a-z-0-9.-_] +@ [a-z-0-9.-_]{2,} + \. [a-z]{2,4} $i/;
if (mailRegex.test(Nom_de_domaine)) {
    console.log("Nom de Domaine valide");

} else {
    console.log("Nom de Domaine invalide");
}
const Nom_de_DomaineRegex ="https://dl.red.flag.domains/red.flag.domains.txt"
if (Nom_de_DomaineRegex.test()){
    console.log("Nom de domaine valide")

}
    else{
    console.log("Nom de Domaine malveillant")    
    }



