OPENQASM 2.0;
include "qelib1.inc";

qreg q[30];

h q[20];
cx q[11], q[20];
tdg q[20];
cx q[9], q[20];
t q[20];
cx q[11], q[20];
tdg q[20];
cx q[9], q[20];
cx q[9], q[11];
tdg q[11];
cx q[9], q[11];
cx q[12], q[20];
tdg q[20];
cx q[8], q[20];
t q[20];
cx q[12], q[20];
tdg q[20];
cx q[8], q[20];
cx q[8], q[12];
tdg q[12];
cx q[8], q[12];
cx q[13], q[20];
tdg q[20];
cx q[7], q[20];
t q[20];
cx q[13], q[20];
tdg q[20];
cx q[7], q[20];
cx q[7], q[13];
tdg q[13];
cx q[7], q[13];
cx q[14], q[20];
tdg q[20];
cx q[6], q[20];
t q[20];
cx q[14], q[20];
tdg q[20];
cx q[6], q[20];
cx q[6], q[14];
tdg q[14];
cx q[6], q[14];
cx q[15], q[20];
tdg q[20];
cx q[5], q[20];
t q[20];
cx q[15], q[20];
tdg q[20];
cx q[5], q[20];
cx q[5], q[15];
tdg q[15];
cx q[5], q[15];
cx q[16], q[20];
tdg q[20];
cx q[4], q[20];
t q[20];
cx q[16], q[20];
tdg q[20];
cx q[4], q[20];
cx q[4], q[16];
tdg q[16];
cx q[4], q[16];
cx q[17], q[20];
tdg q[20];
cx q[3], q[20];
t q[20];
cx q[17], q[20];
tdg q[20];
cx q[3], q[20];
cx q[3], q[17];
tdg q[17];
cx q[3], q[17];
cx q[18], q[20];
tdg q[20];
cx q[2], q[20];
t q[20];
cx q[18], q[20];
tdg q[20];
cx q[2], q[20];
cx q[2], q[18];
tdg q[18];
cx q[2], q[18];
cx q[19], q[20];
tdg q[20];
cx q[1], q[20];
t q[20];
cx q[19], q[20];
tdg q[20];
cx q[1], q[20];
cx q[1], q[19];
tdg q[19];
cx q[1], q[19];
t q[20];
h q[20];
h q[21];
cx q[12], q[21];
tdg q[21];
cx q[9], q[21];
t q[21];
cx q[12], q[21];
tdg q[21];
cx q[9], q[21];
cx q[9], q[12];
tdg q[12];
cx q[9], q[12];
cx q[13], q[21];
tdg q[21];
cx q[8], q[21];
t q[21];
cx q[13], q[21];
tdg q[21];
cx q[8], q[21];
cx q[8], q[13];
tdg q[13];
cx q[8], q[13];
cx q[14], q[21];
tdg q[21];
cx q[7], q[21];
t q[21];
cx q[14], q[21];
tdg q[21];
cx q[7], q[21];
cx q[7], q[14];
tdg q[14];
cx q[7], q[14];
cx q[15], q[21];
tdg q[21];
cx q[6], q[21];
t q[21];
cx q[15], q[21];
tdg q[21];
cx q[6], q[21];
cx q[6], q[15];
tdg q[15];
cx q[6], q[15];
cx q[16], q[21];
tdg q[21];
cx q[5], q[21];
t q[21];
cx q[16], q[21];
tdg q[21];
cx q[5], q[21];
cx q[5], q[16];
tdg q[16];
cx q[5], q[16];
cx q[17], q[21];
tdg q[21];
cx q[4], q[21];
t q[21];
cx q[17], q[21];
tdg q[21];
cx q[4], q[21];
cx q[4], q[17];
tdg q[17];
cx q[4], q[17];
cx q[18], q[21];
tdg q[21];
cx q[3], q[21];
t q[21];
cx q[18], q[21];
tdg q[21];
cx q[3], q[21];
cx q[3], q[18];
tdg q[18];
cx q[3], q[18];
cx q[19], q[21];
tdg q[21];
cx q[2], q[21];
t q[21];
cx q[19], q[21];
tdg q[21];
cx q[2], q[21];
cx q[2], q[19];
tdg q[19];
cx q[2], q[19];
h q[21];
h q[22];
cx q[13], q[22];
tdg q[22];
cx q[9], q[22];
t q[22];
cx q[13], q[22];
tdg q[22];
cx q[9], q[22];
cx q[9], q[13];
tdg q[13];
cx q[9], q[13];
tdg q[22];
cx q[14], q[22];
tdg q[22];
cx q[8], q[22];
t q[22];
cx q[14], q[22];
tdg q[22];
cx q[8], q[22];
cx q[8], q[14];
tdg q[14];
cx q[8], q[14];
cx q[15], q[22];
tdg q[22];
cx q[7], q[22];
t q[22];
cx q[15], q[22];
tdg q[22];
cx q[7], q[22];
cx q[7], q[15];
tdg q[15];
cx q[7], q[15];
cx q[16], q[22];
tdg q[22];
cx q[6], q[22];
t q[22];
cx q[16], q[22];
tdg q[22];
cx q[6], q[22];
cx q[6], q[16];
tdg q[16];
cx q[6], q[16];
cx q[17], q[22];
tdg q[22];
cx q[5], q[22];
t q[22];
cx q[17], q[22];
tdg q[22];
cx q[5], q[22];
cx q[5], q[17];
tdg q[17];
cx q[5], q[17];
cx q[18], q[22];
tdg q[22];
cx q[4], q[22];
t q[22];
cx q[18], q[22];
tdg q[22];
cx q[4], q[22];
cx q[4], q[18];
tdg q[18];
cx q[4], q[18];
cx q[19], q[22];
tdg q[22];
cx q[3], q[22];
t q[22];
cx q[19], q[22];
tdg q[22];
cx q[3], q[22];
cx q[3], q[19];
tdg q[19];
cx q[3], q[19];
h q[22];
h q[23];
cx q[14], q[23];
tdg q[23];
cx q[9], q[23];
t q[23];
cx q[14], q[23];
tdg q[23];
cx q[9], q[23];
cx q[9], q[14];
tdg q[14];
cx q[9], q[14];
sdg q[23];
cx q[15], q[23];
tdg q[23];
cx q[8], q[23];
t q[23];
cx q[15], q[23];
tdg q[23];
cx q[8], q[23];
cx q[8], q[15];
tdg q[15];
cx q[8], q[15];
cx q[16], q[23];
tdg q[23];
cx q[7], q[23];
t q[23];
cx q[16], q[23];
tdg q[23];
cx q[7], q[23];
cx q[7], q[16];
tdg q[16];
cx q[7], q[16];
cx q[17], q[23];
tdg q[23];
cx q[6], q[23];
t q[23];
cx q[17], q[23];
tdg q[23];
cx q[6], q[23];
cx q[6], q[17];
tdg q[17];
cx q[6], q[17];
cx q[18], q[23];
tdg q[23];
cx q[5], q[23];
t q[23];
cx q[18], q[23];
tdg q[23];
cx q[5], q[23];
cx q[5], q[18];
tdg q[18];
cx q[5], q[18];
cx q[19], q[23];
tdg q[23];
cx q[4], q[23];
t q[23];
cx q[19], q[23];
tdg q[23];
cx q[4], q[23];
cx q[4], q[19];
tdg q[19];
cx q[4], q[19];
h q[23];
h q[24];
cx q[15], q[24];
tdg q[24];
cx q[9], q[24];
t q[24];
cx q[15], q[24];
tdg q[24];
cx q[9], q[24];
cx q[9], q[15];
tdg q[15];
cx q[9], q[15];
rzq(5,4) q[24];
cx q[16], q[24];
tdg q[24];
cx q[8], q[24];
t q[24];
cx q[16], q[24];
tdg q[24];
cx q[8], q[24];
cx q[8], q[16];
tdg q[16];
cx q[8], q[16];
cx q[17], q[24];
tdg q[24];
cx q[7], q[24];
t q[24];
cx q[17], q[24];
tdg q[24];
cx q[7], q[24];
cx q[7], q[17];
tdg q[17];
cx q[7], q[17];
cx q[18], q[24];
tdg q[24];
cx q[6], q[24];
t q[24];
cx q[18], q[24];
tdg q[24];
cx q[6], q[24];
cx q[6], q[18];
tdg q[18];
cx q[6], q[18];
cx q[19], q[24];
tdg q[24];
cx q[5], q[24];
t q[24];
cx q[19], q[24];
tdg q[24];
cx q[5], q[24];
cx q[5], q[19];
tdg q[19];
cx q[5], q[19];
h q[24];
h q[25];
cx q[16], q[25];
tdg q[25];
cx q[9], q[25];
t q[25];
cx q[16], q[25];
tdg q[25];
cx q[9], q[25];
cx q[9], q[16];
tdg q[16];
cx q[9], q[16];
z q[25];
cx q[17], q[25];
tdg q[25];
cx q[8], q[25];
t q[25];
cx q[17], q[25];
tdg q[25];
cx q[8], q[25];
cx q[8], q[17];
tdg q[17];
cx q[8], q[17];
cx q[18], q[25];
tdg q[25];
cx q[7], q[25];
t q[25];
cx q[18], q[25];
tdg q[25];
cx q[7], q[25];
cx q[7], q[18];
tdg q[18];
cx q[7], q[18];
cx q[19], q[25];
tdg q[25];
cx q[6], q[25];
t q[25];
cx q[19], q[25];
tdg q[25];
cx q[6], q[25];
cx q[6], q[19];
tdg q[19];
cx q[6], q[19];
h q[25];
h q[26];
cx q[17], q[26];
tdg q[26];
cx q[9], q[26];
t q[26];
cx q[17], q[26];
tdg q[26];
cx q[9], q[26];
cx q[9], q[17];
tdg q[17];
cx q[9], q[17];
rzq(3,4) q[26];
cx q[18], q[26];
tdg q[26];
cx q[8], q[26];
t q[26];
cx q[18], q[26];
tdg q[26];
cx q[8], q[26];
cx q[8], q[18];
tdg q[18];
cx q[8], q[18];
cx q[19], q[26];
tdg q[26];
cx q[7], q[26];
t q[26];
cx q[19], q[26];
tdg q[26];
cx q[7], q[26];
cx q[7], q[19];
tdg q[19];
cx q[7], q[19];
h q[26];
h q[27];
cx q[18], q[27];
tdg q[27];
cx q[9], q[27];
t q[27];
cx q[18], q[27];
tdg q[27];
cx q[9], q[27];
cx q[9], q[18];
tdg q[18];
cx q[9], q[18];
s q[27];
cx q[19], q[27];
tdg q[27];
cx q[8], q[27];
t q[27];
cx q[19], q[27];
tdg q[27];
cx q[8], q[27];
cx q[8], q[19];
tdg q[19];
cx q[8], q[19];
h q[27];
h q[28];
cx q[19], q[28];
tdg q[28];
cx q[9], q[28];
t q[28];
cx q[19], q[28];
tdg q[28];
cx q[9], q[28];
cx q[9], q[19];
tdg q[19];
cx q[9], q[19];
t q[28];
h q[28];
cx q[28], q[21];
cx q[27], q[20];
cx q[26], q[29];
cx q[25], q[28];
cx q[24], q[27];
cx q[23], q[26];
cx q[22], q[25];
cx q[21], q[24];
cx q[20], q[23];
h q[29];
cx q[10], q[29];
tdg q[29];
cx q[9], q[29];
t q[29];
cx q[10], q[29];
tdg q[29];
cx q[9], q[29];
cx q[9], q[10];
tdg q[10];
cx q[9], q[10];
s q[9];
cx q[11], q[29];
tdg q[29];
cx q[8], q[29];
t q[29];
cx q[11], q[29];
tdg q[29];
cx q[8], q[29];
cx q[8], q[11];
tdg q[11];
cx q[8], q[11];
cx q[12], q[29];
tdg q[29];
cx q[7], q[29];
t q[29];
cx q[12], q[29];
tdg q[29];
cx q[7], q[29];
cx q[7], q[12];
tdg q[12];
cx q[7], q[12];
cx q[13], q[29];
tdg q[29];
cx q[6], q[29];
t q[29];
cx q[13], q[29];
tdg q[29];
cx q[6], q[29];
cx q[6], q[13];
tdg q[13];
cx q[6], q[13];
cx q[14], q[29];
tdg q[29];
cx q[5], q[29];
t q[29];
cx q[14], q[29];
tdg q[29];
cx q[5], q[29];
cx q[5], q[14];
tdg q[14];
cx q[5], q[14];
cx q[15], q[29];
tdg q[29];
cx q[4], q[29];
t q[29];
cx q[15], q[29];
tdg q[29];
cx q[4], q[29];
cx q[4], q[15];
tdg q[15];
cx q[4], q[15];
cx q[16], q[29];
tdg q[29];
cx q[3], q[29];
t q[29];
cx q[16], q[29];
tdg q[29];
cx q[3], q[29];
cx q[3], q[16];
tdg q[16];
cx q[3], q[16];
cx q[17], q[29];
tdg q[29];
cx q[2], q[29];
t q[29];
cx q[17], q[29];
tdg q[29];
cx q[2], q[29];
cx q[2], q[17];
tdg q[17];
cx q[2], q[17];
cx q[18], q[29];
tdg q[29];
cx q[1], q[29];
t q[29];
cx q[18], q[29];
tdg q[29];
cx q[1], q[29];
cx q[1], q[18];
tdg q[18];
cx q[1], q[18];
s q[29];
cx q[19], q[29];
tdg q[29];
cx q[0], q[29];
t q[29];
cx q[19], q[29];
tdg q[29];
cx q[0], q[29];
cx q[0], q[19];
tdg q[19];
cx q[0], q[19];
s q[19];
h q[29];
h q[28];
cx q[10], q[28];
tdg q[28];
cx q[8], q[28];
t q[28];
cx q[10], q[28];
tdg q[28];
cx q[8], q[28];
cx q[8], q[10];
tdg q[10];
cx q[8], q[10];
s q[8];
cx q[11], q[28];
tdg q[28];
cx q[7], q[28];
t q[28];
cx q[11], q[28];
tdg q[28];
cx q[7], q[28];
cx q[7], q[11];
tdg q[11];
cx q[7], q[11];
cx q[12], q[28];
tdg q[28];
cx q[6], q[28];
t q[28];
cx q[12], q[28];
tdg q[28];
cx q[6], q[28];
cx q[6], q[12];
tdg q[12];
cx q[6], q[12];
cx q[13], q[28];
tdg q[28];
cx q[5], q[28];
t q[28];
cx q[13], q[28];
tdg q[28];
cx q[5], q[28];
cx q[5], q[13];
tdg q[13];
cx q[5], q[13];
cx q[14], q[28];
tdg q[28];
cx q[4], q[28];
t q[28];
cx q[14], q[28];
tdg q[28];
cx q[4], q[28];
cx q[4], q[14];
tdg q[14];
cx q[4], q[14];
cx q[15], q[28];
tdg q[28];
cx q[3], q[28];
t q[28];
cx q[15], q[28];
tdg q[28];
cx q[3], q[28];
cx q[3], q[15];
tdg q[15];
cx q[3], q[15];
cx q[16], q[28];
tdg q[28];
cx q[2], q[28];
t q[28];
cx q[16], q[28];
tdg q[28];
cx q[2], q[28];
cx q[2], q[16];
tdg q[16];
cx q[2], q[16];
cx q[17], q[28];
tdg q[28];
cx q[1], q[28];
t q[28];
cx q[17], q[28];
tdg q[28];
cx q[1], q[28];
cx q[1], q[17];
tdg q[17];
cx q[1], q[17];
cx q[18], q[28];
tdg q[28];
cx q[0], q[28];
t q[28];
cx q[18], q[28];
tdg q[28];
cx q[0], q[28];
cx q[0], q[18];
tdg q[18];
cx q[0], q[18];
s q[18];
t q[28];
h q[28];
h q[27];
cx q[10], q[27];
tdg q[27];
cx q[7], q[27];
t q[27];
cx q[10], q[27];
tdg q[27];
cx q[7], q[27];
cx q[7], q[10];
tdg q[10];
cx q[7], q[10];
s q[7];
cx q[11], q[27];
tdg q[27];
cx q[6], q[27];
t q[27];
cx q[11], q[27];
tdg q[27];
cx q[6], q[27];
cx q[6], q[11];
tdg q[11];
cx q[6], q[11];
cx q[12], q[27];
tdg q[27];
cx q[5], q[27];
t q[27];
cx q[12], q[27];
tdg q[27];
cx q[5], q[27];
cx q[5], q[12];
tdg q[12];
cx q[5], q[12];
cx q[13], q[27];
tdg q[27];
cx q[4], q[27];
t q[27];
cx q[13], q[27];
tdg q[27];
cx q[4], q[27];
cx q[4], q[13];
tdg q[13];
cx q[4], q[13];
cx q[14], q[27];
tdg q[27];
cx q[3], q[27];
t q[27];
cx q[14], q[27];
tdg q[27];
cx q[3], q[27];
cx q[3], q[14];
tdg q[14];
cx q[3], q[14];
cx q[15], q[27];
tdg q[27];
cx q[2], q[27];
t q[27];
cx q[15], q[27];
tdg q[27];
cx q[2], q[27];
cx q[2], q[15];
tdg q[15];
cx q[2], q[15];
cx q[16], q[27];
tdg q[27];
cx q[1], q[27];
t q[27];
cx q[16], q[27];
tdg q[27];
cx q[1], q[27];
cx q[1], q[16];
tdg q[16];
cx q[1], q[16];
cx q[17], q[27];
tdg q[27];
cx q[0], q[27];
t q[27];
cx q[17], q[27];
tdg q[27];
cx q[0], q[27];
cx q[0], q[17];
tdg q[17];
cx q[0], q[17];
s q[17];
h q[27];
h q[26];
cx q[10], q[26];
tdg q[26];
cx q[6], q[26];
t q[26];
cx q[10], q[26];
tdg q[26];
cx q[6], q[26];
cx q[6], q[10];
tdg q[10];
cx q[6], q[10];
s q[6];
tdg q[26];
cx q[11], q[26];
tdg q[26];
cx q[5], q[26];
t q[26];
cx q[11], q[26];
tdg q[26];
cx q[5], q[26];
cx q[5], q[11];
tdg q[11];
cx q[5], q[11];
cx q[12], q[26];
tdg q[26];
cx q[4], q[26];
t q[26];
cx q[12], q[26];
tdg q[26];
cx q[4], q[26];
cx q[4], q[12];
tdg q[12];
cx q[4], q[12];
cx q[13], q[26];
tdg q[26];
cx q[3], q[26];
t q[26];
cx q[13], q[26];
tdg q[26];
cx q[3], q[26];
cx q[3], q[13];
tdg q[13];
cx q[3], q[13];
cx q[14], q[26];
tdg q[26];
cx q[2], q[26];
t q[26];
cx q[14], q[26];
tdg q[26];
cx q[2], q[26];
cx q[2], q[14];
tdg q[14];
cx q[2], q[14];
cx q[15], q[26];
tdg q[26];
cx q[1], q[26];
t q[26];
cx q[15], q[26];
tdg q[26];
cx q[1], q[26];
cx q[1], q[15];
tdg q[15];
cx q[1], q[15];
cx q[16], q[26];
tdg q[26];
cx q[0], q[26];
t q[26];
cx q[16], q[26];
tdg q[26];
cx q[0], q[26];
cx q[0], q[16];
tdg q[16];
cx q[0], q[16];
s q[16];
h q[26];
h q[25];
cx q[10], q[25];
tdg q[25];
cx q[5], q[25];
t q[25];
cx q[10], q[25];
tdg q[25];
cx q[5], q[25];
cx q[5], q[10];
tdg q[10];
cx q[5], q[10];
s q[5];
sdg q[25];
cx q[11], q[25];
tdg q[25];
cx q[4], q[25];
t q[25];
cx q[11], q[25];
tdg q[25];
cx q[4], q[25];
cx q[4], q[11];
tdg q[11];
cx q[4], q[11];
cx q[12], q[25];
tdg q[25];
cx q[3], q[25];
t q[25];
cx q[12], q[25];
tdg q[25];
cx q[3], q[25];
cx q[3], q[12];
tdg q[12];
cx q[3], q[12];
cx q[13], q[25];
tdg q[25];
cx q[2], q[25];
t q[25];
cx q[13], q[25];
tdg q[25];
cx q[2], q[25];
cx q[2], q[13];
tdg q[13];
cx q[2], q[13];
cx q[14], q[25];
tdg q[25];
cx q[1], q[25];
t q[25];
cx q[14], q[25];
tdg q[25];
cx q[1], q[25];
cx q[1], q[14];
tdg q[14];
cx q[1], q[14];
cx q[15], q[25];
tdg q[25];
cx q[0], q[25];
t q[25];
cx q[15], q[25];
tdg q[25];
cx q[0], q[25];
cx q[0], q[15];
tdg q[15];
cx q[0], q[15];
s q[15];
h q[25];
h q[24];
cx q[10], q[24];
tdg q[24];
cx q[4], q[24];
t q[24];
cx q[10], q[24];
tdg q[24];
cx q[4], q[24];
cx q[4], q[10];
tdg q[10];
cx q[4], q[10];
s q[4];
rzq(5,4) q[24];
cx q[11], q[24];
tdg q[24];
cx q[3], q[24];
t q[24];
cx q[11], q[24];
tdg q[24];
cx q[3], q[24];
cx q[3], q[11];
tdg q[11];
cx q[3], q[11];
cx q[12], q[24];
tdg q[24];
cx q[2], q[24];
t q[24];
cx q[12], q[24];
tdg q[24];
cx q[2], q[24];
cx q[2], q[12];
tdg q[12];
cx q[2], q[12];
cx q[13], q[24];
tdg q[24];
cx q[1], q[24];
t q[24];
cx q[13], q[24];
tdg q[24];
cx q[1], q[24];
cx q[1], q[13];
tdg q[13];
cx q[1], q[13];
cx q[14], q[24];
tdg q[24];
cx q[0], q[24];
t q[24];
cx q[14], q[24];
tdg q[24];
cx q[0], q[24];
cx q[0], q[14];
tdg q[14];
cx q[0], q[14];
s q[14];
h q[24];
h q[23];
cx q[10], q[23];
tdg q[23];
cx q[3], q[23];
t q[23];
cx q[10], q[23];
tdg q[23];
cx q[3], q[23];
cx q[3], q[10];
tdg q[10];
cx q[3], q[10];
s q[3];
z q[23];
cx q[11], q[23];
tdg q[23];
cx q[2], q[23];
t q[23];
cx q[11], q[23];
tdg q[23];
cx q[2], q[23];
cx q[2], q[11];
tdg q[11];
cx q[2], q[11];
cx q[12], q[23];
tdg q[23];
cx q[1], q[23];
t q[23];
cx q[12], q[23];
tdg q[23];
cx q[1], q[23];
cx q[1], q[12];
tdg q[12];
cx q[1], q[12];
cx q[13], q[23];
tdg q[23];
cx q[0], q[23];
t q[23];
cx q[13], q[23];
tdg q[23];
cx q[0], q[23];
cx q[0], q[13];
tdg q[13];
cx q[0], q[13];
s q[13];
h q[23];
h q[22];
cx q[10], q[22];
tdg q[22];
cx q[2], q[22];
t q[22];
cx q[10], q[22];
tdg q[22];
cx q[2], q[22];
cx q[2], q[10];
tdg q[10];
cx q[2], q[10];
s q[2];
rzq(3,4) q[22];
cx q[11], q[22];
tdg q[22];
cx q[1], q[22];
t q[22];
cx q[11], q[22];
tdg q[22];
cx q[1], q[22];
cx q[1], q[11];
tdg q[11];
cx q[1], q[11];
cx q[12], q[22];
tdg q[22];
cx q[0], q[22];
t q[22];
cx q[12], q[22];
tdg q[22];
cx q[0], q[22];
cx q[0], q[12];
tdg q[12];
cx q[0], q[12];
s q[12];
h q[22];
h q[21];
cx q[10], q[21];
tdg q[21];
cx q[1], q[21];
t q[21];
cx q[10], q[21];
tdg q[21];
cx q[1], q[21];
cx q[1], q[10];
tdg q[10];
cx q[1], q[10];
s q[1];
s q[21];
cx q[11], q[21];
tdg q[21];
cx q[0], q[21];
t q[21];
cx q[11], q[21];
tdg q[21];
cx q[0], q[21];
cx q[0], q[11];
tdg q[11];
cx q[0], q[11];
s q[11];
h q[21];
h q[20];
cx q[10], q[20];
tdg q[20];
cx q[0], q[20];
t q[20];
cx q[10], q[20];
tdg q[20];
cx q[0], q[20];
cx q[0], q[10];
tdg q[10];
cx q[0], q[10];
s q[0];
s q[10];
t q[20];
h q[20];