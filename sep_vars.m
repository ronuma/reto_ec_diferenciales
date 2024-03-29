clear all
clear workspace
clc

% resolver ecuaciones diferenciales por metodo de variables separables %

fprintf("Despeja el diferencial en la ecuaci�n.");
fprintf("\nSi es posible, factoriza la expresi�n que queda del otro lado del diferencial.");
fprintf("\n�Es posible dejar todos los t�mrinos de y de un lado y los de x del otro?");

continuar = input("\n(0) no, (1) s�\n");

if continuar == 1
    syms x y;
    fprintf("\nSepara las variables, de tal forma que ");
    fprintf("f sea la funci�n que multiplica a dx y g a dy.");
    f = input("\nIngresa f (la expresi�n que multiplica a dx): ");
    g = input("\nIngresa g (la expresi�n que multiplica a dy): ");
    F = int(f + 0*x);
    G = int(g + 0*y, y);
    fprintf("\nSoluci�n impl�cita general:");
    fprintf("\n%s", G);
    fprintf(" = %s", F);
    fprintf(" + C");
    fprintf("\nPara conseguir la expl�cita, despeja y para que quede en t�rminos de x.");
elseif continuar == 0
    fprintf("No se puede resolver por este m�todo, intenta otro.\n");
else
    fprintf("Selecci�n inv�lida, reinicie el programa");
end