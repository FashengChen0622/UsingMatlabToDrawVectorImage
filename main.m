clc
%
Father_Level = 2;
Child_Level = -1;
DivantDist = 2;
% Set Hexagon Unit Attributes
%Hexagon 1
Color = [113,188,255]/255-0.15;
FontSize = 20;
lineWidth = 5;
Opt1 = [];
Opt1.Center = [-DivantDist,Child_Level];
Opt1.Color = Color;
Opt1.FontSize = FontSize;
Opt1.NameSet = {'Dining\nroom\n0.80','Pantry\n0.05','Living\nroom\n0.05'};
Opt1.Title = 'Topic: Eating';
Opt1.TitleSize = FontSize;
%Hexagon 2
Opt2 = Opt1;
Opt2.Center = [0,Child_Level];
Opt2.NameSet = {'Study\nroom\n0.6','Cubic\n0.3','Living\nroom\n0.1'};
Opt2.Title = 'Topic: Reading';
% Hexagon 3
Opt3 = Opt1;
Opt3.Center = [DivantDist,Child_Level];
Opt3.NameSet = {'Cubic\n0.7',' Lab\n8L01\n0.2','Study\nroom\n0.1'};
Opt3.Title = 'Topic: Working';
% Hexagon 4
Opt4 = Opt1;
Opt4.Center = [0,Father_Level];
Opt4.FontSize = FontSize;
Opt4.NameSet = {'Eating','Reading','Working'};
Opt4.Title = 'Topics in a day';
Opt4.TitleSize = FontSize+8;

%% draw each hexagon unit
DrawUnit(Opt1)
hold on
DrawUnit(Opt2)
hold on
DrawUnit(Opt3)
hold on
DrawUnit(Opt4)

%% draw lines between hexagons
hold on
H_P = Father_Level-1-0.1;
L_P = Child_Level+1+0.4;
Height = H_P-L_P;
%{
plot([-2,0],[-1,2],'k--');
plot([0,0],[-1,2],'k--');
plot([2,0],[-1,2],'k--');

plot([-2,2],[H_P,H_P],'LineWdith',5);%Auxiliary line
plot([-2,2],[L_P,L_P],'LineWdith',5);%Auxiliary line
break
%}
x1 = Opt1.Center(1);
dx1 = x1/(Father_Level-Child_Level)*(Father_Level-H_P);
dx2 = x1-x1/(Father_Level-Child_Level)*(L_P-Child_Level);
plot([dx1,dx2],[H_P,L_P],'Color',Color,'lineWidth',5);
plot([-dx1,-dx2],[H_P,L_P],'Color',Color,'lineWidth',5);
plot([0,0],[H_P,L_P],'Color',Color,'lineWidth',lineWidth);
%%
hold off
fprintf('press <Editor> -> <Copy Figure> in the figure window\n to copy the vector image.\n');
fprintf('before you copy figure, please maximum the figure window\n');