MATLAB Chemistry Suite
Version 3.0
MATLAB R2017b and later

Files: 

Chemistry_Suite_V3.mChemistry_Suite_Workspace.matConsentToPublish.pdfPeriodic_Table_Workspace.matperiodic-table.xlsxREADME.txttable.gif

Authors:

D S Mabrur Hyder
Email: dsmabrur@ualberta.ca

Afridee Islam Alif
Email: alif@ualberta.ca


Molar Mass Calculator. 

Enter the molecular formula of a compound with elements followed by their respective number of atoms. 

The elements in the molecular formula are extracted, and their corresponding Atomic mass is matched in the periodic table and stored in the vector ‘Weight’

The numbers after each element is extracted and a default of 1 is assigned if there is no number provided after an element, and stored in the vector ‘Coefficient ’

‘Weight’ and ‘Coefficient ’ are multiplied in a scalar multiplication to multiply the corresponding atomic number with the number of that elements in the compound. 

Test values: H He Xe Ne  HCl H2Cl H23Cl HeCa He2Ca He43Ca HeCa2 HeCl53 C6H12O6 CH3CH2OH NH4Cl H2O H2O2 O18 C12H24O8

Limitation: numbers outside brackets have to pre-multiplied and then entered to get the molecular mass
The coefficient of an element is limited from 1 to 99