X=load('NINO_JONH_problem1.txt');
 U=X(:,3);
 Y=X(:,2);
 t=X(:,1);
  Entrada.time=t;
Entrada.signals.values=U;
Entrada.signals.dimension=[2189 2];
 Salida.time=t;
Salida.signals.values=Y;
Salida.signals.dimension=[2189 2];
%ident

H=tf([105.3],[1 5.545 57.48]);
plot(t,Y);
hold on 

plot(t,U);
hold off
%pzmap(H);
