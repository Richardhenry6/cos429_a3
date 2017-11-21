% path to your data dir
data_dir = 'data/';

seq_name = 'isaac'; 
seq_dir = fullfile(data_dir, seq_name);

% loading and manipulating a face sequence
fs = FaceSequence(seq_dir);
fs.next = 1;
fs.step = 1;
rects = LKonSequence(fs);