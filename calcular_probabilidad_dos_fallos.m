function [probabilidad, todas_las_probs] = calcular_probabilidad_dos_fallos(epsilon, dni)
  todas_las_probs = [];
  probabilidad_anterior = 0; 
  probabilidad_actual = 1;  
  casos_favorables = 0;
  total_de_intentos = 0;
  primero = 0;
  segundo = 0;
  tic
  while ~converge(probabilidad_anterior, probabilidad_actual, epsilon, total_de_intentos)
    
    probabilidad_anterior = probabilidad_actual;
    primero = my_mex_service(dni);
    segundo = my_mex_service(dni);
    total_de_intentos =  total_de_intentos + 1;
    if ((primero == 0))&&((segundo == 0))
      casos_favorables = casos_favorables + 1;
   tiempo = toc; 

    end
    
  probabilidad_actual = casos_favorables / total_de_intentos;
  todas_las_probs = cat(1, todas_las_probs, probabilidad_actual);
  
  end
  probabilidad = probabilidad_actual;
  % --------------------------------------------------------------------------
%fprintf('%d\n', probabilidad_actual);
  fflush(stdout);
  fprintf('el tiempo que tarda cada iteracion %f: \n', tiempo);
end