import os
import numpy as np
import librosa
from tqdm import tqdm
# import tensorflow.keras

def WAV2Numpy(folder, sr=None):
    """
    Recursively converts WAV to numpy arrays.
    Deletes the WAV files in the process
    folder - folder to convert.
    """
    # print('here')
    allFiles = []
    for root, dirs, files in os.walk(folder):
        allFiles += [os.path.join(root, f) for f in files
                     if f.endswith('.wav')]
    print(allFiles)
    for file in allFiles:
        y, sr = librosa.load(file, sr=None)

        # if we want to write the file later
        # librosa.output.write_wav('file.wav', y, sr, norm=False)
        print(file)
        np.save(file + '.npy', y)
        os.remove(file)

def mapping(inp):
    d = {0: '_background_noise_',
 2: 'yes',
 3: 'no',
 4: 'up',
 5: 'down',
 6: 'left',
 7: 'right',
 8: 'on',
 9: 'off',
 10: 'stop',
 11: 'go',
 12: 'zero',
 13: 'one',
 14: 'two',
 15: 'three',
 16: 'four',
 17: 'five',
 18: 'six',
 19: 'seven',
 20: 'eight',
 1: 'nine',
 21: 'backward',
 22: 'bed',
 23: 'bird',
 24: 'cat',
 25: 'dog',
 26: 'follow',
 27: 'forward',
 28: 'happy',
 29: 'house',
 30: 'learn',
 31: 'marvin',
 32: 'sheila',
 33: 'tree',
 34: 'visual',
 35: 'wow'}
    return d[int(inp)]

