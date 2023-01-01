function tune = audialize(data,notes,Fs,duration)
%function tune = audialize(data,notes,Fs,duration)
%
%audialize turns "data" into a "tune"
%data is any d x 1 or 1 x d vector of data to be audialized
%data can be any vector of data, but it makes sense to use a time-series
%
%notes is a m x n x 2 matrix of m sounds
%m is the number of sounds, say 12 in an octave
%the m components of notes could be build from [y,Fs] = audioread(filename)
%
%Fs is the sample rate, e.g. Fs = 44100
%duration is fraction of a second each sound is played
%
%tune is the sequence of sounds
%tune can be played again by soundsc(tune,Fs)
%tune can be written to a file by audiowrite('tune.wav',tune,Fs)
%
%First version: 1 January 2023 by Richard S.J. Tol
%This code is protected by the MIT License

numNotes = size(notes,1);
scdata = (data-min(data))/(max(data)-min(data));
index = int64(round((numNotes-2)*scdata)+1);
n = max(size(data,1),size(data,2));

tune = [];
for i=1:n,
    soundsc(squeeze(notes(index(i),:,:)),Fs)
    pause(duration)
    tune = [tune; squeeze(notes(index(i),:,:))];
end

