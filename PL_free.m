jsonStr = fileread('D:\pycharm\code\sendplug_matlab\pro_matlab\.venv\data\data.json');
jsonData =jsondecode(jsonStr);
fc=jsonData.fc;
dist=jsonData.dist;
Gt=jsonData.Gt;
Gr=jsonData.Gr;
lamda=3e8/fc; %fc代表载波频率[Hz]
tmp=lamda./(4*pi*dist); %dist代表基站和用户之间的距离
% if nargin>2, tmp=tmp*sqrt(Gt); %Gt代表发射机天线增益
% end
% if nargin>3, tmp=tmp*sqrt(Gr); %Gr代表接收机天线增益
% end
PL=-20*log10(tmp);
fid = fopen('D:\pycharm\code\sendplug_matlab\pro_matlab\.venv\output\output.txt','wt');
fprintf(fid,'%g\n',PL);
fclose(fid);