OPENQASM 2.0;
include "qelib1.inc";
qreg q[32];
h q[0];
cx q[1], q[0];
rzk(24576) q[0];
cx q[1], q[0];
rzk(8192) q[0];
rzk(8192) q[1];
h q[1];
cx q[2], q[0];
rzk(28672) q[0];
cx q[2], q[0];
rzk(4096) q[0];
rzk(4096) q[2];
cx q[2], q[1];
rzk(24576) q[1];
cx q[2], q[1];
rzk(8192) q[1];
rzk(8192) q[2];
h q[2];
cx q[3], q[0];
rzk(30720) q[0];
cx q[3], q[0];
rzk(2048) q[0];
rzk(2048) q[3];
cx q[3], q[1];
rzk(28672) q[1];
cx q[3], q[1];
rzk(4096) q[1];
rzk(4096) q[3];
cx q[3], q[2];
rzk(24576) q[2];
cx q[3], q[2];
rzk(8192) q[2];
rzk(8192) q[3];
h q[3];
cx q[4], q[0];
rzk(31744) q[0];
cx q[4], q[0];
rzk(1024) q[0];
rzk(1024) q[4];
cx q[4], q[1];
rzk(30720) q[1];
cx q[4], q[1];
rzk(2048) q[1];
rzk(2048) q[4];
cx q[4], q[2];
rzk(28672) q[2];
cx q[4], q[2];
rzk(4096) q[2];
rzk(4096) q[4];
cx q[4], q[3];
rzk(24576) q[3];
cx q[4], q[3];
rzk(8192) q[3];
rzk(8192) q[4];
h q[4];
cx q[5], q[0];
rzk(32256) q[0];
cx q[5], q[0];
rzk(512) q[0];
rzk(512) q[5];
cx q[5], q[1];
rzk(31744) q[1];
cx q[5], q[1];
rzk(1024) q[1];
rzk(1024) q[5];
cx q[5], q[2];
rzk(30720) q[2];
cx q[5], q[2];
rzk(2048) q[2];
rzk(2048) q[5];
cx q[5], q[3];
rzk(28672) q[3];
cx q[5], q[3];
rzk(4096) q[3];
rzk(4096) q[5];
cx q[5], q[4];
rzk(24576) q[4];
cx q[5], q[4];
rzk(8192) q[4];
rzk(8192) q[5];
h q[5];
cx q[6], q[0];
rzk(32512) q[0];
cx q[6], q[0];
rzk(256) q[0];
rzk(256) q[6];
cx q[6], q[1];
rzk(32256) q[1];
cx q[6], q[1];
rzk(512) q[1];
rzk(512) q[6];
cx q[6], q[2];
rzk(31744) q[2];
cx q[6], q[2];
rzk(1024) q[2];
rzk(1024) q[6];
cx q[6], q[3];
rzk(30720) q[3];
cx q[6], q[3];
rzk(2048) q[3];
rzk(2048) q[6];
cx q[6], q[4];
rzk(28672) q[4];
cx q[6], q[4];
rzk(4096) q[4];
rzk(4096) q[6];
cx q[6], q[5];
rzk(24576) q[5];
cx q[6], q[5];
rzk(8192) q[5];
rzk(8192) q[6];
h q[6];
cx q[7], q[0];
rzk(32640) q[0];
cx q[7], q[0];
rzk(128) q[0];
rzk(128) q[7];
cx q[7], q[1];
rzk(32512) q[1];
cx q[7], q[1];
rzk(256) q[1];
rzk(256) q[7];
cx q[7], q[2];
rzk(32256) q[2];
cx q[7], q[2];
rzk(512) q[2];
rzk(512) q[7];
cx q[7], q[3];
rzk(31744) q[3];
cx q[7], q[3];
rzk(1024) q[3];
rzk(1024) q[7];
cx q[7], q[4];
rzk(30720) q[4];
cx q[7], q[4];
rzk(2048) q[4];
rzk(2048) q[7];
cx q[7], q[5];
rzk(28672) q[5];
cx q[7], q[5];
rzk(4096) q[5];
rzk(4096) q[7];
cx q[7], q[6];
rzk(24576) q[6];
cx q[7], q[6];
rzk(8192) q[6];
rzk(8192) q[7];
h q[7];
cx q[8], q[0];
rzk(32704) q[0];
cx q[8], q[0];
rzk(64) q[0];
rzk(64) q[8];
cx q[8], q[1];
rzk(32640) q[1];
cx q[8], q[1];
rzk(128) q[1];
rzk(128) q[8];
cx q[8], q[2];
rzk(32512) q[2];
cx q[8], q[2];
rzk(256) q[2];
rzk(256) q[8];
cx q[8], q[3];
rzk(32256) q[3];
cx q[8], q[3];
rzk(512) q[3];
rzk(512) q[8];
cx q[8], q[4];
rzk(31744) q[4];
cx q[8], q[4];
rzk(1024) q[4];
rzk(1024) q[8];
cx q[8], q[5];
rzk(30720) q[5];
cx q[8], q[5];
rzk(2048) q[5];
rzk(2048) q[8];
cx q[8], q[6];
rzk(28672) q[6];
cx q[8], q[6];
rzk(4096) q[6];
rzk(4096) q[8];
cx q[8], q[7];
rzk(24576) q[7];
cx q[8], q[7];
rzk(8192) q[7];
rzk(8192) q[8];
h q[8];
cx q[9], q[0];
rzk(32736) q[0];
cx q[9], q[0];
rzk(32) q[0];
rzk(32) q[9];
cx q[9], q[1];
rzk(32704) q[1];
cx q[9], q[1];
rzk(64) q[1];
rzk(64) q[9];
cx q[9], q[2];
rzk(32640) q[2];
cx q[9], q[2];
rzk(128) q[2];
rzk(128) q[9];
cx q[9], q[3];
rzk(32512) q[3];
cx q[9], q[3];
rzk(256) q[3];
rzk(256) q[9];
cx q[9], q[4];
rzk(32256) q[4];
cx q[9], q[4];
rzk(512) q[4];
rzk(512) q[9];
cx q[9], q[5];
rzk(31744) q[5];
cx q[9], q[5];
rzk(1024) q[5];
rzk(1024) q[9];
cx q[9], q[6];
rzk(30720) q[6];
cx q[9], q[6];
rzk(2048) q[6];
rzk(2048) q[9];
cx q[9], q[7];
rzk(28672) q[7];
cx q[9], q[7];
rzk(4096) q[7];
rzk(4096) q[9];
cx q[9], q[8];
rzk(24576) q[8];
cx q[9], q[8];
rzk(8192) q[8];
rzk(8192) q[9];
h q[9];
cx q[10], q[0];
rzk(32752) q[0];
cx q[10], q[0];
rzk(16) q[0];
rzk(16) q[10];
cx q[10], q[1];
rzk(32736) q[1];
cx q[10], q[1];
rzk(32) q[1];
rzk(32) q[10];
cx q[10], q[2];
rzk(32704) q[2];
cx q[10], q[2];
rzk(64) q[2];
rzk(64) q[10];
cx q[10], q[3];
rzk(32640) q[3];
cx q[10], q[3];
rzk(128) q[3];
rzk(128) q[10];
cx q[10], q[4];
rzk(32512) q[4];
cx q[10], q[4];
rzk(256) q[4];
rzk(256) q[10];
cx q[10], q[5];
rzk(32256) q[5];
cx q[10], q[5];
rzk(512) q[5];
rzk(512) q[10];
cx q[10], q[6];
rzk(31744) q[6];
cx q[10], q[6];
rzk(1024) q[6];
rzk(1024) q[10];
cx q[10], q[7];
rzk(30720) q[7];
cx q[10], q[7];
rzk(2048) q[7];
rzk(2048) q[10];
cx q[10], q[8];
rzk(28672) q[8];
cx q[10], q[8];
rzk(4096) q[8];
rzk(4096) q[10];
cx q[10], q[9];
rzk(24576) q[9];
cx q[10], q[9];
rzk(8192) q[9];
rzk(8192) q[10];
h q[10];
cx q[11], q[0];
rzk(32760) q[0];
cx q[11], q[0];
rzk(8) q[0];
rzk(8) q[11];
cx q[11], q[1];
rzk(32752) q[1];
cx q[11], q[1];
rzk(16) q[1];
rzk(16) q[11];
cx q[11], q[2];
rzk(32736) q[2];
cx q[11], q[2];
rzk(32) q[2];
rzk(32) q[11];
cx q[11], q[3];
rzk(32704) q[3];
cx q[11], q[3];
rzk(64) q[3];
rzk(64) q[11];
cx q[11], q[4];
rzk(32640) q[4];
cx q[11], q[4];
rzk(128) q[4];
rzk(128) q[11];
cx q[11], q[5];
rzk(32512) q[5];
cx q[11], q[5];
rzk(256) q[5];
rzk(256) q[11];
cx q[11], q[6];
rzk(32256) q[6];
cx q[11], q[6];
rzk(512) q[6];
rzk(512) q[11];
cx q[11], q[7];
rzk(31744) q[7];
cx q[11], q[7];
rzk(1024) q[7];
rzk(1024) q[11];
cx q[11], q[8];
rzk(30720) q[8];
cx q[11], q[8];
rzk(2048) q[8];
rzk(2048) q[11];
cx q[11], q[9];
rzk(28672) q[9];
cx q[11], q[9];
rzk(4096) q[9];
rzk(4096) q[11];
cx q[11], q[10];
rzk(24576) q[10];
cx q[11], q[10];
rzk(8192) q[10];
rzk(8192) q[11];
h q[11];
cx q[12], q[0];
rzk(32764) q[0];
cx q[12], q[0];
rzk(4) q[0];
rzk(4) q[12];
cx q[12], q[1];
rzk(32760) q[1];
cx q[12], q[1];
rzk(8) q[1];
rzk(8) q[12];
cx q[12], q[2];
rzk(32752) q[2];
cx q[12], q[2];
rzk(16) q[2];
rzk(16) q[12];
cx q[12], q[3];
rzk(32736) q[3];
cx q[12], q[3];
rzk(32) q[3];
rzk(32) q[12];
cx q[12], q[4];
rzk(32704) q[4];
cx q[12], q[4];
rzk(64) q[4];
rzk(64) q[12];
cx q[12], q[5];
rzk(32640) q[5];
cx q[12], q[5];
rzk(128) q[5];
rzk(128) q[12];
cx q[12], q[6];
rzk(32512) q[6];
cx q[12], q[6];
rzk(256) q[6];
rzk(256) q[12];
cx q[12], q[7];
rzk(32256) q[7];
cx q[12], q[7];
rzk(512) q[7];
rzk(512) q[12];
cx q[12], q[8];
rzk(31744) q[8];
cx q[12], q[8];
rzk(1024) q[8];
rzk(1024) q[12];
cx q[12], q[9];
rzk(30720) q[9];
cx q[12], q[9];
rzk(2048) q[9];
rzk(2048) q[12];
cx q[12], q[10];
rzk(28672) q[10];
cx q[12], q[10];
rzk(4096) q[10];
rzk(4096) q[12];
cx q[12], q[11];
rzk(24576) q[11];
cx q[12], q[11];
rzk(8192) q[11];
rzk(8192) q[12];
h q[12];
cx q[13], q[1];
rzk(32764) q[1];
cx q[13], q[1];
rzk(4) q[1];
rzk(4) q[13];
cx q[13], q[2];
rzk(32760) q[2];
cx q[13], q[2];
rzk(8) q[2];
rzk(8) q[13];
cx q[13], q[3];
rzk(32752) q[3];
cx q[13], q[3];
rzk(16) q[3];
rzk(16) q[13];
cx q[13], q[4];
rzk(32736) q[4];
cx q[13], q[4];
rzk(32) q[4];
rzk(32) q[13];
cx q[13], q[5];
rzk(32704) q[5];
cx q[13], q[5];
rzk(64) q[5];
rzk(64) q[13];
cx q[13], q[6];
rzk(32640) q[6];
cx q[13], q[6];
rzk(128) q[6];
rzk(128) q[13];
cx q[13], q[7];
rzk(32512) q[7];
cx q[13], q[7];
rzk(256) q[7];
rzk(256) q[13];
cx q[13], q[8];
rzk(32256) q[8];
cx q[13], q[8];
rzk(512) q[8];
rzk(512) q[13];
cx q[13], q[9];
rzk(31744) q[9];
cx q[13], q[9];
rzk(1024) q[9];
rzk(1024) q[13];
cx q[13], q[10];
rzk(30720) q[10];
cx q[13], q[10];
rzk(2048) q[10];
rzk(2048) q[13];
cx q[13], q[11];
rzk(28672) q[11];
cx q[13], q[11];
rzk(4096) q[11];
rzk(4096) q[13];
cx q[13], q[12];
rzk(24576) q[12];
cx q[13], q[12];
rzk(8192) q[12];
rzk(8192) q[13];
h q[13];
cx q[14], q[2];
rzk(32764) q[2];
cx q[14], q[2];
rzk(4) q[2];
rzk(4) q[14];
cx q[14], q[3];
rzk(32760) q[3];
cx q[14], q[3];
rzk(8) q[3];
rzk(8) q[14];
cx q[14], q[4];
rzk(32752) q[4];
cx q[14], q[4];
rzk(16) q[4];
rzk(16) q[14];
cx q[14], q[5];
rzk(32736) q[5];
cx q[14], q[5];
rzk(32) q[5];
rzk(32) q[14];
cx q[14], q[6];
rzk(32704) q[6];
cx q[14], q[6];
rzk(64) q[6];
rzk(64) q[14];
cx q[14], q[7];
rzk(32640) q[7];
cx q[14], q[7];
rzk(128) q[7];
rzk(128) q[14];
cx q[14], q[8];
rzk(32512) q[8];
cx q[14], q[8];
rzk(256) q[8];
rzk(256) q[14];
cx q[14], q[9];
rzk(32256) q[9];
cx q[14], q[9];
rzk(512) q[9];
rzk(512) q[14];
cx q[14], q[10];
rzk(31744) q[10];
cx q[14], q[10];
rzk(1024) q[10];
rzk(1024) q[14];
cx q[14], q[11];
rzk(30720) q[11];
cx q[14], q[11];
rzk(2048) q[11];
rzk(2048) q[14];
cx q[14], q[12];
rzk(28672) q[12];
cx q[14], q[12];
rzk(4096) q[12];
rzk(4096) q[14];
cx q[14], q[13];
rzk(24576) q[13];
cx q[14], q[13];
rzk(8192) q[13];
rzk(8192) q[14];
h q[14];
cx q[15], q[3];
rzk(32764) q[3];
cx q[15], q[3];
rzk(4) q[3];
rzk(4) q[15];
cx q[15], q[4];
rzk(32760) q[4];
cx q[15], q[4];
rzk(8) q[4];
rzk(8) q[15];
cx q[15], q[5];
rzk(32752) q[5];
cx q[15], q[5];
rzk(16) q[5];
rzk(16) q[15];
cx q[15], q[6];
rzk(32736) q[6];
cx q[15], q[6];
rzk(32) q[6];
rzk(32) q[15];
cx q[15], q[7];
rzk(32704) q[7];
cx q[15], q[7];
rzk(64) q[7];
rzk(64) q[15];
cx q[15], q[8];
rzk(32640) q[8];
cx q[15], q[8];
rzk(128) q[8];
rzk(128) q[15];
cx q[15], q[9];
rzk(32512) q[9];
cx q[15], q[9];
rzk(256) q[9];
rzk(256) q[15];
cx q[15], q[10];
rzk(32256) q[10];
cx q[15], q[10];
rzk(512) q[10];
rzk(512) q[15];
cx q[15], q[11];
rzk(31744) q[11];
cx q[15], q[11];
rzk(1024) q[11];
rzk(1024) q[15];
cx q[15], q[12];
rzk(30720) q[12];
cx q[15], q[12];
rzk(2048) q[12];
rzk(2048) q[15];
cx q[15], q[13];
rzk(28672) q[13];
cx q[15], q[13];
rzk(4096) q[13];
rzk(4096) q[15];
cx q[15], q[14];
rzk(24576) q[14];
cx q[15], q[14];
rzk(8192) q[14];
rzk(8192) q[15];
h q[15];
cx q[16], q[4];
rzk(32764) q[4];
cx q[16], q[4];
rzk(4) q[4];
rzk(4) q[16];
cx q[16], q[5];
rzk(32760) q[5];
cx q[16], q[5];
rzk(8) q[5];
rzk(8) q[16];
cx q[16], q[6];
rzk(32752) q[6];
cx q[16], q[6];
rzk(16) q[6];
rzk(16) q[16];
cx q[16], q[7];
rzk(32736) q[7];
cx q[16], q[7];
rzk(32) q[7];
rzk(32) q[16];
cx q[16], q[8];
rzk(32704) q[8];
cx q[16], q[8];
rzk(64) q[8];
rzk(64) q[16];
cx q[16], q[9];
rzk(32640) q[9];
cx q[16], q[9];
rzk(128) q[9];
rzk(128) q[16];
cx q[16], q[10];
rzk(32512) q[10];
cx q[16], q[10];
rzk(256) q[10];
rzk(256) q[16];
cx q[16], q[11];
rzk(32256) q[11];
cx q[16], q[11];
rzk(512) q[11];
rzk(512) q[16];
cx q[16], q[12];
rzk(31744) q[12];
cx q[16], q[12];
rzk(1024) q[12];
rzk(1024) q[16];
cx q[16], q[13];
rzk(30720) q[13];
cx q[16], q[13];
rzk(2048) q[13];
rzk(2048) q[16];
cx q[16], q[14];
rzk(28672) q[14];
cx q[16], q[14];
rzk(4096) q[14];
rzk(4096) q[16];
cx q[16], q[15];
rzk(24576) q[15];
cx q[16], q[15];
rzk(8192) q[15];
rzk(8192) q[16];
h q[16];
cx q[17], q[5];
rzk(32764) q[5];
cx q[17], q[5];
rzk(4) q[5];
rzk(4) q[17];
cx q[17], q[6];
rzk(32760) q[6];
cx q[17], q[6];
rzk(8) q[6];
rzk(8) q[17];
cx q[17], q[7];
rzk(32752) q[7];
cx q[17], q[7];
rzk(16) q[7];
rzk(16) q[17];
cx q[17], q[8];
rzk(32736) q[8];
cx q[17], q[8];
rzk(32) q[8];
rzk(32) q[17];
cx q[17], q[9];
rzk(32704) q[9];
cx q[17], q[9];
rzk(64) q[9];
rzk(64) q[17];
cx q[17], q[10];
rzk(32640) q[10];
cx q[17], q[10];
rzk(128) q[10];
rzk(128) q[17];
cx q[17], q[11];
rzk(32512) q[11];
cx q[17], q[11];
rzk(256) q[11];
rzk(256) q[17];
cx q[17], q[12];
rzk(32256) q[12];
cx q[17], q[12];
rzk(512) q[12];
rzk(512) q[17];
cx q[17], q[13];
rzk(31744) q[13];
cx q[17], q[13];
rzk(1024) q[13];
rzk(1024) q[17];
cx q[17], q[14];
rzk(30720) q[14];
cx q[17], q[14];
rzk(2048) q[14];
rzk(2048) q[17];
cx q[17], q[15];
rzk(28672) q[15];
cx q[17], q[15];
rzk(4096) q[15];
rzk(4096) q[17];
cx q[17], q[16];
rzk(24576) q[16];
cx q[17], q[16];
rzk(8192) q[16];
rzk(8192) q[17];
h q[17];
cx q[18], q[6];
rzk(32764) q[6];
cx q[18], q[6];
rzk(4) q[6];
rzk(4) q[18];
cx q[18], q[7];
rzk(32760) q[7];
cx q[18], q[7];
rzk(8) q[7];
rzk(8) q[18];
cx q[18], q[8];
rzk(32752) q[8];
cx q[18], q[8];
rzk(16) q[8];
rzk(16) q[18];
cx q[18], q[9];
rzk(32736) q[9];
cx q[18], q[9];
rzk(32) q[9];
rzk(32) q[18];
cx q[18], q[10];
rzk(32704) q[10];
cx q[18], q[10];
rzk(64) q[10];
rzk(64) q[18];
cx q[18], q[11];
rzk(32640) q[11];
cx q[18], q[11];
rzk(128) q[11];
rzk(128) q[18];
cx q[18], q[12];
rzk(32512) q[12];
cx q[18], q[12];
rzk(256) q[12];
rzk(256) q[18];
cx q[18], q[13];
rzk(32256) q[13];
cx q[18], q[13];
rzk(512) q[13];
rzk(512) q[18];
cx q[18], q[14];
rzk(31744) q[14];
cx q[18], q[14];
rzk(1024) q[14];
rzk(1024) q[18];
cx q[18], q[15];
rzk(30720) q[15];
cx q[18], q[15];
rzk(2048) q[15];
rzk(2048) q[18];
cx q[18], q[16];
rzk(28672) q[16];
cx q[18], q[16];
rzk(4096) q[16];
rzk(4096) q[18];
cx q[18], q[17];
rzk(24576) q[17];
cx q[18], q[17];
rzk(8192) q[17];
rzk(8192) q[18];
h q[18];
cx q[19], q[7];
rzk(32764) q[7];
cx q[19], q[7];
rzk(4) q[7];
rzk(4) q[19];
cx q[19], q[8];
rzk(32760) q[8];
cx q[19], q[8];
rzk(8) q[8];
rzk(8) q[19];
cx q[19], q[9];
rzk(32752) q[9];
cx q[19], q[9];
rzk(16) q[9];
rzk(16) q[19];
cx q[19], q[10];
rzk(32736) q[10];
cx q[19], q[10];
rzk(32) q[10];
rzk(32) q[19];
cx q[19], q[11];
rzk(32704) q[11];
cx q[19], q[11];
rzk(64) q[11];
rzk(64) q[19];
cx q[19], q[12];
rzk(32640) q[12];
cx q[19], q[12];
rzk(128) q[12];
rzk(128) q[19];
cx q[19], q[13];
rzk(32512) q[13];
cx q[19], q[13];
rzk(256) q[13];
rzk(256) q[19];
cx q[19], q[14];
rzk(32256) q[14];
cx q[19], q[14];
rzk(512) q[14];
rzk(512) q[19];
cx q[19], q[15];
rzk(31744) q[15];
cx q[19], q[15];
rzk(1024) q[15];
rzk(1024) q[19];
cx q[19], q[16];
rzk(30720) q[16];
cx q[19], q[16];
rzk(2048) q[16];
rzk(2048) q[19];
cx q[19], q[17];
rzk(28672) q[17];
cx q[19], q[17];
rzk(4096) q[17];
rzk(4096) q[19];
cx q[19], q[18];
rzk(24576) q[18];
cx q[19], q[18];
rzk(8192) q[18];
rzk(8192) q[19];
h q[19];
cx q[20], q[8];
rzk(32764) q[8];
cx q[20], q[8];
rzk(4) q[8];
rzk(4) q[20];
cx q[20], q[9];
rzk(32760) q[9];
cx q[20], q[9];
rzk(8) q[9];
rzk(8) q[20];
cx q[20], q[10];
rzk(32752) q[10];
cx q[20], q[10];
rzk(16) q[10];
rzk(16) q[20];
cx q[20], q[11];
rzk(32736) q[11];
cx q[20], q[11];
rzk(32) q[11];
rzk(32) q[20];
cx q[20], q[12];
rzk(32704) q[12];
cx q[20], q[12];
rzk(64) q[12];
rzk(64) q[20];
cx q[20], q[13];
rzk(32640) q[13];
cx q[20], q[13];
rzk(128) q[13];
rzk(128) q[20];
cx q[20], q[14];
rzk(32512) q[14];
cx q[20], q[14];
rzk(256) q[14];
rzk(256) q[20];
cx q[20], q[15];
rzk(32256) q[15];
cx q[20], q[15];
rzk(512) q[15];
rzk(512) q[20];
cx q[20], q[16];
rzk(31744) q[16];
cx q[20], q[16];
rzk(1024) q[16];
rzk(1024) q[20];
cx q[20], q[17];
rzk(30720) q[17];
cx q[20], q[17];
rzk(2048) q[17];
rzk(2048) q[20];
cx q[20], q[18];
rzk(28672) q[18];
cx q[20], q[18];
rzk(4096) q[18];
rzk(4096) q[20];
cx q[20], q[19];
rzk(24576) q[19];
cx q[20], q[19];
rzk(8192) q[19];
rzk(8192) q[20];
h q[20];
cx q[21], q[9];
rzk(32764) q[9];
cx q[21], q[9];
rzk(4) q[9];
rzk(4) q[21];
cx q[21], q[10];
rzk(32760) q[10];
cx q[21], q[10];
rzk(8) q[10];
rzk(8) q[21];
cx q[21], q[11];
rzk(32752) q[11];
cx q[21], q[11];
rzk(16) q[11];
rzk(16) q[21];
cx q[21], q[12];
rzk(32736) q[12];
cx q[21], q[12];
rzk(32) q[12];
rzk(32) q[21];
cx q[21], q[13];
rzk(32704) q[13];
cx q[21], q[13];
rzk(64) q[13];
rzk(64) q[21];
cx q[21], q[14];
rzk(32640) q[14];
cx q[21], q[14];
rzk(128) q[14];
rzk(128) q[21];
cx q[21], q[15];
rzk(32512) q[15];
cx q[21], q[15];
rzk(256) q[15];
rzk(256) q[21];
cx q[21], q[16];
rzk(32256) q[16];
cx q[21], q[16];
rzk(512) q[16];
rzk(512) q[21];
cx q[21], q[17];
rzk(31744) q[17];
cx q[21], q[17];
rzk(1024) q[17];
rzk(1024) q[21];
cx q[21], q[18];
rzk(30720) q[18];
cx q[21], q[18];
rzk(2048) q[18];
rzk(2048) q[21];
cx q[21], q[19];
rzk(28672) q[19];
cx q[21], q[19];
rzk(4096) q[19];
rzk(4096) q[21];
cx q[21], q[20];
rzk(24576) q[20];
cx q[21], q[20];
rzk(8192) q[20];
rzk(8192) q[21];
h q[21];
cx q[22], q[10];
rzk(32764) q[10];
cx q[22], q[10];
rzk(4) q[10];
rzk(4) q[22];
cx q[22], q[11];
rzk(32760) q[11];
cx q[22], q[11];
rzk(8) q[11];
rzk(8) q[22];
cx q[22], q[12];
rzk(32752) q[12];
cx q[22], q[12];
rzk(16) q[12];
rzk(16) q[22];
cx q[22], q[13];
rzk(32736) q[13];
cx q[22], q[13];
rzk(32) q[13];
rzk(32) q[22];
cx q[22], q[14];
rzk(32704) q[14];
cx q[22], q[14];
rzk(64) q[14];
rzk(64) q[22];
cx q[22], q[15];
rzk(32640) q[15];
cx q[22], q[15];
rzk(128) q[15];
rzk(128) q[22];
cx q[22], q[16];
rzk(32512) q[16];
cx q[22], q[16];
rzk(256) q[16];
rzk(256) q[22];
cx q[22], q[17];
rzk(32256) q[17];
cx q[22], q[17];
rzk(512) q[17];
rzk(512) q[22];
cx q[22], q[18];
rzk(31744) q[18];
cx q[22], q[18];
rzk(1024) q[18];
rzk(1024) q[22];
cx q[22], q[19];
rzk(30720) q[19];
cx q[22], q[19];
rzk(2048) q[19];
rzk(2048) q[22];
cx q[22], q[20];
rzk(28672) q[20];
cx q[22], q[20];
rzk(4096) q[20];
rzk(4096) q[22];
cx q[22], q[21];
rzk(24576) q[21];
cx q[22], q[21];
rzk(8192) q[21];
rzk(8192) q[22];
h q[22];
cx q[23], q[11];
rzk(32764) q[11];
cx q[23], q[11];
rzk(4) q[11];
rzk(4) q[23];
cx q[23], q[12];
rzk(32760) q[12];
cx q[23], q[12];
rzk(8) q[12];
rzk(8) q[23];
cx q[23], q[13];
rzk(32752) q[13];
cx q[23], q[13];
rzk(16) q[13];
rzk(16) q[23];
cx q[23], q[14];
rzk(32736) q[14];
cx q[23], q[14];
rzk(32) q[14];
rzk(32) q[23];
cx q[23], q[15];
rzk(32704) q[15];
cx q[23], q[15];
rzk(64) q[15];
rzk(64) q[23];
cx q[23], q[16];
rzk(32640) q[16];
cx q[23], q[16];
rzk(128) q[16];
rzk(128) q[23];
cx q[23], q[17];
rzk(32512) q[17];
cx q[23], q[17];
rzk(256) q[17];
rzk(256) q[23];
cx q[23], q[18];
rzk(32256) q[18];
cx q[23], q[18];
rzk(512) q[18];
rzk(512) q[23];
cx q[23], q[19];
rzk(31744) q[19];
cx q[23], q[19];
rzk(1024) q[19];
rzk(1024) q[23];
cx q[23], q[20];
rzk(30720) q[20];
cx q[23], q[20];
rzk(2048) q[20];
rzk(2048) q[23];
cx q[23], q[21];
rzk(28672) q[21];
cx q[23], q[21];
rzk(4096) q[21];
rzk(4096) q[23];
cx q[23], q[22];
rzk(24576) q[22];
cx q[23], q[22];
rzk(8192) q[22];
rzk(8192) q[23];
h q[23];
cx q[24], q[12];
rzk(32764) q[12];
cx q[24], q[12];
rzk(4) q[12];
rzk(4) q[24];
cx q[24], q[13];
rzk(32760) q[13];
cx q[24], q[13];
rzk(8) q[13];
rzk(8) q[24];
cx q[24], q[14];
rzk(32752) q[14];
cx q[24], q[14];
rzk(16) q[14];
rzk(16) q[24];
cx q[24], q[15];
rzk(32736) q[15];
cx q[24], q[15];
rzk(32) q[15];
rzk(32) q[24];
cx q[24], q[16];
rzk(32704) q[16];
cx q[24], q[16];
rzk(64) q[16];
rzk(64) q[24];
cx q[24], q[17];
rzk(32640) q[17];
cx q[24], q[17];
rzk(128) q[17];
rzk(128) q[24];
cx q[24], q[18];
rzk(32512) q[18];
cx q[24], q[18];
rzk(256) q[18];
rzk(256) q[24];
cx q[24], q[19];
rzk(32256) q[19];
cx q[24], q[19];
rzk(512) q[19];
rzk(512) q[24];
cx q[24], q[20];
rzk(31744) q[20];
cx q[24], q[20];
rzk(1024) q[20];
rzk(1024) q[24];
cx q[24], q[21];
rzk(30720) q[21];
cx q[24], q[21];
rzk(2048) q[21];
rzk(2048) q[24];
cx q[24], q[22];
rzk(28672) q[22];
cx q[24], q[22];
rzk(4096) q[22];
rzk(4096) q[24];
cx q[24], q[23];
rzk(24576) q[23];
cx q[24], q[23];
rzk(8192) q[23];
rzk(8192) q[24];
h q[24];
cx q[25], q[13];
rzk(32764) q[13];
cx q[25], q[13];
rzk(4) q[13];
rzk(4) q[25];
cx q[25], q[14];
rzk(32760) q[14];
cx q[25], q[14];
rzk(8) q[14];
rzk(8) q[25];
cx q[25], q[15];
rzk(32752) q[15];
cx q[25], q[15];
rzk(16) q[15];
rzk(16) q[25];
cx q[25], q[16];
rzk(32736) q[16];
cx q[25], q[16];
rzk(32) q[16];
rzk(32) q[25];
cx q[25], q[17];
rzk(32704) q[17];
cx q[25], q[17];
rzk(64) q[17];
rzk(64) q[25];
cx q[25], q[18];
rzk(32640) q[18];
cx q[25], q[18];
rzk(128) q[18];
rzk(128) q[25];
cx q[25], q[19];
rzk(32512) q[19];
cx q[25], q[19];
rzk(256) q[19];
rzk(256) q[25];
cx q[25], q[20];
rzk(32256) q[20];
cx q[25], q[20];
rzk(512) q[20];
rzk(512) q[25];
cx q[25], q[21];
rzk(31744) q[21];
cx q[25], q[21];
rzk(1024) q[21];
rzk(1024) q[25];
cx q[25], q[22];
rzk(30720) q[22];
cx q[25], q[22];
rzk(2048) q[22];
rzk(2048) q[25];
cx q[25], q[23];
rzk(28672) q[23];
cx q[25], q[23];
rzk(4096) q[23];
rzk(4096) q[25];
cx q[25], q[24];
rzk(24576) q[24];
cx q[25], q[24];
rzk(8192) q[24];
rzk(8192) q[25];
h q[25];
cx q[26], q[14];
rzk(32764) q[14];
cx q[26], q[14];
rzk(4) q[14];
rzk(4) q[26];
cx q[26], q[15];
rzk(32760) q[15];
cx q[26], q[15];
rzk(8) q[15];
rzk(8) q[26];
cx q[26], q[16];
rzk(32752) q[16];
cx q[26], q[16];
rzk(16) q[16];
rzk(16) q[26];
cx q[26], q[17];
rzk(32736) q[17];
cx q[26], q[17];
rzk(32) q[17];
rzk(32) q[26];
cx q[26], q[18];
rzk(32704) q[18];
cx q[26], q[18];
rzk(64) q[18];
rzk(64) q[26];
cx q[26], q[19];
rzk(32640) q[19];
cx q[26], q[19];
rzk(128) q[19];
rzk(128) q[26];
cx q[26], q[20];
rzk(32512) q[20];
cx q[26], q[20];
rzk(256) q[20];
rzk(256) q[26];
cx q[26], q[21];
rzk(32256) q[21];
cx q[26], q[21];
rzk(512) q[21];
rzk(512) q[26];
cx q[26], q[22];
rzk(31744) q[22];
cx q[26], q[22];
rzk(1024) q[22];
rzk(1024) q[26];
cx q[26], q[23];
rzk(30720) q[23];
cx q[26], q[23];
rzk(2048) q[23];
rzk(2048) q[26];
cx q[26], q[24];
rzk(28672) q[24];
cx q[26], q[24];
rzk(4096) q[24];
rzk(4096) q[26];
cx q[26], q[25];
rzk(24576) q[25];
cx q[26], q[25];
rzk(8192) q[25];
rzk(8192) q[26];
h q[26];
cx q[27], q[15];
rzk(32764) q[15];
cx q[27], q[15];
rzk(4) q[15];
rzk(4) q[27];
cx q[27], q[16];
rzk(32760) q[16];
cx q[27], q[16];
rzk(8) q[16];
rzk(8) q[27];
cx q[27], q[17];
rzk(32752) q[17];
cx q[27], q[17];
rzk(16) q[17];
rzk(16) q[27];
cx q[27], q[18];
rzk(32736) q[18];
cx q[27], q[18];
rzk(32) q[18];
rzk(32) q[27];
cx q[27], q[19];
rzk(32704) q[19];
cx q[27], q[19];
rzk(64) q[19];
rzk(64) q[27];
cx q[27], q[20];
rzk(32640) q[20];
cx q[27], q[20];
rzk(128) q[20];
rzk(128) q[27];
cx q[27], q[21];
rzk(32512) q[21];
cx q[27], q[21];
rzk(256) q[21];
rzk(256) q[27];
cx q[27], q[22];
rzk(32256) q[22];
cx q[27], q[22];
rzk(512) q[22];
rzk(512) q[27];
cx q[27], q[23];
rzk(31744) q[23];
cx q[27], q[23];
rzk(1024) q[23];
rzk(1024) q[27];
cx q[27], q[24];
rzk(30720) q[24];
cx q[27], q[24];
rzk(2048) q[24];
rzk(2048) q[27];
cx q[27], q[25];
rzk(28672) q[25];
cx q[27], q[25];
rzk(4096) q[25];
rzk(4096) q[27];
cx q[27], q[26];
rzk(24576) q[26];
cx q[27], q[26];
rzk(8192) q[26];
rzk(8192) q[27];
h q[27];
cx q[28], q[16];
rzk(32764) q[16];
cx q[28], q[16];
rzk(4) q[16];
rzk(4) q[28];
cx q[28], q[17];
rzk(32760) q[17];
cx q[28], q[17];
rzk(8) q[17];
rzk(8) q[28];
cx q[28], q[18];
rzk(32752) q[18];
cx q[28], q[18];
rzk(16) q[18];
rzk(16) q[28];
cx q[28], q[19];
rzk(32736) q[19];
cx q[28], q[19];
rzk(32) q[19];
rzk(32) q[28];
cx q[28], q[20];
rzk(32704) q[20];
cx q[28], q[20];
rzk(64) q[20];
rzk(64) q[28];
cx q[28], q[21];
rzk(32640) q[21];
cx q[28], q[21];
rzk(128) q[21];
rzk(128) q[28];
cx q[28], q[22];
rzk(32512) q[22];
cx q[28], q[22];
rzk(256) q[22];
rzk(256) q[28];
cx q[28], q[23];
rzk(32256) q[23];
cx q[28], q[23];
rzk(512) q[23];
rzk(512) q[28];
cx q[28], q[24];
rzk(31744) q[24];
cx q[28], q[24];
rzk(1024) q[24];
rzk(1024) q[28];
cx q[28], q[25];
rzk(30720) q[25];
cx q[28], q[25];
rzk(2048) q[25];
rzk(2048) q[28];
cx q[28], q[26];
rzk(28672) q[26];
cx q[28], q[26];
rzk(4096) q[26];
rzk(4096) q[28];
cx q[28], q[27];
rzk(24576) q[27];
cx q[28], q[27];
rzk(8192) q[27];
rzk(8192) q[28];
h q[28];
cx q[29], q[17];
rzk(32764) q[17];
cx q[29], q[17];
rzk(4) q[17];
rzk(4) q[29];
cx q[29], q[18];
rzk(32760) q[18];
cx q[29], q[18];
rzk(8) q[18];
rzk(8) q[29];
cx q[29], q[19];
rzk(32752) q[19];
cx q[29], q[19];
rzk(16) q[19];
rzk(16) q[29];
cx q[29], q[20];
rzk(32736) q[20];
cx q[29], q[20];
rzk(32) q[20];
rzk(32) q[29];
cx q[29], q[21];
rzk(32704) q[21];
cx q[29], q[21];
rzk(64) q[21];
rzk(64) q[29];
cx q[29], q[22];
rzk(32640) q[22];
cx q[29], q[22];
rzk(128) q[22];
rzk(128) q[29];
cx q[29], q[23];
rzk(32512) q[23];
cx q[29], q[23];
rzk(256) q[23];
rzk(256) q[29];
cx q[29], q[24];
rzk(32256) q[24];
cx q[29], q[24];
rzk(512) q[24];
rzk(512) q[29];
cx q[29], q[25];
rzk(31744) q[25];
cx q[29], q[25];
rzk(1024) q[25];
rzk(1024) q[29];
cx q[29], q[26];
rzk(30720) q[26];
cx q[29], q[26];
rzk(2048) q[26];
rzk(2048) q[29];
cx q[29], q[27];
rzk(28672) q[27];
cx q[29], q[27];
rzk(4096) q[27];
rzk(4096) q[29];
cx q[29], q[28];
rzk(24576) q[28];
cx q[29], q[28];
rzk(8192) q[28];
rzk(8192) q[29];
h q[29];
cx q[30], q[18];
rzk(32764) q[18];
cx q[30], q[18];
rzk(4) q[18];
rzk(4) q[30];
cx q[30], q[19];
rzk(32760) q[19];
cx q[30], q[19];
rzk(8) q[19];
rzk(8) q[30];
cx q[30], q[20];
rzk(32752) q[20];
cx q[30], q[20];
rzk(16) q[20];
rzk(16) q[30];
cx q[30], q[21];
rzk(32736) q[21];
cx q[30], q[21];
rzk(32) q[21];
rzk(32) q[30];
cx q[30], q[22];
rzk(32704) q[22];
cx q[30], q[22];
rzk(64) q[22];
rzk(64) q[30];
cx q[30], q[23];
rzk(32640) q[23];
cx q[30], q[23];
rzk(128) q[23];
rzk(128) q[30];
cx q[30], q[24];
rzk(32512) q[24];
cx q[30], q[24];
rzk(256) q[24];
rzk(256) q[30];
cx q[30], q[25];
rzk(32256) q[25];
cx q[30], q[25];
rzk(512) q[25];
rzk(512) q[30];
cx q[30], q[26];
rzk(31744) q[26];
cx q[30], q[26];
rzk(1024) q[26];
rzk(1024) q[30];
cx q[30], q[27];
rzk(30720) q[27];
cx q[30], q[27];
rzk(2048) q[27];
rzk(2048) q[30];
cx q[30], q[28];
rzk(28672) q[28];
cx q[30], q[28];
rzk(4096) q[28];
rzk(4096) q[30];
cx q[30], q[29];
rzk(24576) q[29];
cx q[30], q[29];
rzk(8192) q[29];
rzk(8192) q[30];
h q[30];
cx q[31], q[19];
rzk(32764) q[19];
cx q[31], q[19];
rzk(4) q[19];
rzk(4) q[31];
cx q[31], q[20];
rzk(32760) q[20];
cx q[31], q[20];
rzk(8) q[20];
rzk(8) q[31];
cx q[31], q[21];
rzk(32752) q[21];
cx q[31], q[21];
rzk(16) q[21];
rzk(16) q[31];
cx q[31], q[22];
rzk(32736) q[22];
cx q[31], q[22];
rzk(32) q[22];
rzk(32) q[31];
cx q[31], q[23];
rzk(32704) q[23];
cx q[31], q[23];
rzk(64) q[23];
rzk(64) q[31];
cx q[31], q[24];
rzk(32640) q[24];
cx q[31], q[24];
rzk(128) q[24];
rzk(128) q[31];
cx q[31], q[25];
rzk(32512) q[25];
cx q[31], q[25];
rzk(256) q[25];
rzk(256) q[31];
cx q[31], q[26];
rzk(32256) q[26];
cx q[31], q[26];
rzk(512) q[26];
rzk(512) q[31];
cx q[31], q[27];
rzk(31744) q[27];
cx q[31], q[27];
rzk(1024) q[27];
rzk(1024) q[31];
cx q[31], q[28];
rzk(30720) q[28];
cx q[31], q[28];
rzk(2048) q[28];
rzk(2048) q[31];
cx q[31], q[29];
rzk(28672) q[29];
cx q[31], q[29];
rzk(4096) q[29];
rzk(4096) q[31];
cx q[31], q[30];
rzk(24576) q[30];
cx q[31], q[30];
rzk(8192) q[30];
rzk(8192) q[31];
h q[31];
