function openNav(){
    
    var x = document.getElementById("barra");
    
    if (x.idName === "barra"){
        
        x.className += " menujs";
        document.getElementById("threeline").innerHTML = "&Cross;";
        
    } else {
        
        x.idName = "barra";
        document.getElementById("threeline").innerHTML = "&#9776;";
    }
}

