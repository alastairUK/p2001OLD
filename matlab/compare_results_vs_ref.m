% This script is used to compute the deviations in basic transmission loss
% Lb obtained using tl_p2001.m from the reference values available in the folder
% /validation_examples/ for profiles prof4 (land only) and b2iseac (mixed
% path)

clear all
close all
clc


s = pwd;
if ~exist('p838.m','file')
    addpath([s '/src/'])
end

if (isOctave)
    pkg load windows;
    pkg load io;
    page_screen_output(0);
    page_output_immediately(1);
    
end

filename_ofcom{1} = './validation_results/Validation examples ITU-R P.2001 b2iseac OFCOM.xlsx';
filename_ofcom{2} = './validation_results/Validation examples ITU-R P.2001 prof4 OFCOM.xlsx';
filename_ref{1} = './validation_examples/Validation examples ITU-R P.2001 b2iseac.xlsx';
filename_ref{2} = './validation_examples/Validation examples ITU-R P.2001 prof4.xlsx';

for fln = 1:2
  
    if (isOctave)
        xlsr1 = xlsopen(filename_ofcom{fln}, 0);
        xlsr2 = xlsopen(filename_ref{fln},0);
    end
    fprintf(1,'\n#Validation example: %s\n', filename_ofcom{fln});
    for pgn = 1:5
        column = 'CA2:CA444'; %CA is for the final result Lb
        pagenumber = ['Page' num2str(pgn)];
        
        if (isOctave)

            [num_ofcom_raw, xlsr1, rstatus ] = xls2oct (xlsr1, pagenumber, column);
            [num_ref_raw, xlsr2, rstatus ] = xls2oct (xlsr2, pagenumber, column);
            num_ofcom = parsecell(num_ofcom_raw);
            num_ref = parsecell(num_ref_raw);
        else
            num_ofcom = xlsread(filename_ofcom{fln}, pagenumber, column);
            num_ref = xlsread(filename_ref{fln}, pagenumber, column);
        end
        
        maxdelta = max(abs(num_ofcom-num_ref));
        fprintf(1,'Maximum difference from the reference results in Lb on %s is: %g dB\n', pagenumber, maxdelta);
        
    end
    
    if (isOctave)
        xlsclose(xlsr1);
        xlsclose(xlsr2);
    end
end