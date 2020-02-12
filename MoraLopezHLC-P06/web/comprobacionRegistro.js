
var camposRegistro=document.querySelectorAll(".body > input");
var botonSubmit=document.getElementById("botonRegistro");




for(var i=0; i<camposRegistro.length-1; i++)
{
    camposRegistro[i].style.backgroundColor= "#F1B4A7";
}


function todosCorrectos()
{
    todoCorrectos=false;
    
    if(camposRegistro[0].value.replace(/ /g, "")==="" )
    {
        camposRegistro[0].style.backgroundColor= "#F1B4A7";
        todoCorrectos=false;
    }
    else
    {
        todoCorrectos=true;
        camposRegistro[0].style.backgroundColor= "white";
    }
    
    if(camposRegistro[1].value.replace(/ /g, "")==="" )
    {
         camposRegistro[1].style.backgroundColor= "#F1B4A7";
         todoCorrectos=false;
    }
    else
    {
        todoCorrectos=true;
        camposRegistro[1].style.backgroundColor= "white";
    }
    
    if(isNaN(camposRegistro[2].value) || camposRegistro[2].value.replace(/ /g, "")==="")
    {
         camposRegistro[2].style.backgroundColor= "#F1B4A7";
         todoCorrectos=false;
    }
    else
    {
        todoCorrectos=true;
        camposRegistro[2].style.backgroundColor= "white";
    }
    
    if(todoCorrectos)
    {
        botonSubmit.style.visibility="visible";
    }
    else
    {
        botonSubmit.style.visibility="hidden";
    }
    
    return todoCorrectos;
}

function cancelar()
{
    
    location.href="index.html";
}