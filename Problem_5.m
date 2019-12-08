%Declaration of Variables
n = 0:199; %Independent variable, n is the range of values
x = input('Input a function, x(n): '); %Range of values in which the function will be embedded to
y = 1:200; %Range of values in which function y will be embedded

for i = 1:200 %Start with 1 since a 0 index doesn't exist
    if i == 1 
        y(i) = -1.5.*(x(i)) + 2.*(x(i+1)) - 0.5.*(x(i+2));
    elseif i == 200
        y(i) = 1.5.*(x(i)) - 2.*(x(i-1)) + 0.5.*(x(i-2));
    else
        y(i) = 0.5.*(x(i+1)) - 0.5.*(x(i-1));
    end
end

plot(n,x,'-r') %Plotting x with respect to n
hold on
plot(n,y,'-b') %Plotting y with respect to n
grid on
legend('x(n)','y(n)')