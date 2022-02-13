if ismac
    % Code to run on Mac platform
    %
    disp('This code cannot run on Mac platform as it cannot start Excel server for writing the output.');
else
    
    fName = 'validation_results/Validation examples ITU-R P.2001 b2iseac OFCOM.xlsx';
    frequency = [0.03 0.2 2 20 50];
    Page      = {'Page1', 'Page2', 'Page3', 'Page4', 'Page5'};
    Tpc_array = [0.001
        0.001047
        0.001096
        0.001148
        0.001202
        0.001259
        0.001318
        0.00138
        0.001445
        0.001514
        0.001585
        0.00166
        0.001738
        0.00182
        0.001905
        0.001995
        0.002089
        0.002188
        0.002291
        0.002399
        0.002512
        0.00263
        0.002754
        0.002884
        0.00302
        0.003162
        0.003311
        0.003467
        0.003631
        0.003802
        0.003981
        0.004169
        0.004365
        0.004571
        0.004786
        0.005012
        0.005248
        0.005495
        0.005754
        0.006026
        0.00631
        0.006607
        0.006918
        0.007244
        0.007586
        0.007943
        0.008318
        0.00871
        0.00912
        0.00955
        0.01
        0.010471
        0.010965
        0.011482
        0.012023
        0.012589
        0.013183
        0.013804
        0.014454
        0.015136
        0.015849
        0.016596
        0.017378
        0.018197
        0.019055
        0.019953
        0.020893
        0.021878
        0.022909
        0.023988
        0.025119
        0.026303
        0.027542
        0.02884
        0.0302
        0.031623
        0.033113
        0.034674
        0.036308
        0.038019
        0.039811
        0.041687
        0.043652
        0.045709
        0.047863
        0.050119
        0.052481
        0.054954
        0.057544
        0.060256
        0.063096
        0.066069
        0.069183
        0.072444
        0.075858
        0.079433
        0.083176
        0.087096
        0.091201
        0.095499
        0.1
        0.104713
        0.109648
        0.114815
        0.120226
        0.125893
        0.131826
        0.138038
        0.144544
        0.151356
        0.158489
        0.165959
        0.17378
        0.18197
        0.190546
        0.199526
        0.20893
        0.218776
        0.229087
        0.239883
        0.251189
        0.263027
        0.275423
        0.288403
        0.301995
        0.316228
        0.331131
        0.346737
        0.363078
        0.380189
        0.398107
        0.416869
        0.436516
        0.457088
        0.47863
        0.501187
        0.524807
        0.549541
        0.57544
        0.60256
        0.630957
        0.660693
        0.691831
        0.724436
        0.758578
        0.794328
        0.831764
        0.870964
        0.912011
        0.954993
        1
        1.047129
        1.096478
        1.148154
        1.202264
        1.258925
        1.318257
        1.380384
        1.44544
        1.513561
        1.584893
        1.659587
        1.737801
        1.819701
        1.905461
        1.995262
        2.089296
        2.187762
        2.290868
        2.398833
        2.511886
        2.630268
        2.754229
        2.884032
        3.019952
        3.162278
        3.311311
        3.467369
        3.630781
        3.801894
        3.981072
        4.168694
        4.365158
        4.570882
        4.786301
        5.011872
        5.248075
        5.495409
        5.754399
        6.025596
        6.309573
        6.606934
        6.91831
        7.24436
        7.585776
        7.943282
        8.317638
        8.709636
        9.120108
        9.549926
        10
        10.471285
        10.964782
        11.481536
        12.022644
        12.589254
        13.182567
        13.803843
        14.454398
        15.135612
        15.848932
        16.595869
        17.378008
        18.197009
        19.054607
        19.952623
        20.892961
        21.877616
        22.908677
        23.988329
        25.118864
        50
        74.881136
        76.011671
        77.091323
        78.122384
        79.107039
        80.047377
        80.945393
        81.802991
        82.621992
        83.404131
        84.151068
        84.864388
        85.545602
        86.196157
        86.817433
        87.410746
        87.977356
        88.518464
        89.035218
        89.528715
        90
        90.450074
        90.879892
        91.290364
        91.682362
        92.056718
        92.414224
        92.75564
        93.08169
        93.393066
        93.690427
        93.974404
        94.245601
        94.504591
        94.751925
        94.988128
        95.213699
        95.429118
        95.634842
        95.831306
        96.018928
        96.198106
        96.369219
        96.532631
        96.688689
        96.837722
        96.980048
        97.115968
        97.245771
        97.369732
        97.488114
        97.601167
        97.709132
        97.812238
        97.910704
        98.004738
        98.094539
        98.180299
        98.262199
        98.340413
        98.415107
        98.486439
        98.55456
        98.619616
        98.681743
        98.741075
        98.797736
        98.851846
        98.903522
        98.952871
        99
        99.045007
        99.087989
        99.129036
        99.168236
        99.205672
        99.241422
        99.275564
        99.308169
        99.339307
        99.369043
        99.39744
        99.42456
        99.450459
        99.475193
        99.498813
        99.52137
        99.542912
        99.563484
        99.583131
        99.601893
        99.619811
        99.636922
        99.653263
        99.668869
        99.683772
        99.698005
        99.711597
        99.724577
        99.736973
        99.748811
        99.760117
        99.770913
        99.781224
        99.79107
        99.800474
        99.809454
        99.81803
        99.82622
        99.834041
        99.841511
        99.848644
        99.855456
        99.861962
        99.868174
        99.874107
        99.879774
        99.885185
        99.890352
        99.895287
        99.9
        99.904501
        99.908799
        99.912904
        99.916824
        99.920567
        99.924142
        99.927556
        99.930817
        99.933931
        99.936904
        99.939744
        99.942456
        99.945046
        99.947519
        99.949881
        99.952137
        99.954291
        99.956348
        99.958313
        99.960189
        99.961981
        99.963692
        99.965326
        99.966887
        99.968377
        99.9698
        99.97116
        99.972458
        99.973697
        99.974881
        99.976012
        99.977091
        99.978122
        99.979107
        99.980047
        99.980945
        99.981803
        99.982622
        99.983404
        99.984151
        99.984864
        99.985546
        99.986196
        99.986817
        99.987411
        99.987977
        99.988518
        99.989035
        99.989529
        99.99
        99.99045
        99.99088
        99.99129
        99.991682
        99.992057
        99.992414
        99.992756
        99.993082
        99.993393
        99.99369
        99.993974
        99.994246
        99.994505
        99.994752
        99.994988
        99.995214
        99.995429
        99.995635
        99.995831
        99.996019
        99.996198
        99.996369
        99.996533
        99.996689
        99.996838
        99.99698
        99.997116
        99.997246
        99.99737
        99.997488
        99.997601
        99.997709
        99.997812
        99.997911
        99.998005
        99.998095
        99.99818
        99.998262
        99.99834
        99.998415
        99.998486
        99.998555
        99.99862
        99.998682
        99.998741
        99.998798
        99.998852
        99.998904
        99.998953
        99.999
        ];
    
    
    FlagVP = 1;
    Gtx = 0;
    Grx = 0;
    Hrg = 30;
    Htg = 60;
    Phire = -3.1833333333;
    Phirn = 54.1666666667;
    Phite = -6.3333333333;
    Phitn = 53.1833333333;
    Tpc = 0.001;
    Profile = 'Prof_b2iseac';
    
    s = pwd;
    
    if ~exist('prof_b2iseac.m','file')
        addpath([s '/validation_examples/'])
    end
    
    
    [d,h,z] = prof_b2iseac();
    
    % if ~exist('great_circle_path.m','file')
    %     addpath([s '/src/'])
    % end
    
    if (isOctave)
        pkg load windows;
        pkg load io;
        page_screen_output(0);
        page_output_immediately(1);
        
        
        xls = xlsopen(fName, 1);
    end
    
    for fcnt = 1:length(frequency)
        
        GHz = frequency(fcnt);
        pg  = Page{fcnt};
        
        A = {'FlagVp', 'GHz', 'Grx', 'Grt', 'Hrg', 'Htg', 'Phire', 'Phirn',  'Phite', ...
            'Phitn', 'Tpc',	'Profile',	'FlagLos50', 'FlagLospa', 'FlagLosps', 'FlagSea', ...
            'FlagShort', 'A1', 'A2', 'A2r',	'A2t',	'Aac',	'Aad',	'dAat',	'Ags',	'Agsur', ...
            'Aorcv', 'Aos',	'Aosur', 'Aotcv', 'Awrcv',	'Awrrcv', 'Awrs', 'Awrsur',	'Awrtcv', ...
            'Aws', 'Awsur',	'Awtcv', 'Bt2rDeg',	'Cp', 'D',	'Dcr',	'Dct',	'Dgc',	'Dlm', ...
            'Dlr',	'Dlt',	'Drcv',	'Dtcv',	'Dtm',	'Foes1', 'Foes2', 'Fsea', 'Fwvr', 'Fwvrrx',	'Fwvrxt', ...
            'GAM1',	'GAM2',	'Gamo',	'Gamw',	'Gamwr', 'H1', 'Hcv', 'Hhi', 'Hlo',	'Hm', 'Hmid', ...
            'Hn', 	'Hrea',	'Hrep',	'Hrs',	'Hsrip',	'Hsripa',	'Hstip',	'Hstipa',	'Htea', ...
            'Htep',	'Hts',	'Lb',	'Lba',	'Lbes1',	'Lbes2',	'Lbfs',	'Lbm1',	'Lbm2',	'Lbm3',	...
            'Lbm4',	'Lbs',	'Ld',	'Ldba',	'Ldbka',    'Ldbks',	'Ldbs',	'dLdsph',	'Lp1r',	'Lp1t', ...
            'Lp2r',	'Lp2t',	'Mses',	'N',	'Nd1km50',	'Nd1kmp',	'Nd65m1',	'Nlr',	'Nlt',	'Nsrima',...
            'Nsrims',	'Nstima',	'Nstims',	'Phi1qe',	'Phi1qn',	'Phi3qe',	'Phi3qn',	'Phicve', ...
            'Phicvn',	'Phime',	'Phimn',	'Phircve',	'Phircvn',	'Phitcve',	'Phitcvn',	'Qoca', ...
            'Reff50',	'Reffp',	'Sp',	'Thetae',	'Thetar',	'Thetarpos',	'Thetas',	'Thetat', ...
            'Thetatpos',	'Tpcp',	'Tpcq',	'Tpcscale',	'Wave',	'Wvsur',	'WvSurrx',	'WvSurtx',	'Ztropo'};
        
        r1 = 1;
        %
        for tpccnt = 1:length(Tpc_array)
            
            Tpc = Tpc_array(tpccnt);
            
            disp(['Processing ' num2str(tpccnt) '/' num2str(length(Tpc_array)) ', GHz = ' num2str(GHz) ' GHz,  Tpc = ' num2str(Tpc) '% ...']);
            
            p2001 = tl_p2001(d, h, z, GHz, Tpc_array(tpccnt), Phire, Phirn, Phite, Phitn, Hrg, Htg, Grx, Gtx, FlagVP);
            
            row = [...
                FlagVP, ...
                GHz, ...
                Grx, ...
                Gtx, ...
                Hrg, ...
                Htg, ...
                Phire, ...
                Phirn, ...
                Phite, ...
                Phitn, ...
                Tpc, ...
                Profile, ...
                struct2cell(p2001).'
                ];
            A = [A; row];
            
            r1 = tpccnt + 1;
        end
        if(isOctave)
            xls = oct2xls (A, xls, pg);
        else
            xlswrite(fName,A, pg);
        end
    end
    
    % write the profile file
    
    B = {...
        'File', 'Profile', ''; ...
        'Locations',	'Yes', ''; ...
        'Coords'	'LlatDeg', ''; ...
        'TxCoordE',	Phite, ''; ...
        'TxCoordN', Phitn, ''; ...
        'RxCoordE', Phire, ''; ...
        'RxCoordN', Phirn, ''; ...
        'Data',	'DHZ', ''; ...
        'Points', length(d), ''};
    
    for i = 1:length(d)
        row = {d(i), h(i), z(i)};
        B = [B; row];
    end
    
    if(isOctave)
        [xls, status] = oct2xls (B, xls, Profile);
        xlsclose(xls);
    else
        xlswrite(fName,B, Profile)
    end
    
    disp(['Results are written in the file: ' fName]);
    
end
