clc;
clear all;
close all;
G20 = ["C1C", "L1C", 'D1C', 'S1C', 'C1W', 'L1W', 'D1W', 'S1W', 'C2X', 'L2X', 'D2X', 'S2X', 'C2W', 'L2W', 'D2W', 'S2W', 'C5X', 'L5X', 'D5X', 'S5X'];
R16 = ["C1C", 'L1C', 'D1C', 'S1C', 'C1P', 'L1P', 'D1P', 'S1P', 'C2C', 'L2C', 'D2C', 'S2C', 'C2P', 'L2P', 'D2P', 'S2P'];
E08 = ["C1X", 'L1X', 'D1X', 'S1X', 'C5X', 'L5X', 'D5X', 'S5X'];
C08 = ["C2I", 'L2I', 'D2I', 'S2I', 'C5X', 'L5X', 'D5X', 'S5X'];% параметры для каждого из видов спутника
curFolder = pwd;
filenameB1 = 'power01.19o';% переименовал файлы, чтобы не запутаться в цифрах
filenameB2 = 'power02.19o';
filenameB3 = 'power03.19o';
filenameB4 = 'power04.19o';
filenameB5 = 'power05.19o';
filenameB6 = 'power06.19o';
filenameB7 = 'power07.19o';
filenameB8 = 'power08.19o';
filenameB9 = 'power09.19o';
filenameB10 = 'power010.19o';
filenameB11 = 'power011.19o';
filenameB12 = 'power012.19o';
filenameB13 = 'power013.19o';
obsDataB1 = OBSRNX(strcat(curFolder,'\',filenameB1));% загружаю файлы(все 13 для 1 приемника)
obsDataB2 = OBSRNX(strcat(curFolder,'\',filenameB2));
obsDataB3 = OBSRNX(strcat(curFolder,'\',filenameB3));
obsDataB4 = OBSRNX(strcat(curFolder,'\',filenameB4));
obsDataB5 = OBSRNX(strcat(curFolder,'\',filenameB5));
obsDataB6 = OBSRNX(strcat(curFolder,'\',filenameB6));
obsDataB7 = OBSRNX(strcat(curFolder,'\',filenameB7));
obsDataB8 = OBSRNX(strcat(curFolder,'\',filenameB8));
obsDataB9 = OBSRNX(strcat(curFolder,'\',filenameB9));
obsDataB10 = OBSRNX(strcat(curFolder,'\',filenameB10));
obsDataB11 = OBSRNX(strcat(curFolder,'\',filenameB11));
obsDataB12 = OBSRNX(strcat(curFolder,'\',filenameB12));
obsDataB13 = OBSRNX(strcat(curFolder,'\',filenameB13));

C1 = sattelite(obsDataB1.sat.C,1);
G1 = sattelite(obsDataB1.sat.G,2);
R1 = sattelite(obsDataB1.sat.R,3);
E1 = sattelite(obsDataB1.sat.E,4);
sat1 = [C1,E1,G1,R1]; % с помощью функции sattelite создаю набор 'ключей' в таком же порядке,
%в котором спутники будут в матрице(тут ключи пока что просто номера спутников)

C2 = sattelite(obsDataB2.sat.C,1);% для каждого файла так
G2 = sattelite(obsDataB2.sat.G,2);
R2 = sattelite(obsDataB2.sat.R,3);
E2 = sattelite(obsDataB2.sat.E,4);
sat2 = [C2,E2,G2,R2];

C3 = sattelite(obsDataB3.sat.C,1);
G3 = sattelite(obsDataB3.sat.G,2);
R3 = sattelite(obsDataB3.sat.R,3);
E3 = sattelite(obsDataB3.sat.E,4);
sat3 = [C3,E3,G3,R3];

C4 = sattelite(obsDataB4.sat.C,1);
G4 = sattelite(obsDataB4.sat.G,2);
R4 = sattelite(obsDataB4.sat.R,3);
E4 = sattelite(obsDataB4.sat.E,4);
sat4 = [C4,E4,G4,R4];

C5 = sattelite(obsDataB5.sat.C,1);
G5 = sattelite(obsDataB5.sat.G,2);
R5 = sattelite(obsDataB5.sat.R,3);
E5 = sattelite(obsDataB5.sat.E,4);
sat5 = [C5,E5,G5,R5];

C6 = sattelite(obsDataB6.sat.C,1);
G6 = sattelite(obsDataB6.sat.G,2);
R6 = sattelite(obsDataB6.sat.R,3);
E6 = sattelite(obsDataB6.sat.E,4);
sat6 = [C6,E6,G6,R6];

C7 = sattelite(obsDataB7.sat.C,1);
G7 = sattelite(obsDataB7.sat.G,2);
R7 = sattelite(obsDataB7.sat.R,3);
E7 = sattelite(obsDataB7.sat.E,4);
sat7 = [C7,E7,G7,R7];

C8 = sattelite(obsDataB8.sat.C,1);
G8 = sattelite(obsDataB8.sat.G,2);
R8 = sattelite(obsDataB8.sat.R,3);
E8 = sattelite(obsDataB8.sat.E,4);
sat8 = [C8,E8,G8,R8];

C9 = sattelite(obsDataB9.sat.C,1);
G9 = sattelite(obsDataB9.sat.G,2);
R9 = sattelite(obsDataB9.sat.R,3);
E9 = sattelite(obsDataB9.sat.E,4);
sat9 = [C9,E9,G9,R9];

C10 = sattelite(obsDataB10.sat.C,1);
G10 = sattelite(obsDataB10.sat.G,2);
R10 = sattelite(obsDataB10.sat.R,3);
E10 = sattelite(obsDataB10.sat.E,4);
sat10 = [C10,E10,G10,R10];

C11 = sattelite(obsDataB11.sat.C,1);
G11 = sattelite(obsDataB11.sat.G,2);
R11 = sattelite(obsDataB11.sat.R,3);
E11 = sattelite(obsDataB11.sat.E,4);
sat11 = [C11,E11,G11,R11];

C12 = sattelite(obsDataB12.sat.C,1);
G12 = sattelite(obsDataB12.sat.G,2);
R12 = sattelite(obsDataB12.sat.R,3);
E12 = sattelite(obsDataB12.sat.E,4);
sat12 = [C12,E12,G12,R12];

C13 = sattelite(obsDataB13.sat.C,1);
G13 = sattelite(obsDataB13.sat.G,2);
R13 = sattelite(obsDataB13.sat.R,3);
E13 = sattelite(obsDataB13.sat.E,4);
sat13 = [C13,E13,G13,R13];

time1 = timefile(obsDataB1.obs.R,obsDataB1.obs.G,obsDataB1.obs.E,obsDataB1.obs.C,R1,G1,E1,C1);
% для каждого файла создаю словари, где ключи определил ранее, а значения к
% этим ключам - матрицы, считанные с файла для каждого спутника
time2 = timefile(obsDataB2.obs.R,obsDataB2.obs.G,obsDataB2.obs.E,obsDataB2.obs.C,R2,G2,E2,C2);
time3 = timefile(obsDataB3.obs.R,obsDataB3.obs.G,obsDataB3.obs.E,obsDataB3.obs.C,R3,G3,E3,C3);
time4 = timefile(obsDataB4.obs.R,obsDataB4.obs.G,obsDataB4.obs.E,obsDataB4.obs.C,R4,G4,E4,C4);
time5 = timefile(obsDataB5.obs.R,obsDataB5.obs.G,obsDataB5.obs.E,obsDataB5.obs.C,R5,G5,E5,C5);
time6 = timefile(obsDataB6.obs.R,obsDataB6.obs.G,obsDataB6.obs.E,obsDataB6.obs.C,R6,G6,E6,C6);
time7 = timefile(obsDataB7.obs.R,obsDataB7.obs.G,obsDataB7.obs.E,obsDataB7.obs.C,R7,G7,E7,C7);
time8 = timefile(obsDataB8.obs.R,obsDataB8.obs.G,obsDataB8.obs.E,obsDataB8.obs.C,R8,G8,E8,C8);
time9 = timefile(obsDataB9.obs.R,obsDataB9.obs.G,obsDataB9.obs.E,obsDataB9.obs.C,R9,G9,E9,C9);
time10 = timefile(obsDataB10.obs.R,obsDataB10.obs.G,obsDataB10.obs.E,obsDataB10.obs.C,R10,G10,E10,C10);
time11 = timefile(obsDataB11.obs.R,obsDataB11.obs.G,obsDataB11.obs.E,obsDataB11.obs.C,R11,G11,E11,C11);
time12 = timefile(obsDataB12.obs.R,obsDataB12.obs.G,obsDataB12.obs.E,obsDataB12.obs.C,R12,G12,E12,C12);
time13 = timefile(obsDataB13.obs.R,obsDataB13.obs.G,obsDataB13.obs.E,obsDataB13.obs.C,R13,G13,E13,C13);
[kl,klsat] = obraz(time1,time2,sat1,sat2,1);
%по очереди объеденяю данные с каждого файла, сделал так запарно из-за
%одного очень неприятного момента: в следующем файле могут появится
%спутники, которых не было в предыдущем. Пришлось написать алгоритм,
%учитывающий размещение данных во времени учитывая вышенаписанное
[kl2,klsat12] = obraz(kl,time3,klsat,sat3,2);
[kl3,klsat13] = obraz(kl2,time4,klsat12,sat4,3);
[kl4,klsat14] = obraz(kl3,time5,klsat13,sat5,4);
[kl5,klsat15] = obraz(kl4,time6,klsat14,sat6,5);
[kl6,klsat16] = obraz(kl5,time7,klsat15,sat7,6);
[kl7,klsat17] = obraz(kl6,time8,klsat16,sat8,7);
[kl8,klsat18] = obraz(kl7,time9,klsat17,sat9,8);
[kl9,klsat19] = obraz(kl8,time10,klsat18,sat10,9);
[kl0,klsat10] = obraz(kl9,time11,klsat19,sat11,10);
[kl11,klsat111] = obraz(kl0,time12,klsat10,sat12,11);
[kl12,klsat112] = obraz(kl11,time13,klsat111,sat13,12);

satelite = [];
for i = 1:length(klsat112)% создаю ключи, но уже не номера спутника, а
    % "номер спутника_параметр",(нужно для того,чтобы перенести данные из 
    %словаря(в словаре же доступ по ключу идет ко всей матрице параметров спутника) в матрицу,
    %так могу иметь доступ к каждому столбцу параметра спутника и записать в файл)
    % так проще работать
    if strncmp(klsat112(i), 'C',1) == 1
        for j = 1:length(C08)
            satelite = [satelite,klsat112(i)+'_'+C08(j)];
        end
    elseif strncmp(klsat112(i), 'E',1) == 1
        for j = 1:length(E08)
            satelite = [satelite,klsat112(i)+'_'+E08(j)];
        end
    elseif strncmp(klsat112(i), 'G',1) == 1
        for j = 1:length(G20)
            satelite = [satelite,klsat112(i)+'_'+G20(j)];
        end
    elseif strncmp(klsat112(i), 'R',1) == 1
        for j = 1:length(R16)
            satelite = [satelite,klsat112(i)+'_'+R16(j)];
        end
    end
end 
matrix = [];
for i = 1:length(klsat112)
    matrix = [matrix kl12(klsat112(i))];% преобразую словарь в матрицу данных
end

matrixG = [];
% для каждого вида(GPS,Compas,Glonass,Galileo) создаю свой набор ключей и
% матриц, чтобы создать отдельно 4 файла
% так издеваюсь с первой матрицей, т.к. изначально прога была написана для
% 1 файла со всеми данными, а потом я ее дополнял для 4 отдельных, а переделывать было уже
% запарно.
sateliteG = [];
matrixE = [];
sateliteE = [];
matrixR = [];
sateliteR = [];
matrixC = [];
sateliteC = [];
for i = 1:length(satelite)
    if strncmp(satelite(i), 'C',1) == 1
        matrixC = [matrixC matrix(:,i)];
        sateliteC = [sateliteC, satelite(i)];
    elseif strncmp(satelite(i), 'E',1) == 1
        matrixE = [matrixE matrix(:,i)];
        sateliteE = [sateliteE, satelite(i)];
    elseif strncmp(satelite(i), 'R',1) == 1
        matrixR = [matrixR matrix(:,i)];
        sateliteR = [sateliteR, satelite(i)];
    elseif strncmp(satelite(i), 'G',1) == 1
        matrixG = [matrixG matrix(:,i)];
        sateliteG = [sateliteG, satelite(i)];
    end
end

[matrixG20,sateliteG20] = zeros1(sateliteG,matrixG);
% Есть виды спутников(например GPS), которые работают на N частотах,
% следовательно каждый спутник имеет N*4 параметров (C,L,D,S), но есть
% спутники, в том же GPS, которые работают на n < N частотах, следовательно
% параметров меньше, а при считывании с rinex файла, оно записывает все
% равно N*4 параметра, а тех которых нету, он заполняет нулями(такая уж
% либа). В функции, чтобы уменьшить размер файла и убрать связку
% спутник_параметр, которого нету, убираю эти столбцы с нулями.
[matrixE20,sateliteE20] = zeros1(sateliteE,matrixE);% для каждого вида спутника
[matrixR20,sateliteR20] = zeros1(sateliteR,matrixR);
[matrixC20,sateliteC20] = zeros1(sateliteC,matrixC);

file1 = file(sateliteG20,matrixG20,'dataG20.csv');% запись в CSV файл с header в качестве ключа для каждого спутника
file2 = file(sateliteE20,matrixE20,'dataE20.csv');
file3 = file(sateliteR20,matrixR20,'dataR20.csv');
file4 = file(sateliteC20,matrixC20,'dataC20.csv');

function y = file(satelite,matrix,name)
    commaHeader = [satelite;repmat({','},1,numel(satelite))];
    commaHeader = commaHeader(:)';
    textHeader = cell2mat(commaHeader);
    fid = fopen(name,'w'); 
    fprintf(fid,'%s\n',textHeader);
    fclose(fid);
    dlmwrite(name,matrix,'-append');
    y = 1;
end

function [u,sat] = obraz(t1,t2,s1,s2,num)% так просто алгоритм не объясню(займет еще десяток строк кода), он написан на тетради, но работает :)
k = 0;
s = [];
    for i = 1:length(s2)
        for j = 1:length(s1)
            if s2(i) == s1(j)
                k = j;
                continue;
            end
        end
        if k == 0
            m = zeros(10800*num,size(t2(s2(i)),2));
            t1(s2(i)) = [m;t2(s2(i))];
            s = [s,s2(i)];
            clear m;
        else
            t1(s1(k)) = [t1(s1(k));t2(s2(i))];
        end
        k = 0;
        
    end
    s1 = [s1,s];
    k = 0;
    for b = 1:length(s1)
        for n = 1:length(s2)
            if s1(b) == s2(n)
                k = n;
                continue;
            end
        end
        if k == 0
            m = zeros(10800,size(t1(s1(b)),2));
            t1(s1(b)) = [t1(s1(b));m];
            clear m;
        end
        k = 0;
    end
    u = t1;
    sat = s1;
end
function y = timefile(r,g,e,c,R,G,E,C)
Y = containers.Map;
for m = 1:length(r)
    Y(R(m)) = r{1,m};
end
for k = 1:length(g)
    Y(G(k)) = g{1,k};
end
for l = 1:length(e)
    Y(E(l)) = e{1,l};
end
for o = 1:length(c)
    Y(C(o)) = c{1,o};
end
y = Y;
clear R G E C
end
function y = sattelite(obs,num)
    Y = [];
    for i = 1:length(obs)
        if obs(i)<10
            if num == 1
                Y = [Y,'C0'+string(obs(i))];
            elseif num == 2
                Y = [Y,'G0'+string(obs(i))];
            elseif num == 3
                Y = [Y,'R0'+string(obs(i))];
            else
                Y = [Y,'E0'+string(obs(i))];
            end
        else
            if num == 1
                Y = [Y,'C'+string(obs(i))];
            elseif num == 2
                Y = [Y,'G'+string(obs(i))];
            elseif num == 3
                Y = [Y,'R'+string(obs(i))];
            else
                Y = [Y,'E'+string(obs(i))];
            end
        end
    end
    
    y = Y;
    clear Y;
end
function [y,st] = zeros1(satelite00,matrix00)
    index = 0;
    n = size(matrix00,2);
    i = 1;
    while i < n
        for j = 1:size(matrix00,1)
            if matrix00(j,i) == 0
                index = index + 1;
            end
        end
        if index == 140400
            matrix00(:,i) = [];
            satelite00(:,i) = [];
            i = i-1;
        end
        index = 0;
        n = size(matrix00,2);
        i = i+1;
    end
    y = matrix00;
    st = satelite00;
end

