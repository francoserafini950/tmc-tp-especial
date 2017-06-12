clear
clc
dni = 32758655;
i = 0;
Y = 0;
X = 0;
epsilon = 0.1;
while i < 3 
  
  [probabilidad, todas_las_probs] = calcular_probabilidad_dos_fallos(epsilon, dni);
  fprintf(' para epsilon = %f ', epsilon);
  fprintf('la probabilidad de fallar 2 veces = %f: \n',  probabilidad);
  i++;
  epsilon = (epsilon / 10);

  figure, plot(todas_las_probs);
  hold on
  xlabel('Numero de iteracion');
  ylabel('Probabilidad');
  ylim([0 1]);
  legend('Evolucion de la probabilidad');
  grid on
  Y = std(todas_las_probs(1:20));
  X = std(todas_las_probs(21:end));  
  fprintf('desvio standard en las primeras 20 iteraciones = %f: \n', Y);
  fprintf('desvio standard en las ultimas 20 iteraciones = %f: \n', X);
end

