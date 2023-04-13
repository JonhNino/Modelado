 X=load('NINO_JONH_problem2.txt');
 U=X(:,3);
 Y=X(:,2);
 t=X(:,1);
  Entrada.time=t;
Entrada.signals.values=U;
Entrada.signals.dimension=[466 2];
 Salida.time=t;
Salida.signals.values=Y;
Salida.signals.dimension=[466 2];
%ident

H=tf([149.6],[1 32.76 270.3]);
%tao=0.208;
%k=0.6661;
%Ts=0.402;
%ro=0.60;
%Ts=4/(ro*Wn);
%plot(t,Y);
grid on
hold on 

%plot(t,U);
hold off
%grid on
pzmap(H);
%gc=pidtune(H,'PID');
