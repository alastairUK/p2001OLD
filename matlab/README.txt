P2001 Version 3.1 (28.10.19)

MATLAB implementation of Recommendation ITU-R P.2001-3

GENERAL NOTES
--------------


Files and subfolders in the distribution .zip package.


  tl_p2001.m                - MATLAB function implementing Recommendation ITU-R P.2001-3

  ./src/	            - Folder containing the functions used by tl_p2001.m and validate_p2001*.m

 validate_p2001_b2iseac.m   - MATLAB scripts used to validate the implementation of Recommendation ITU-R P.2001-3
 validate_p2001_prof4.m       as defined in the file tl_p2001.m using a set of test terrain profiles provided in
                              the folder ./validation_results/


 compare_results_vs_ref.m   - MATLAB script used to compute the deviations in basic transmission loss
                              Lb obtained using tl_p2001.m from the reference values available in the folder
                              /validation_examples/ for profiles prof4 (land only) and b2iseac (mixed path)

 ./validation_examples/     - Folder containing validation examples for Recommendation ITU-R P.2001-3

 ./validation_results/      - Folder containing the results of the validation tests using tl_p2001.m on the terrain
                              profiles that corespond to the profiles defined in ./validation_examples/
                              
                              
UPDATES AND FIXES
-----------------
Version 3.1 (28.10.19)
        - Modifications in angular distance dependent loss according to ITU-R P.2001-3 (in tl_anomalous_reflection.m)
	- Restructured and improved the tests
	- Validation examples are recreated to account for the change in calculation of angular distance dependent loss 
          according to ITU-R P.2001-3
	- Restructured and improved the tests 
        - Included octave specific commands for reading/writing xlsx data.
        - Included script compare_results_vs_reference.m

Version 3 (28.06.18)
        - Corrections according to feedback obtained from CG 3J-3M-13:
        - Declared empty arrays G and P for no-rain path (precipitation_fade_initial.m)
        - Introduced additional validation checks for input arguments  

Version 2 (11.08.17)
        - Corrected a bug (typo) in dl_bull_smooth
        - Replaced load function calls to increase computational speed
        - Introduced a validation example for mixed paths (validate_p2001_b2iseac.m)

Version 1 (29.06.16)
        - Initial implementation
