SCENet Executable made by Seok Bong Yoo

1. Prerequisites for Deployment 

Verify that version 9.3 (R2017b) of the MATLAB Runtime is installed.   

If the MATLAB Runtime is not installed, you can run the MATLAB Runtime installer.
To find its location, enter
  
    >>mcrinstaller
      
at the MATLAB prompt.

Alternatively, download and install the Windows version of the MATLAB Runtime for R2017b 
from the following link on the MathWorks website:

    http://www.mathworks.com/products/compiler/mcr/index.html
   
For more information about the MATLAB Runtime and the MATLAB Runtime installer, see 
Package and Distribute in the MATLAB Compiler documentation  
in the MathWorks Documentation Center.    

NOTE: You will need administrator rights to run the MATLAB Runtime installer. 


2. Files to Deploy and Package

Files to Package for Standalone 
================================
-SCENet.exe
-MCRInstaller.exe 
    Note: if end users are unable to download the MATLAB Runtime using the
    instructions in the previous section, include it when building your 
    component by clicking the "Runtime downloaded from web" link in the
    Deployment Tool.
-This readme file 

3. Definitions

For information on deployment terminology, go to
http://www.mathworks.com/help and select MATLAB Compiler >
Getting Started > About Application Deployment >
Deployment Product Terms in the MathWorks Documentation
Center.

4. Remarks

Currently, our full source code cannot be opened due to a security issue regarding the technical transfer. 
Instead, we provide an executable file along with test images so that you can reproduce and confirm the results.
We also will upload the source code as soon as the security issue is over.  
Trained network model and MatConvNet package were embedded in the execution file to run all parts of the code.

5. Execution

- Decompress SCENet.egg file and then locate the SCENet.exe file to top folder(Excutable program/).
- Locate test images in input folder(testsets/q10_peak20/).
- Run Test.cmd file.
- Confirm the generated results in output folder(results/).



