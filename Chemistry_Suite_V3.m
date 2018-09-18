%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Course: ENCMP 100
% ENCMP 100 Programming contest
% Name: D S Mabrur Hyder & Afridee Islam Alif
% ccid: dsmabrur & alif
%
% Acknowledgements:
% Periodic Table Excel sheet from:
% https://www.vertex42.com/ExcelTemplates/periodic-table-of-elements.html
%
% Periodic table image from:
% http://www.sbcs.qmul.ac.uk/iupac/AtWt/table.html
%
% Description:
% This program is intended for the use by chemistry students studying in
% middle school and above in all countries, and all who are curious about
% the 119 natural and man made elements.
%
% Key features intend on being;
%
%   1. Display periodic table on demand
%
%   2. Display basic data on single elements; Name, Symbol, Atomic Number,
%   Atomic Mass, Phase at STP
%
%      And Display more data on those same elements if requested;
%
%   Type, Group, Group 2, Period, Electron Configuration,	Ground-state
%   Level, Ionization Energy (eV), Melting Point (°C), Boiling Point (°C),
%   Crystal StructureAtomic Radius (display), Metallic Radius (pm),
%   Covalent radius (pm), Atomic Radius (calculated)  (pm), Van der Waals
%   Radius, (pm), Electro-negativity (Pauling), Density (g/cm3), Electron
%   Affinity (kJ/mol), Thermal Conductivity, W/(m K), Electrical
%   Resistivity (?m), CAS Number, Possible Oxidation States, Discoverer,
%   and the Year of Discovery.
%
%   3. Display graphs on periodicity
%
%       1. Ionization Energy (eV)
%       2. Electron Affinity (kJ/mol)
%       3. Atomic radius (pm)
%
%   4. Calculate Molar mass of molecules once entered
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
clc

fprintf('Welcome to MATLAB Chemistry Suite 3.0!\n')
fprintf('Enter which program you would like to run\n')
Program = menu('Enter which program you would like to run', ...
    'Periodic Table', 'Data on Elements', 'Periodicity', 'Molar Mass Calculator');


switch Program
    %Periodic Table
    case 1
        load Periodic_Table_Workspace.mat
        BW = im2bw(Periodic_Table_IMAGE,map,0.305);
        figure, imshow(BW)
        
    %Data on Elements
    case 2
        load Chemistry_Suite_Workspace.mat
        disp('Data on Elements')
        Element = input...
            ('Enter the name or symbol of the Element (e.g. H or Hydrogen): ','s');
        if length(Element)> 2
            if  Element(1)>= 'a' && Element(1)<='z'
                Element(1) = Element(1)- 32;
            end
        end
        x = 1;
        switch Element
            case {'Hydrogen','H'}
                disp(Periodic_Table_Simple(1))
            case {'Helium','He'}
                disp( Periodic_Table_Simple(2))
            case {'Lithium','Li'}
                disp( Periodic_Table_Simple(3))
            case {'Beryllium','Be'}
                disp( Periodic_Table_Simple(4))
            case {'Boron','B'}
                disp( Periodic_Table_Simple(5))
            case {'Carbon','C'}
                disp( Periodic_Table_Simple(6))
            case {'Nitrogen','N'}
                disp( Periodic_Table_Simple(7))
            case {'Oxygen','O'}
                disp( Periodic_Table_Simple(8))
            case {'Fluorine','F'}
                disp( Periodic_Table_Simple(9))
            case {'Neon','Ne'}
                disp( Periodic_Table_Simple(10))
            case {'Sodium','Na'}
                disp( Periodic_Table_Simple(11))
            case {'Magnesium','Mg'}
                disp( Periodic_Table_Simple(12))
            case {'Aluminum','Al'}
                disp( Periodic_Table_Simple(13))
            case {'Silicon','Si'}
                disp( Periodic_Table_Simple(14))
            case {'Phosphorus','P'}
                disp( Periodic_Table_Simple(15))
            case {'Sulfur','S'}
                disp( Periodic_Table_Simple(16))
            case {'Chlorine','Cl'}
                disp( Periodic_Table_Simple(17))
            case {'Argon','Ar'}
                disp( Periodic_Table_Simple(18))
            case {'Potassium','K'}
                disp( Periodic_Table_Simple(19))
            case {'Calcium','Ca'}
                disp( Periodic_Table_Simple(20))
            case {'Scandium','Sc'}
                disp( Periodic_Table_Simple(21))
            case {'Titanium','Ti'}
                disp( Periodic_Table_Simple(22))
            case {'Vanadium','V'}
                disp( Periodic_Table_Simple(23))
            case {'Chromium','Cr'}
                disp( Periodic_Table_Simple(24))
            case {'Manganese','Mn'}
                disp( Periodic_Table_Simple(25))
            case {'Iron','Fe'}
                disp( Periodic_Table_Simple(26))
            case {'Cobalt','Co'}
                disp( Periodic_Table_Simple(27))
            case {'Nickel','Ni'}
                disp( Periodic_Table_Simple(28))
            case {'Copper','Cu'}
                disp( Periodic_Table_Simple(29))
            case {'Zinc','Zn'}
                disp( Periodic_Table_Simple(30))
            case {'Gallium','Ga'}
                disp( Periodic_Table_Simple(31))
            case {'Germanium','Ge'}
                disp( Periodic_Table_Simple(32))
            case {'Arsenic','As'}
                disp( Periodic_Table_Simple(33))
            case {'Selenium','Se'}
                disp( Periodic_Table_Simple(34))
            case {'Bromine','Br'}
                disp( Periodic_Table_Simple(35))
            case {'Krypton','Kr'}
                disp( Periodic_Table_Simple(36))
            case {'Rubidium','Rb'}
                disp( Periodic_Table_Simple(37))
            case {'Strontium','Sr'}
                disp( Periodic_Table_Simple(38))
            case {'Yttrium','Y'}
                disp( Periodic_Table_Simple(39))
            case {'Zirconium','Zr'}
                disp( Periodic_Table_Simple(40))
            case {'Niobium','Nb'}
                disp( Periodic_Table_Simple(41))
            case {'Molybdenum','Mo'}
                disp( Periodic_Table_Simple(42))
            case {'Technetium','Tc'}
                disp( Periodic_Table_Simple(43))
            case {'Ruthenium','Ru'}
                disp( Periodic_Table_Simple(44))
            case {'Rhodium','Rh'}
                disp( Periodic_Table_Simple(45))
            case {'Palladium','Pd'}
                disp( Periodic_Table_Simple(46))
            case {'Silver','Ag'}
                disp( Periodic_Table_Simple(47))
            case {'Cadmium','Cd'}
                disp( Periodic_Table_Simple(48))
            case {'Indium','In'}
                disp( Periodic_Table_Simple(49))
            case {'Tin','Sn'}
                disp( Periodic_Table_Simple(50))
            case {'Antimony','Sb'}
                disp( Periodic_Table_Simple(51))
            case {'Tellurium','Te'}
                disp( Periodic_Table_Simple(52))
            case { 'Iodine','I'}
                disp( Periodic_Table_Simple(53))
            case {'Xenon','Xe'}
                disp( Periodic_Table_Simple(54))
            case { 'Cesium','Cs'}
                disp( Periodic_Table_Simple(55))
            case {'Barium','Ba'}
                disp( Periodic_Table_Simple(56))
            case { 'Lanthanum','La'}
                disp( Periodic_Table_Simple(57))
            case {'Cerium','Ce'}
                disp( Periodic_Table_Simple(58))
            case { 'Praseodymium','Pr'}
                disp( Periodic_Table_Simple(59))
            case {'Neodymium','Nd'}
                disp( Periodic_Table_Simple(60))
            case { 'Promethium','Pm'}
                disp( Periodic_Table_Simple(61))
            case {'Samarium','Sm'}
                disp( Periodic_Table_Simple(62))
            case { 'Europium','Eu'}
                disp( Periodic_Table_Simple(63))
            case {'Gadolinium','Gd'}
                disp( Periodic_Table_Simple(64))
            case { 'Terbium','Tb'}
                disp( Periodic_Table_Simple(65))
            case {'Dysprosium','Dy'}
                disp( Periodic_Table_Simple(66))
            case { 'Holmium','Ho'}
                disp( Periodic_Table_Simple(67))
            case {'Erbium','Er'}
                disp( Periodic_Table_Simple(68))
            case { 'Thulium','Tm'}
                disp( Periodic_Table_Simple(69))
            case {'Ytterbium','Yb'}
                disp( Periodic_Table_Simple(70))
            case { 'Lutetium','Lu'}
                disp( Periodic_Table_Simple(71))
            case {'Hafnium','Hf'}
                disp( Periodic_Table_Simple(72))
            case { 'Tantalum','Ta'}
                disp( Periodic_Table_Simple(73))
            case {'Tungsten','W'}
                disp( Periodic_Table_Simple(74))
            case { 'Rhenium','Re'}
                disp( Periodic_Table_Simple(75))
            case {'Osmium','Os'}
                disp( Periodic_Table_Simple(76))
            case { 'Iridium','Ir'}
                disp( Periodic_Table_Simple(77))
            case {'Platinum','Pt'}
                disp( Periodic_Table_Simple(78))
            case { 'Gold','Au'}
                disp( Periodic_Table_Simple(79))
            case {'Mercury','Hg'}
                disp( Periodic_Table_Simple(80))
            case { 'Thallium','Tl'}
                disp( Periodic_Table_Simple(81))
            case {'Lead','Pb'}
                disp( Periodic_Table_Simple(82))
            case { 'Bismuth','Bi'}
                disp( Periodic_Table_Simple(83))
            case {'Polonium','Po'}
                disp( Periodic_Table_Simple(84))
            case { 'Astatine','At'}
                disp( Periodic_Table_Simple(85))
            case {'Radon','Rn'}
                disp( Periodic_Table_Simple(86))
            case { 'Francium','Fr'}
                disp( Periodic_Table_Simple(87))
            case {'Radium','Ra'}
                disp( Periodic_Table_Simple(88))
            case { 'Actinium','Ac'}
                disp( Periodic_Table_Simple(89))
            case {'Thorium','Th'}
                disp( Periodic_Table_Simple(90))
            case { 'Protactinium','Pa'}
                disp( Periodic_Table_Simple(91))
            case {'Uranium','U'}
                disp( Periodic_Table_Simple(92))
            case { 'Neptunium','Np'}
                disp( Periodic_Table_Simple(93))
            case {'Plutonium','Pu'}
                disp( Periodic_Table_Simple(94))
            case { 'Americium','Am'}
                disp( Periodic_Table_Simple(95))
            case {'Curium','Cm'}
                disp(Periodic_Table_Simple(96))
            case {'Berkelium','Bk'}
                disp(Periodic_Table_Simple(97))
            case {'Californium','Cf'}
                disp(Periodic_Table_Simple(98))
            case {'Einsteinium','Es'}
                disp(Periodic_Table_Simple(99))
            case {'Fermium','Fm'}
                disp( Periodic_Table_Simple(100))
            case {'Mendelevium','Md'}
                disp( Periodic_Table_Simple(101))
            case {'Nobelium','No'}
                disp( Periodic_Table_Simple(102))
            case {'Lawrencium','Lr'}
                disp( Periodic_Table_Simple(103))
            case {'Rutherfordium','Rf'}
                disp( Periodic_Table_Simple(104))
            case {'Dubnium','Db'}
                disp( Periodic_Table_Simple(105))
            case {'Seaborgium','Sg'}
                disp( Periodic_Table_Simple(106))
            case {'Bohrium','Bh'}
                disp( Periodic_Table_Simple(107))
            case {'Hassium','Hs'}
                disp( Periodic_Table_Simple(108))
            case {'Meitnerium','Mt'}
                disp( Periodic_Table_Simple(109))
            case {'Darmstadtium','Ds'}
                disp( Periodic_Table_Simple(110))
            case {'Roentgenium','Rg'}
                disp( Periodic_Table_Simple(111))
            case {'Copernicium','Cn'}
                disp( Periodic_Table_Simple(112))
            case {'Nihonium','Nh'}
                disp( Periodic_Table_Simple(113))
            case {'Flerovium','Fl'}
                disp( Periodic_Table_Simple(114))
            case {'Moscovium','Mc'}
                disp( Periodic_Table_Simple(115))
            case {'Livermorium','Lv'}
                disp( Periodic_Table_Simple(116))
            case {'Tennessine','Ts'}
                disp( Periodic_Table_Simple(117))
            case {'Oganesson','Og'}
                disp( Periodic_Table_Simple(118))
            otherwise
                x = x+1;
        end
        if x > 1
            disp('Please try again with the name or symbol of the element.')
        else
            Element_Complex = input('Would you like more information? 1) Yes 2) No: ');
            if Element_Complex == 1
                switch Element
                    case {'Hydrogen','H'}
                        disp(Periodic_Table_Complex(1))
                    case {'Helium','He'}
                        disp( Periodic_Table_Complex(2))
                    case {'Lithium','Li'}
                        disp( Periodic_Table_Complex(3))
                    case {'Beryllium','Be'}
                        disp( Periodic_Table_Complex(4))
                    case {'Boron','B'}
                        disp( Periodic_Table_Complex(5))
                    case {'Carbon','C'}
                        disp( Periodic_Table_Complex(6))
                    case {'Nitrogen','N'}
                        disp( Periodic_Table_Complex(7))
                    case {'Oxygen','O'}
                        disp( Periodic_Table_Complex(8))
                    case {'Fluorine','F'}
                        disp( Periodic_Table_Complex(9))
                    case {'Neon','Ne'}
                        disp( Periodic_Table_Complex(10))
                    case {'Sodium','Na'}
                        disp( Periodic_Table_Complex(11))
                    case {'Magnesium','Mg'}
                        disp( Periodic_Table_Complex(12))
                    case {'Aluminum','Al'}
                        disp( Periodic_Table_Complex(13))
                    case {'Silicon','Si'}
                        disp( Periodic_Table_Complex(14))
                    case {'Phosphorus','P'}
                        disp( Periodic_Table_Complex(15))
                    case {'Sulfur','S'}
                        disp( Periodic_Table_Complex(16))
                    case {'Chlorine','Cl'}
                        disp( Periodic_Table_Complex(17))
                    case {'Argon','Ar'}
                        disp( Periodic_Table_Complex(18))
                    case {'Potassium','K'}
                        disp( Periodic_Table_Complex(19))
                    case {'Calcium','Ca'}
                        disp( Periodic_Table_Complex(20))
                    case {'Scandium','Sc'}
                        disp( Periodic_Table_Complex(21))
                    case {'Titanium','Ti'}
                        disp( Periodic_Table_Complex(22))
                    case {'Vanadium','V'}
                        disp( Periodic_Table_Complex(23))
                    case {'Chromium','Cr'}
                        disp( Periodic_Table_Complex(24))
                    case {'Manganese','Mn'}
                        disp( Periodic_Table_Complex(25))
                    case {'Iron','Fe'}
                        disp( Periodic_Table_Complex(26))
                    case {'Cobalt','Co'}
                        disp( Periodic_Table_Complex(27))
                    case {'Nickel','Ni'}
                        disp( Periodic_Table_Complex(28))
                    case {'Copper','Cu'}
                        disp( Periodic_Table_Complex(29))
                    case {'Zinc','Zn'}
                        disp( Periodic_Table_Complex(30))
                    case {'Gallium','Ga'}
                        disp( Periodic_Table_Complex(31))
                    case {'Germanium','Ge'}
                        disp( Periodic_Table_Complex(32))
                    case {'Arsenic','As'}
                        disp( Periodic_Table_Complex(33))
                    case {'Selenium','Se'}
                        disp( Periodic_Table_Complex(34))
                    case {'Bromine','Br'}
                        disp( Periodic_Table_Complex(35))
                    case {'Krypton','Kr'}
                        disp( Periodic_Table_Complex(36))
                    case {'Rubidium','Rb'}
                        disp( Periodic_Table_Complex(37))
                    case {'Strontium','Sr'}
                        disp( Periodic_Table_Complex(38))
                    case {'Yttrium','Y'}
                        disp( Periodic_Table_Complex(39))
                    case {'Zirconium','Zr'}
                        disp( Periodic_Table_Complex(40))
                    case {'Niobium','Nb'}
                        disp( Periodic_Table_Complex(41))
                    case {'Molybdenum','Mo'}
                        disp( Periodic_Table_Complex(42))
                    case {'Technetium','Tc'}
                        disp( Periodic_Table_Complex(43))
                    case {'Ruthenium','Ru'}
                        disp( Periodic_Table_Complex(44))
                    case {'Rhodium','Rh'}
                        disp( Periodic_Table_Complex(45))
                    case {'Palladium','Pd'}
                        disp( Periodic_Table_Complex(46))
                    case {'Silver','Ag'}
                        disp( Periodic_Table_Complex(47))
                    case {'Cadmium','Cd'}
                        disp( Periodic_Table_Complex(48))
                    case {'Indium','In'}
                        disp( Periodic_Table_Complex(49))
                    case {'Tin','Sn'}
                        disp( Periodic_Table_Complex(50))
                    case {'Antimony','Sb'}
                        disp( Periodic_Table_Complex(51))
                    case {'Tellurium','Te'}
                        disp( Periodic_Table_Complex(52))
                    case { 'Iodine','I'}
                        disp( Periodic_Table_Complex(53))
                    case {'Xenon','Xe'}
                        disp( Periodic_Table_Complex(54))
                    case { 'Cesium','Cs'}
                        disp( Periodic_Table_Complex(55))
                    case {'Barium','Ba'}
                        disp( Periodic_Table_Complex(56))
                    case { 'Lanthanum','La'}
                        disp( Periodic_Table_Complex(57))
                    case {'Cerium','Ce'}
                        disp( Periodic_Table_Complex(58))
                    case { 'Praseodymium','Pr'}
                        disp( Periodic_Table_Complex(59))
                    case {'Neodymium','Nd'}
                        disp( Periodic_Table_Complex(60))
                    case { 'Promethium','Pm'}
                        disp( Periodic_Table_Complex(61))
                    case {'Samarium','Sm'}
                        disp( Periodic_Table_Complex(62))
                    case { 'Europium','Eu'}
                        disp( Periodic_Table_Complex(63))
                    case {'Gadolinium','Gd'}
                        disp( Periodic_Table_Complex(64))
                    case { 'Terbium','Tb'}
                        disp( Periodic_Table_Complex(65))
                    case {'Dysprosium','Dy'}
                        disp( Periodic_Table_Complex(66))
                    case { 'Holmium','Ho'}
                        disp( Periodic_Table_Complex(67))
                    case {'Erbium','Er'}
                        disp( Periodic_Table_Complex(68))
                    case { 'Thulium','Tm'}
                        disp( Periodic_Table_Complex(69))
                    case {'Ytterbium','Yb'}
                        disp( Periodic_Table_Complex(70))
                    case { 'Lutetium','Lu'}
                        disp( Periodic_Table_Complex(71))
                    case {'Hafnium','Hf'}
                        disp( Periodic_Table_Complex(72))
                    case { 'Tantalum','Ta'}
                        disp( Periodic_Table_Complex(73))
                    case {'Tungsten','W'}
                        disp( Periodic_Table_Complex(74))
                    case { 'Rhenium','Re'}
                        disp( Periodic_Table_Complex(75))
                    case {'Osmium','Os'}
                        disp( Periodic_Table_Complex(76))
                    case { 'Iridium','Ir'}
                        disp( Periodic_Table_Complex(77))
                    case {'Platinum','Pt'}
                        disp( Periodic_Table_Complex(78))
                    case { 'Gold','Au'}
                        disp( Periodic_Table_Complex(79))
                    case {'Mercury','Hg'}
                        disp( Periodic_Table_Complex(80))
                    case { 'Thallium','Tl'}
                        disp( Periodic_Table_Complex(81))
                    case {'Lead','Pb'}
                        disp( Periodic_Table_Complex(82))
                    case { 'Bismuth','Bi'}
                        disp( Periodic_Table_Complex(83))
                    case {'Polonium','Po'}
                        disp( Periodic_Table_Complex(84))
                    case { 'Astatine','At'}
                        disp( Periodic_Table_Complex(85))
                    case {'Radon','Rn'}
                        disp( Periodic_Table_Complex(86))
                    case { 'Francium','Fr'}
                        disp( Periodic_Table_Complex(87))
                    case {'Radium','Ra'}
                        disp( Periodic_Table_Complex(88))
                    case { 'Actinium','Ac'}
                        disp( Periodic_Table_Complex(89))
                    case {'Thorium','Th'}
                        disp( Periodic_Table_Complex(90))
                    case { 'Protactinium','Pa'}
                        disp( Periodic_Table_Complex(91))
                    case {'Uranium','U'}
                        disp( Periodic_Table_Complex(92))
                    case { 'Neptunium','Np'}
                        disp( Periodic_Table_Complex(93))
                    case {'Plutonium','Pu'}
                        disp( Periodic_Table_Complex(94))
                    case { 'Americium','Am'}
                        disp( Periodic_Table_Complex(95))
                    case {'Curium','Cm'}
                        disp(Periodic_Table_Complex(96))
                    case {'Berkelium','Bk'}
                        disp(Periodic_Table_Complex(97))
                    case {'Californium','Cf'}
                        disp(Periodic_Table_Complex(98))
                    case {'Einsteinium','Es'}
                        disp(Periodic_Table_Complex(99))
                    case {'Fermium','Fm'}
                        disp( Periodic_Table_Complex(100))
                    case {'Mendelevium','Md'}
                        disp( Periodic_Table_Complex(101))
                    case {'Nobelium','No'}
                        disp( Periodic_Table_Complex(102))
                    case {'Lawrencium','Lr'}
                        disp( Periodic_Table_Complex(103))
                    case {'Rutherfordium','Rf'}
                        disp( Periodic_Table_Complex(104))
                    case {'Dubnium','Db'}
                        disp( Periodic_Table_Complex(105))
                    case {'Seaborgium','Sg'}
                        disp( Periodic_Table_Complex(106))
                    case {'Bohrium','Bh'}
                        disp( Periodic_Table_Complex(107))
                    case {'Hassium','Hs'}
                        disp( Periodic_Table_Complex(108))
                    case {'Meitnerium','Mt'}
                        disp( Periodic_Table_Complex(109))
                    case {'Darmstadtium','Ds'}
                        disp( Periodic_Table_Complex(110))
                    case {'Roentgenium','Rg'}
                        disp( Periodic_Table_Complex(111))
                    case {'Copernicium','Cn'}
                        disp( Periodic_Table_Complex(112))
                    case {'Nihonium','Nh'}
                        disp( Periodic_Table_Complex(113))
                    case {'Flerovium','Fl'}
                        disp( Periodic_Table_Complex(114))
                    case {'Moscovium','Mc'}
                        disp( Periodic_Table_Complex(115))
                    case {'Livermorium','Lv'}
                        disp( Periodic_Table_Complex(116))
                    case {'Tennessine','Ts'}
                        disp( Periodic_Table_Complex(117))
                    case {'Oganesson','Og'}
                        disp( Periodic_Table_Complex(118))
                end
            end
        end
        
        %Periodicity
    case 3
        load Chemistry_Suite_Workspace.mat
        Trend = menu('Enter which trend you would like to see', ...
            'Ionization Energy', 'Electron Affinity', 'Atomic Radius');
        
        switch Trend
            %Ionization Energy
            case 1
                x = 1:1:102;
                y = zeros(102,1);
                
                for i = 1:1:102
                    if Periodic_Table_Complex(i).Ionization_Energy__eV == '#N/A'
                        i = i +1;
                    else
                        y(i) = Periodic_Table_Complex(i).Ionization_Energy__eV;
                    end
                end
                
                
                figure
                plot(x,y,'r')
                
                xlabel('Atomic Number (Z)')
                ylabel('Ionization Energy (eV)')
                title('Ionization Energy')
                
                x1 = 2;
                y1 = Periodic_Table_Complex(2).Ionization_Energy__eV;
                txt1 = 'He';
                text(x1,y1,txt1)
                
                x2 = 10;
                y2 = Periodic_Table_Complex(10).Ionization_Energy__eV;
                txt2 = 'Ne';
                text(x2,y2,txt2)
                
                x3 = 18;
                y3 = Periodic_Table_Complex(18).Ionization_Energy__eV;
                txt3 = 'Ar';
                text(x3,y3,txt3)
                
                x4 = 36;
                y4 = Periodic_Table_Complex(36).Ionization_Energy__eV;
                txt4 = 'Kr';
                text(x4,y4,txt4)
                
                x5 = 54;
                y5 = Periodic_Table_Complex(54).Ionization_Energy__eV;
                txt5 = 'Xe';
                text(x5,y5,txt5)
                
                x6 = 80;
                y6 = Periodic_Table_Complex(80).Ionization_Energy__eV;
                txt6 = 'Hg';
                text(x6,y6,txt6)
                
                x7 = 86;
                y7 = Periodic_Table_Complex(86).Ionization_Energy__eV;
                txt7 = 'Rn';
                text(x7,y7,txt7)
                
                x8 = 3;
                y8 = Periodic_Table_Complex(3).Ionization_Energy__eV;
                txt8 = 'Li';
                text(x8,y8,txt8)
                
                x9 = 11;
                y9 = Periodic_Table_Complex(11).Ionization_Energy__eV;
                txt9 = 'Na';
                text(x9,y9,txt9)
                
                x10 = 19;
                y10 = Periodic_Table_Complex(19).Ionization_Energy__eV;
                txt10 = 'K';
                text(x10,y10,txt10)
                
                x11 = 37;
                y11 = Periodic_Table_Complex(37).Ionization_Energy__eV;
                txt11 = 'Rb';
                text(x11,y11,txt11)
                
                x12 = 55;
                y12 = Periodic_Table_Complex(55).Ionization_Energy__eV;
                txt12 = 'Cs';
                text(x12,y12,txt12)
                
                x13 = 87;
                y13 = Periodic_Table_Complex(87).Ionization_Energy__eV;
                txt13 = 'Fr';
                text(x13,y13,txt13)
                %Electron Affinity
            case 2
                x = 1:85;
                y = zeros(85,1);
                
                for i = 1:1:85
                    if Periodic_Table_Complex(i).Electron_Affinity__kJ_per_mol == '#N/A'
                        i = i +1;
                    else
                        y(i) = Periodic_Table_Complex(i).Electron_Affinity__kJ_per_mol;
                    end
                end
                
                figure
                plot(x,y,'g')
                xlabel('Atomic Number (Z)')
                ylabel('Electron Affinity (kJ/mol)')
                title('Electron Affinity')
                %Atomic Radius
            case 3
                x = 1:86;
                y = zeros(86,1);
                
                for i = 1:1:86
                    if Periodic_Table_Complex(i).Atomic_Radius__calculated__pm == '#N/A'
                        i = i +1;
                    else
                        y(i) = Periodic_Table_Complex(i).Atomic_Radius__calculated__pm;
                    end
                end
                
                figure
                plot(x,y,'c')
                xlabel('Atomic Number (Z)')
                ylabel('Atomic Radius (pm)')
                title('Atomic Radius')
                
                x1 = 1;
                y1 = Periodic_Table_Complex(1).Atomic_Radius__calculated__pm;
                txt1 = 'H';
                text(x1,y1,txt1)
                
                x2 = 9;
                y2 = Periodic_Table_Complex(9).Atomic_Radius__calculated__pm;
                txt2 = 'F';
                text(x2,y2,txt2)
                
                x3 = 17;
                y3 = Periodic_Table_Complex(17).Atomic_Radius__calculated__pm;
                txt3 = 'Cl';
                text(x3,y3,txt3)
                
                x4 = 35;
                y4 = Periodic_Table_Complex(35).Atomic_Radius__calculated__pm;
                txt4 = 'Br';
                text(x4,y4,txt4)
                
                x5 = 53;
                y5 = Periodic_Table_Complex(53).Atomic_Radius__calculated__pm;
                txt5 = 'I';
                text(x5,y5,txt5)
                
                x6 = 84;
                y6 = Periodic_Table_Complex(84).Atomic_Radius__calculated__pm;
                txt6 = 'Po';
                text(x6,y6,txt6)
                
                x7 = 3;
                y7 = Periodic_Table_Complex(3).Atomic_Radius__calculated__pm;
                txt7 = 'Li';
                text(x7,y7,txt7)
                
                x8 = 11;
                y8 = Periodic_Table_Complex(11).Atomic_Radius__calculated__pm;
                txt8 = 'Na';
                text(x8,y8,txt8)
                
                x9 = 19;
                y9 = Periodic_Table_Complex(19).Atomic_Radius__calculated__pm;
                txt9 = 'K';
                text(x9,y9,txt9)
                
                x10 = 37;
                y10 = Periodic_Table_Complex(37).Atomic_Radius__calculated__pm;
                txt10 = 'Rb';
                text(x10,y10,txt10)
                
                x11 = 55;
                y11 = Periodic_Table_Complex(55).Atomic_Radius__calculated__pm;
                txt11 = 'Cs';
                text(x11,y11,txt11)
                
                x12 = 87;
                y12 = Periodic_Table_Complex(87).Atomic_Radius__calculated__pm;
                txt12 = 'Fr';
                text(x12,y12,txt12)
                
        end
    %Molar Mass Calculator    
    case 4
        load Chemistry_Suite_Workspace.mat
        disp('Molar Mass Calculator')
        Prompt_F = ('Enter formula of the Compound: ');
        Formula = input(Prompt_F,'s');
        Formula_Array = double(Formula);
        a=1;
        b=1;
        
        for i = 1:length(Formula)
            if Formula_Array(i) > 64 && Formula_Array(i) < 91
                if i == length(Formula)
                    Element = Formula(i);
                elseif Formula_Array(i+1) > 96 && Formula_Array(i+1) < 123
                    Element = [Formula(i) Formula(i+1)];
                    i=i+2;
                else
                    Element = Formula(i);
                end
                for x = 1:length(Periodic_Table_Simple)
                    
                    if Periodic_Table_Simple(x).Symbol == Element
                        Weight(a) = Periodic_Table_Simple(x).Atomic_Weight;
                        a=a+1;
                    end
                end
            end
        end
        
        if Formula_Array(end)>64 && Formula_Array(end)<91 || Formula_Array(end)>96 && Formula_Array(end)<123
            Formula_Array = [Formula_Array 49 30 30];
        else
            Formula_Array = [Formula_Array 30 30 30];
        end
        for j = 1:length(Formula)
            if Formula_Array(j)>64 && Formula_Array(j)<91
                if Formula_Array(j+1)>64 && Formula_Array(j+1)<91
                    Coefficient(b) = 49 -48;
                end
                if Formula_Array(j+1)>47 && Formula_Array(j+1)<58
                    if Formula_Array(j+2)>47 && Formula_Array(j+2)<58
                        Coefficient(b) = sum([(Formula_Array(j+1)-48)*10 Formula_Array(j+2)-48]);
                    else
                        Coefficient(b) = Formula_Array(j+1)-48;
                    end
                end
                if  Formula_Array(j+1)>96 && Formula_Array(j+1)<123
                    if Formula_Array(j+2)>64 && Formula_Array(j+2)<91
                        Coefficient(b)= 49-48;
                    elseif Formula_Array(j+2)>47 && Formula_Array(j+2)<58
                        if Formula_Array(j+3)>47 && Formula_Array(j+3)<58
                            Coefficient(b) = sum([(Formula_Array(j+2)-48)*10 Formula_Array(j+3)-48]);
                        else
                            Coefficient(b)=Formula_Array(j+2)-48;
                        end
                    end
                end
                b=b+1;
            end
            
        end
        Molar_Mass = sum(Weight.*Coefficient);
        fprintf('Molar mass of the compound is %f \n',Molar_Mass)
        
end