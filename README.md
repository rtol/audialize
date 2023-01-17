# audialize
Matlab function for audialization

This function turns a data series into a tune. It plays the tune and stores it for further processing.


Example 1: history of the social cost of carbon on piano; scc.wav

load piano.mat

data = [738.7	234.8	510.4	39.2	106.5	103.6	224.9	98.8	231.7	166.4	13.6	39.0	159.8	44.6	172.0	26.9	114.8	100.8	101.9	49.7	69.4	172.5	100.9	259.3	172.8	161.2	202.1	102.9	331.1	181.0	324.0	335.2];

tune = audialize(data,fastnotes,Fs,0.5);

Example 2: The global annual mean surface air temperate; tempf.wav

This uses fmaj.mat, F major on piano spanning two octaves
