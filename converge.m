
function convergio = converge(probabilidad_anterior, probabilidad_actual, epsilon, total_de_intentos)

  
  if total_de_intentos > 40
   
    if (abs(probabilidad_anterior - probabilidad_actual) < epsilon) 
     
      convergio = true;
    else
      
      convergio = false;
    end
  else
    
    convergio = false;
  end

end