function DrawUnit(Opt)
%draw a hexagon unit
%Opt1.Center    - Hexagon center position eg: [x_center,y_center]
%Opt1.Color     - Hexagon Color           eg: [255,0,0]
%Opt1.FontSize  - Font Size                 eg: 20
%Opt1.NameSet   - Hexagon internal name     eg: {'Dining\nRoom\n0.80','Pantry\n0.05','Living\nRoom\n0.05'}
%Opt1.Title     - Hexagon Title             eg: 'Topic: Eating'
%Opt1.TitleSize - Hexagon Title' Font Size  eg: 20

x_cen = Opt.Center(1);
y_cen = Opt.Center(2);
Color = Opt.Color;
FontSize = Opt.FontSize;
NameSet = Opt.NameSet;
Title = Opt.Title;
Rdius = 1;
lineWidth = 5;
%%
ang = ([0:60:360]+30)/180*pi;
x_pos = Rdius*cos(ang)+x_cen;
y_pos = Rdius*sin(ang)+y_cen;
%% draw
plot(x_pos,y_pos,'color',Color,'linewidth',lineWidth);
hold on
for i=[1,3,5]
    plot([x_cen,x_pos(i)],[y_cen,y_pos(i)],'color',Color,'linewidth',lineWidth);
end

for i=1:3
    x_p = (x_pos(2*i)+x_cen)/2;
    y_p = (y_pos(2*i)+y_cen)/2;
    h1 = text(x_p,y_p,sprintf(NameSet{i}),'color',Color);
    set(h1,'HorizontalAlignment','center');
    set(h1,'FontSize',FontSize); 
    set(h1,'FontWeight','bold'); 
end
if ~(isempty(Title))
    h1 = text(x_pos(2),y_pos(2)+0.2,sprintf(Title),'color',Color);
    set(h1,'HorizontalAlignment','center');
    set(h1,'FontSize',FontSize); 
    set(h1,'FontWeight','bold'); 
end
axis equal
axis off
hold off