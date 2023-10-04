clear all;
clc

Car1 = SE2(300, 550, 0).T;
Car1move = SE2(pi*484/360,0,0).T;
Car1turn = SE2(0,0,-2*pi/360).T;
for i = 1:7   
    Car1 = Car1*Car1move*Car1turn;
end
x1 = Car1(1, 3);
y1 =  Car1(2, 3);

car2 = SE2(508,300,pi/2).T;
car2MoveTr = SE2((pi * 375)/360, 0, 0).T;
car2TurnTr = SE2(0, 0, 2*pi/360).T;
for j = 1:5
    car2 = car2*car2MoveTr*car2TurnTr;
end
x2 = car2(1,3);
y2 = car2(2,3);


inv(Car1)*car2

%
% 
% Car =
% 
%     0.9205    0.3907  394.7224
%    -0.3907    0.9205  531.5878
%          0         0    1.0000

% Car2 =
% 
%     0.9563    0.2924   59.1556
%    -0.2924    0.9563  309.9565
%          0         0    1.0000
% 
%          A = 


% Car = SE2(300, 550, 0).T;
% Car2 = SE2(4, 4, 0).T;
% 
% 
%     x1 = Car(1, 3)
%     y1 = Car(2, 3)
%     x2 = Car2(1, 3)
%     y2 = Car2(2, 3)
% 
%     dist = sqrt((x2-x1)^2 + (y2-y1)^2)
%A = 