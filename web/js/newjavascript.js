function openNav(){
    
    var x = document.getElementById("barra");
    
    if (x.className === "barra"){
        
        x.className += " menujs";
        document.getElementById("threeline").innerHTML = "&Cross;";
        
    } else {
        
        x.className = "barra";
        document.getElementById("threeline").innerHTML = "&#9776;";
    }
}

