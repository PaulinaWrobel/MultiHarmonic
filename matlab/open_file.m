function data = open_file(length)
fid = fopen('fin_6_CH1.dat');
data = fread(fid,length,'double');
fclose(fid);

%fileID = fopen('din.txt','w');
%fprintf(fileID,'%d\n',w);
%fclose(fileID);
