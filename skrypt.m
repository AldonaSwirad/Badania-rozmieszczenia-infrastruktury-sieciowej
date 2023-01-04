


%Tworzenie grafu
%Nieskierowany do czesci teoretycznej
    %s={'RT0','RT0','RT2','RT3','RT3','RT4','SW1','RADIO1','RT5','RT6','SW2','SW3','SW5','SW3','SW6','SW6','SW2','SW4'};
    %t={'RT1','RT2','RT3','RT4','RT5','SW1','RADIO1','RADIO2','RT6','SW2','SW3','SW5','SW8','SW6','SW9','SW10','SW4','SW7'};
    %weights=[10,10,10,10,10,1,0.6,0.6,10,1,1,1,1,1,1,1,1,1];
%Skierowany do czesci teoretycznej
    %s={'SW2','RT1','RT0','RT2','RT3','RT3','RT4','SW1','RADIO1','RT5','RT6','SW2','SW3','SW5','SW3','SW6','SW6','SW2','SW4','RT5','SW11','RADIO2','RADIO1','SW1','RT4','SW12','SW11','SW7','SW4','SW8','SW5','SW10','SW9','SW6','SW3'};
    %t={'RT1','RT0','RT2','RT3','RT4','RT5','SW1','RADIO1','RADIO2','RT6','SW2','SW3','SW5','SW8','SW6','SW9','SW10','SW4','SW7','SW11','SW12','RADIO1','SW1','RT4','RT3','SW11','RT5','SW4','SW2','SW5','SW3','SW6','SW6','SW3','SW2'};
    %weights=[5,5,10,10,10,10,1,0.6,0.6,10,1,1,1,1,1,1,1,1,1,1,1,0.1,0.1,1,5,0.1,1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,1];
%Nieskierowany dodatkowe polaczenie w rdzeniu RT-5 <-> RT-7
    %s={'RT-1','RT-0','RT-2','RT-3','RT-4','SW-1','RADIO-1','RT-3','RT-3','RT-5','RT-6','OLT-2','OLT-2','RT-6','SW-2','SW-4','SW-2','SW-3','SW-5','SW-3','SW-6','SW-6','RT-6','SW-11','RT-6','SW-13','SW-14','RT-6','SW-16','SW-17','SW-20','SW-16','SW-16','SW-19','SW-19','RT-6','SW-24','SW-25','RT-6','SW-27','SW-27','SW-29','SW-31','SW-27','SW-30','SW-30','RT-6','SW-35','SW-35','SW-35','RT-6','SW-39','SW-39','RADIO-4','SW-39','SW-39','RADIO-6','RT-6','RT-6','SW-41','RT-6','SW-43','SW-43','SW-43','RT-6','SW-44','RT-6','SW-46','SW-46','SW-46','SW-49','RT-3','RT-7','RT-8','OLT-5','OLT-5','SW-51','SW-51','SW-53','SW-53','SW-64','SW-64','RADIO-11','RADIO-11','RADIO-11','SW-53','SW-53','SW-51','SW-54','SW-51','SW-51','SW-51','SW-57','SW-60','SW-57','SW-51','RT-8','SW-69','SW-72','SW-73','SW-69','SW-75','SW-76','RT-8','SW-70','RT-8','RT-8','SW-71','SW-71','RT-3','SW-81','RADIO-15','SW-81','SW-82','SW-82','SW-83','SW-83','SW-83','SW-83','SW-83','SW-83','SW-81','SW-90','OLT-7','SW-81','SW-81','RT-3','SW-93','SW-93','RT-3','RT-3','SW-95','OLT-9','OLT-9','OLT-11','RT-3','SW-97','RT-5','RT-7'}
    %t={'RT-0','RT-2','RT-3','RT-4','SW-1','RADIO-1','RADIO-2','OLT-1','RT-5','RT-6','OLT-2','OLT-3','OLT-4','SW-2','SW-4','SW-7','SW-3','SW-5','SW-8','SW-6','SW-9','SW-10','SW-11','SW-12','SW-13','SW-14','SW-15','SW-16','SW-17','SW-20','SW-23','SW-18','SW-19','SW-21','SW-22','SW-24','SW-25','SW-26','SW-27','SW-28','SW-29','SW-31','SW-34','SW-30','SW-32','SW-33','SW-35','SW-36','SW-37','SW-38','SW-39','RADIO-3','RADIO-4','RADIO-7','RADIO-5','RADIO-6','RADIO-8','SW-40','SW-41','SW-42','SW-43','SW-99','RADIO-9','RADIO-10','SW-44','SW-45','SW-46','SW-47','SW-48','SW-49','SW-50','RT-7','RT-8','OLT-5','SW-68','SW-51','SW-52','SW-53','SW-63','SW-64','SW-67','RADIO-11','RADIO-12','RADIO-13','RADIO-14','SW-65','SW-66','SW-54','SW-59','SW-55','SW-56','SW-57','SW-60','SW-62','SW-61','SW-58','SW-69','SW-72','SW-73','SW-74','SW-75','SW-76','SW-77','SW-70','SW-78','OLT-6','SW-71','SW-79','SW-80','SW-81','RADIO-15','RADIO-16','SW-82','OLT-12','SW-83','SW-84','SW-85','SW-86','SW-87','SW-88','SW-89','SW-90','OLT-7','OLT-8','SW-91','SW-92','SW-93','RT-9','RT-10','SW-94','SW-95','OLT-9','OLT-10','OLT-11','SW-96','SW-97','SW-98','RT-7','SW-81'}
    %weights=[10,10,10,10,1,0.6,0.6,10,10,10,10,10,10,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0.1,0.1,0.1,0.1,0.1,0.1,1,1,1,1,1,0.1,0.1,1,1,1,1,1,1,1,10,10,10,1,1,1,1,1,1,1,0.1,0.1,0.1,0.1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,10,1,1,1,10,1,1,10,10,1,1,1,1,1,1,1,10,10,10,1,1,10,10,10,10,10,10,10,10,10,10,10,10,10]
%Nieskierowany dodatkowe polaczenie w rdzeniu + RT-7 <-> SW-81
    %s={'RT-1','RT-0','RT-2','RT-3','RT-4','SW-1','RADIO-1','RT-3','RT-3','RT-5','RT-6','OLT-2','OLT-2','RT-6','SW-2','SW-4','SW-2','SW-3','SW-5','SW-3','SW-6','SW-6','RT-6','SW-11','RT-6','SW-13','SW-14','RT-6','SW-16','SW-17','SW-20','SW-16','SW-16','SW-19','SW-19','RT-6','SW-24','SW-25','RT-6','SW-27','SW-27','SW-29','SW-31','SW-27','SW-30','SW-30','RT-6','SW-35','SW-35','SW-35','RT-6','SW-39','SW-39','RADIO-4','SW-39','SW-39','RADIO-6','RT-6','RT-6','SW-41','RT-6','SW-43','SW-43','SW-43','RT-6','SW-44','RT-6','SW-46','SW-46','SW-46','SW-49','RT-3','RT-7','RT-8','OLT-5','OLT-5','SW-51','SW-51','SW-53','SW-53','SW-64','SW-64','RADIO-11','RADIO-11','RADIO-11','SW-53','SW-53','SW-51','SW-54','SW-51','SW-51','SW-51','SW-57','SW-60','SW-57','SW-51','RT-8','SW-69','SW-72','SW-73','SW-69','SW-75','SW-76','RT-8','SW-70','RT-8','RT-8','SW-71','SW-71','RT-3','SW-81','RADIO-15','SW-81','SW-82','SW-82','SW-83','SW-83','SW-83','SW-83','SW-83','SW-83','SW-81','SW-90','OLT-7','SW-81','SW-81','RT-3','SW-93','SW-93','RT-3','RT-3','SW-95','OLT-9','OLT-9','OLT-11','RT-3','SW-97','RT-5','RT-7'}
    %t={'RT-0','RT-2','RT-3','RT-4','SW-1','RADIO-1','RADIO-2','OLT-1','RT-5','RT-6','OLT-2','OLT-3','OLT-4','SW-2','SW-4','SW-7','SW-3','SW-5','SW-8','SW-6','SW-9','SW-10','SW-11','SW-12','SW-13','SW-14','SW-15','SW-16','SW-17','SW-20','SW-23','SW-18','SW-19','SW-21','SW-22','SW-24','SW-25','SW-26','SW-27','SW-28','SW-29','SW-31','SW-34','SW-30','SW-32','SW-33','SW-35','SW-36','SW-37','SW-38','SW-39','RADIO-3','RADIO-4','RADIO-7','RADIO-5','RADIO-6','RADIO-8','SW-40','SW-41','SW-42','SW-43','SW-99','RADIO-9','RADIO-10','SW-44','SW-45','SW-46','SW-47','SW-48','SW-49','SW-50','RT-7','RT-8','OLT-5','SW-68','SW-51','SW-52','SW-53','SW-63','SW-64','SW-67','RADIO-11','RADIO-12','RADIO-13','RADIO-14','SW-65','SW-66','SW-54','SW-59','SW-55','SW-56','SW-57','SW-60','SW-62','SW-61','SW-58','SW-69','SW-72','SW-73','SW-74','SW-75','SW-76','SW-77','SW-70','SW-78','OLT-6','SW-71','SW-79','SW-80','SW-81','RADIO-15','RADIO-16','SW-82','OLT-12','SW-83','SW-84','SW-85','SW-86','SW-87','SW-88','SW-89','SW-90','OLT-7','OLT-8','SW-91','SW-92','SW-93','RT-9','RT-10','SW-94','SW-95','OLT-9','OLT-10','OLT-11','SW-96','SW-97','SW-98','RT-7','SW-81'}
    %weights=[10,10,10,10,1,0.6,0.6,10,10,10,10,10,10,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0.1,0.1,0.1,0.1,0.1,0.1,1,1,1,1,1,0.1,0.1,1,1,1,1,1,1,1,10,10,10,1,1,1,1,1,1,1,0.1,0.1,0.1,0.1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,10,1,1,1,10,1,1,10,10,1,1,1,1,1,1,1,10,10,10,1,1,10,10,10,10,10,10,10,10,10,10,10,10,10]
%Nieskierowany  dodatkowe polaczenia w lisciach
    %s={'RT-1','RT-0','RT-2','RT-3','RT-4','SW-1','RADIO-1','RT-3','RT-3','RT-5','RT-6','OLT-2','OLT-2','RT-6','SW-2','SW-4','SW-2','SW-3','SW-5','SW-3','SW-6','SW-6','RT-6','SW-11','RT-6','SW-13','SW-14','RT-6','SW-16','SW-17','SW-20','SW-16','SW-16','SW-19','SW-19','RT-6','SW-24','SW-25','RT-6','SW-27','SW-27','SW-29','SW-31','SW-27','SW-30','SW-30','RT-6','SW-35','SW-35','SW-35','RT-6','SW-39','SW-39','RADIO-4','SW-39','SW-39','RADIO-6','RT-6','RT-6','SW-41','RT-6','SW-43','SW-43','SW-43','RT-6','SW-44','RT-6','SW-46','SW-46','SW-46','SW-49','RT-3','RT-7','RT-8','OLT-5','OLT-5','SW-51','SW-51','SW-53','SW-53','SW-64','SW-64','RADIO-11','RADIO-11','RADIO-11','SW-53','SW-53','SW-51','SW-54','SW-51','SW-51','SW-51','SW-57','SW-60','SW-57','SW-51','RT-8','SW-69','SW-72','SW-73','SW-69','SW-75','SW-76','RT-8','SW-70','RT-8','RT-8','SW-71','SW-71','RT-3','SW-81','RADIO-15','SW-81','SW-82','SW-82','SW-83','SW-83','SW-83','SW-83','SW-83','SW-83','SW-81','SW-90','OLT-7','SW-81','SW-81','RT-3','SW-93','SW-93','RT-3','RT-3','SW-95','OLT-9','OLT-9','OLT-11','RT-3','SW-97','OLT-4','SW-7','SW-12','SW-15','SW-23','SW-22','SW-26','SW-33','SW-38','RADIO-8','RADIO-10','SW-45'}
    %t={'RT-0','RT-2','RT-3','RT-4','SW-1','RADIO-1','RADIO-2','OLT-1','RT-5','RT-6','OLT-2','OLT-3','OLT-4','SW-2','SW-4','SW-7','SW-3','SW-5','SW-8','SW-6','SW-9','SW-10','SW-11','SW-12','SW-13','SW-14','SW-15','SW-16','SW-17','SW-20','SW-23','SW-18','SW-19','SW-21','SW-22','SW-24','SW-25','SW-26','SW-27','SW-28','SW-29','SW-31','SW-34','SW-30','SW-32','SW-33','SW-35','SW-36','SW-37','SW-38','SW-39','RADIO-3','RADIO-4','RADIO-7','RADIO-5','RADIO-6','RADIO-8','SW-40','SW-41','SW-42','SW-43','SW-99','RADIO-9','RADIO-10','SW-44','SW-45','SW-46','SW-47','SW-48','SW-49','SW-50','RT-7','RT-8','OLT-5','SW-68','SW-51','SW-52','SW-53','SW-63','SW-64','SW-67','RADIO-11','RADIO-12','RADIO-13','RADIO-14','SW-65','SW-66','SW-54','SW-59','SW-55','SW-56','SW-57','SW-60','SW-62','SW-61','SW-58','SW-69','SW-72','SW-73','SW-74','SW-75','SW-76','SW-77','SW-70','SW-78','OLT-6','SW-71','SW-79','SW-80','SW-81','RADIO-15','RADIO-16','SW-82','OLT-12','SW-83','SW-84','SW-85','SW-86','SW-87','SW-88','SW-89','SW-90','OLT-7','OLT-8','SW-91','SW-92','SW-93','RT-9','RT-10','SW-94','SW-95','OLT-9','OLT-10','OLT-11','SW-96','SW-97','SW-98','SW-8','SW-12','SW-15','SW-23','SW-21','SW-26','SW-28','SW-36','RADIO-3','SW-44','SW-45','SW-47'}
    %weights=[10,10,10,10,1,0.6,0.6,10,10,10,10,10,10,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0.1,0.1,0.1,0.1,0.1,0.1,1,1,1,1,1,0.1,0.1,1,1,1,1,1,1,1,10,10,10,1,1,1,1,1,1,1,0.1,0.1,0.1,0.1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,10,1,1,1,10,1,1,10,10,1,1,1,1,1,1,1,10,10,10,1,1,10,10,10,10,10,10,10,10,10,10,10,1,1,1,1,1,1,1,1,1,1,1,1]
%Nieskierowany dodatkowe połączenia w centralnej warstwie (switche)
    %s={'RT-1','RT-0','RT-2','RT-3','RT-4','SW-1','RADIO-1','RT-3','RT-3','RT-5','RT-6','OLT-2','OLT-2','RT-6','SW-2','SW-4','SW-2','SW-3','SW-5','SW-3','SW-6','SW-6','RT-6','SW-11','RT-6','SW-13','SW-14','RT-6','SW-16','SW-17','SW-20','SW-16','SW-16','SW-19','SW-19','RT-6','SW-24','SW-25','RT-6','SW-27','SW-27','SW-29','SW-31','SW-27','SW-30','SW-30','RT-6','SW-35','SW-35','SW-35','RT-6','SW-39','SW-39','RADIO-4','SW-39','SW-39','RADIO-6','RT-6','RT-6','SW-41','RT-6','SW-43','SW-43','SW-43','RT-6','SW-44','RT-6','SW-46','SW-46','SW-46','SW-49','RT-3','RT-7','RT-8','OLT-5','OLT-5','SW-51','SW-51','SW-53','SW-53','SW-64','SW-64','RADIO-11','RADIO-11','RADIO-11','SW-53','SW-53','SW-51','SW-54','SW-51','SW-51','SW-51','SW-57','SW-60','SW-57','SW-51','RT-8','SW-69','SW-72','SW-73','SW-69','SW-75','SW-76','RT-8','SW-70','RT-8','RT-8','SW-71','SW-71','RT-3','SW-81','RADIO-15','SW-81','SW-82','SW-82','SW-83','SW-83','SW-83','SW-83','SW-83','SW-83','SW-81','SW-90','OLT-7','SW-81','SW-81','RT-3','SW-93','SW-93','RT-3','RT-3','SW-95','OLT-9','OLT-9','OLT-11','RT-3','SW-97','OLT-2','SW-2','SW-11','SW-13','SW-16','SW-24','SW-27','SW-35','SW-39','SW-40','SW-41','SW-43','SW-44'}
    %t={'RT-0','RT-2','RT-3','RT-4','SW-1','RADIO-1','RADIO-2','OLT-1','RT-5','RT-6','OLT-2','OLT-3','OLT-4','SW-2','SW-4','SW-7','SW-3','SW-5','SW-8','SW-6','SW-9','SW-10','SW-11','SW-12','SW-13','SW-14','SW-15','SW-16','SW-17','SW-20','SW-23','SW-18','SW-19','SW-21','SW-22','SW-24','SW-25','SW-26','SW-27','SW-28','SW-29','SW-31','SW-34','SW-30','SW-32','SW-33','SW-35','SW-36','SW-37','SW-38','SW-39','RADIO-3','RADIO-4','RADIO-7','RADIO-5','RADIO-6','RADIO-8','SW-40','SW-41','SW-42','SW-43','SW-99','RADIO-9','RADIO-10','SW-44','SW-45','SW-46','SW-47','SW-48','SW-49','SW-50','RT-7','RT-8','OLT-5','SW-68','SW-51','SW-52','SW-53','SW-63','SW-64','SW-67','RADIO-11','RADIO-12','RADIO-13','RADIO-14','SW-65','SW-66','SW-54','SW-59','SW-55','SW-56','SW-57','SW-60','SW-62','SW-61','SW-58','SW-69','SW-72','SW-73','SW-74','SW-75','SW-76','SW-77','SW-70','SW-78','OLT-6','SW-71','SW-79','SW-80','SW-81','RADIO-15','RADIO-16','SW-82','OLT-12','SW-83','SW-84','SW-85','SW-86','SW-87','SW-88','SW-89','SW-90','OLT-7','OLT-8','SW-91','SW-92','SW-93','RT-9','RT-10','SW-94','SW-95','OLT-9','OLT-10','OLT-11','SW-96','SW-97','SW-98','SW-2','SW-11','SW-13','SW-16','SW-24','SW-27','SW-35','SW-39','SW-40','SW-41','SW-43','SW-44','SW-46'}
    %weights=[10,10,10,10,1,0.6,0.6,10,10,10,10,10,10,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0.1,0.1,0.1,0.1,0.1,0.1,1,1,1,1,1,0.1,0.1,1,1,1,1,1,1,1,10,10,10,1,1,1,1,1,1,1,0.1,0.1,0.1,0.1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,10,1,1,1,10,1,1,10,10,1,1,1,1,1,1,1,10,10,10,1,1,10,10,10,10,10,10,10,10,10,10,10,1,1,1,1,1,1,1,1,1,1,1,1,1]
%Skierowany symetryczny
   s={'RT-1','RT-0','RT-2','RT-3','RT-4','SW-1','RADIO-1','RT-3','RT-3','RT-5','RT-6','OLT-2','OLT-2','RT-6','SW-2','SW-4','SW-2','SW-3','SW-5','SW-3','SW-6','SW-6','RT-6','SW-11','RT-6','SW-13','SW-14','RT-6','SW-16','SW-17','SW-20','SW-16','SW-16','SW-19','SW-19','RT-6','SW-24','SW-25','RT-6','SW-27','SW-27','SW-29','SW-31','SW-27','SW-30','SW-30','RT-6','SW-35','SW-35','SW-35','RT-6','SW-39','SW-39','RADIO-4','SW-39','SW-39','RADIO-6','RT-6','RT-6','SW-41','RT-6','SW-43','SW-43','SW-43','RT-6','SW-44','RT-6','SW-46','SW-46','SW-46','SW-49','RT-3','RT-7','RT-8','OLT-5','OLT-5','SW-51','SW-51','SW-53','SW-53','SW-64','SW-64','RADIO-11','RADIO-11','RADIO-11','SW-53','SW-53','SW-51','SW-54','SW-51','SW-51','SW-51','SW-57','SW-60','SW-57','SW-51','RT-8','SW-69','SW-72','SW-73','SW-69','SW-75','SW-76','RT-8','SW-70','RT-8','RT-8','SW-71','SW-71','RT-3','SW-81','RADIO-15','SW-81','SW-82','SW-82','SW-83','SW-83','SW-83','SW-83','SW-83','SW-83','SW-81','SW-90','OLT-7','SW-81','SW-81','RT-3','SW-93','SW-93','RT-3','RT-3','SW-95','OLT-9','OLT-9','OLT-11','RT-3','SW-97','RT-0','RT-2','RT-3','RT-4','SW-1','RADIO-1','RADIO-2','OLT-1','RT-5','RT-6','OLT-2','OLT-3','OLT-4','SW-2','SW-4','SW-7','SW-3','SW-5','SW-8','SW-6','SW-9','SW-10','SW-11','SW-12','SW-13','SW-14','SW-15','SW-16','SW-17','SW-20','SW-23','SW-18','SW-19','SW-21','SW-22','SW-24','SW-25','SW-26','SW-27','SW-28','SW-29','SW-31','SW-34','SW-30','SW-32','SW-33','SW-35','SW-36','SW-37','SW-38','SW-39','RADIO-3','RADIO-4','RADIO-7','RADIO-5','RADIO-6','RADIO-8','SW-40','SW-41','SW-42','SW-43','SW-99','RADIO-9','RADIO-10','SW-44','SW-45','SW-46','SW-47','SW-48','SW-49','SW-50','RT-7','RT-8','OLT-5','SW-68','SW-51','SW-52','SW-53','SW-63','SW-64','SW-67','RADIO-11','RADIO-12','RADIO-13','RADIO-14','SW-65','SW-66','SW-54','SW-59','SW-55','SW-56','SW-57','SW-60','SW-62','SW-61','SW-58','SW-69','SW-72','SW-73','SW-74','SW-75','SW-76','SW-77','SW-70','SW-78','OLT-6','SW-71','SW-79','SW-80','SW-81','RADIO-15','RADIO-16','SW-82','OLT-12','SW-83','SW-84','SW-85','SW-86','SW-87','SW-88','SW-89','SW-90','OLT-7','OLT-8','SW-91','SW-92','SW-93','RT-9','RT-10','SW-94','SW-95','OLT-9','OLT-10','OLT-11','SW-96','SW-97','SW-98'};
   t={'RT-0','RT-2','RT-3','RT-4','SW-1','RADIO-1','RADIO-2','OLT-1','RT-5','RT-6','OLT-2','OLT-3','OLT-4','SW-2','SW-4','SW-7','SW-3','SW-5','SW-8','SW-6','SW-9','SW-10','SW-11','SW-12','SW-13','SW-14','SW-15','SW-16','SW-17','SW-20','SW-23','SW-18','SW-19','SW-21','SW-22','SW-24','SW-25','SW-26','SW-27','SW-28','SW-29','SW-31','SW-34','SW-30','SW-32','SW-33','SW-35','SW-36','SW-37','SW-38','SW-39','RADIO-3','RADIO-4','RADIO-7','RADIO-5','RADIO-6','RADIO-8','SW-40','SW-41','SW-42','SW-43','SW-99','RADIO-9','RADIO-10','SW-44','SW-45','SW-46','SW-47','SW-48','SW-49','SW-50','RT-7','RT-8','OLT-5','SW-68','SW-51','SW-52','SW-53','SW-63','SW-64','SW-67','RADIO-11','RADIO-12','RADIO-13','RADIO-14','SW-65','SW-66','SW-54','SW-59','SW-55','SW-56','SW-57','SW-60','SW-62','SW-61','SW-58','SW-69','SW-72','SW-73','SW-74','SW-75','SW-76','SW-77','SW-70','SW-78','OLT-6','SW-71','SW-79','SW-80','SW-81','RADIO-15','RADIO-16','SW-82','OLT-12','SW-83','SW-84','SW-85','SW-86','SW-87','SW-88','SW-89','SW-90','OLT-7','OLT-8','SW-91','SW-92','SW-93','RT-9','RT-10','SW-94','SW-95','OLT-9','OLT-10','OLT-11','SW-96','SW-97','SW-98','RT-1','RT-0','RT-2','RT-3','RT-4','SW-1','RADIO-1','RT-3','RT-3','RT-5','RT-6','OLT-2','OLT-2','RT-6','SW-2','SW-4','SW-2','SW-3','SW-5','SW-3','SW-6','SW-6','RT-6','SW-11','RT-6','SW-13','SW-14','RT-6','SW-16','SW-17','SW-20','SW-16','SW-16','SW-19','SW-19','RT-6','SW-24','SW-25','RT-6','SW-27','SW-27','SW-29','SW-31','SW-27','SW-30','SW-30','RT-6','SW-35','SW-35','SW-35','RT-6','SW-39','SW-39','RADIO-4','SW-39','SW-39','RADIO-6','RT-6','RT-6','SW-41','RT-6','SW-43','SW-43','SW-43','RT-6','SW-44','RT-6','SW-46','SW-46','SW-46','SW-49','RT-3','RT-7','RT-8','OLT-5','OLT-5','SW-51','SW-51','SW-53','SW-53','SW-64','SW-64','RADIO-11','RADIO-11','RADIO-11','SW-53','SW-53','SW-51','SW-54','SW-51','SW-51','SW-51','SW-57','SW-60','SW-57','SW-51','RT-8','SW-69','SW-72','SW-73','SW-69','SW-75','SW-76','RT-8','SW-70','RT-8','RT-8','SW-71','SW-71','RT-3','SW-81','RADIO-15','SW-81','SW-82','SW-82','SW-83','SW-83','SW-83','SW-83','SW-83','SW-83','SW-81','SW-90','OLT-7','SW-81','SW-81','RT-3','SW-93','SW-93','RT-3','RT-3','SW-95','OLT-9','OLT-9','OLT-11','RT-3','SW-97'};
   weights=[10,10,10,10,1,0.6,0.6,10,10,10,10,10,10,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0.1,0.1,0.1,0.1,0.1,0.1,1,1,1,1,1,0.1,0.1,1,1,1,1,1,1,1,10,10,10,1,1,1,1,1,1,1,0.1,0.1,0.1,0.1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,10,1,1,1,10,1,1,10,10,1,1,1,1,1,1,1,10,10,10,1,1,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,1,0.6,0.6,10,10,10,10,10,10,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0.1,0.1,0.1,0.1,0.1,0.1,1,1,1,1,1,0.1,0.1,1,1,1,1,1,1,1,10,10,10,1,1,1,1,1,1,1,0.1,0.1,0.1,0.1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,10,1,1,1,10,1,1,10,10,1,1,1,1,1,1,1,10,10,10,1,1,10,10,10,10,10,10,10,10,10,10,10];
%Skierowany z rozproszonymi połączeniami
    %s={'RT-1','RT-0','RT-2','RT-3','RT-4','SW-1','RADIO-1','RT-3','RT-3','RT-5','RT-6','OLT-2','OLT-2','RT-6','SW-2','SW-4','SW-2','SW-3','SW-5','SW-3','SW-6','SW-6','RT-6','SW-11','RT-6','SW-13','SW-14','RT-6','SW-16','SW-17','SW-20','SW-16','SW-16','SW-19','SW-19','RT-6','SW-24','SW-25','RT-6','SW-27','SW-27','SW-29','SW-31','SW-27','SW-30','SW-30','RT-6','SW-35','SW-35','SW-35','RT-6','SW-39','SW-39','RADIO-4','SW-39','SW-39','RADIO-6','RT-6','RT-6','SW-41','RT-6','SW-43','SW-43','SW-43','RT-6','SW-44','RT-6','SW-46','SW-46','SW-46','SW-49','RT-3','RT-7','RT-8','OLT-5','OLT-5','SW-51','SW-51','SW-53','SW-53','SW-64','SW-64','RADIO-11','RADIO-11','RADIO-11','SW-53','SW-53','SW-51','SW-54','SW-51','SW-51','SW-51','SW-57','SW-60','SW-57','SW-51','RT-8','SW-69','SW-72','SW-73','SW-69','SW-75','SW-76','RT-8','SW-70','RT-8','RT-8','SW-71','SW-71','RT-3','SW-81','RADIO-15','SW-81','SW-82','SW-82','SW-83','SW-83','SW-83','SW-83','SW-83','SW-83','SW-81','SW-90','OLT-7','SW-81','SW-81','RT-3','SW-93','SW-93','RT-3','RT-3','SW-95','OLT-9','OLT-9','OLT-11','RT-3','SW-97','RT-0','RT-2','RT-3','RT-4','OLT-1','RT-5','RT-6','OLT-2','OLT-3','OLT-4','SW-2','SW-4','SW-7','SW-3','SW-5','SW-8','SW-6','SW-9','SW-10','SW-11','SW-12','SW-13','SW-14','SW-15','SW-16','SW-18','SW-19','SW-21','SW-22','SW-24','SW-25','SW-26','SW-27','SW-28','SW-29','SW-31','SW-34','SW-30','SW-32','SW-33','SW-35','SW-36','SW-37','SW-38','SW-39','RADIO-3','RADIO-4','RADIO-7','RADIO-5','RADIO-6','RADIO-8','SW-40','SW-41','SW-42','SW-43','SW-99','RADIO-9','RADIO-10','SW-44','SW-45','SW-46','SW-47','SW-48','SW-49','SW-50','RT-8','OLT-5','SW-68','SW-51','SW-52','SW-63','SW-64','SW-67','RADIO-11','RADIO-12','RADIO-13','RADIO-14','SW-65','SW-66','SW-54','SW-59','SW-55','SW-56','SW-57','SW-60','SW-62','SW-61','SW-58','SW-69','SW-72','SW-73','SW-74','SW-75','SW-76','SW-77','SW-70','SW-78','OLT-6','SW-71','SW-79','SW-80','SW-81','RADIO-15','RADIO-16','SW-82','OLT-12','SW-84','SW-85','SW-86','SW-87','SW-88','SW-89','SW-90','OLT-7','OLT-8','SW-91','SW-92','SW-93','RT-9','RT-10','SW-94','SW-95','OLT-9','OLT-10','OLT-11','SW-96','SW-97','SW-98','RT-7','SW-53','SW-83','SW-23','RADIO-2'}
    %t={'RT-0','RT-2','RT-3','RT-4','SW-1','RADIO-1','RADIO-2','OLT-1','RT-5','RT-6','OLT-2','OLT-3','OLT-4','SW-2','SW-4','SW-7','SW-3','SW-5','SW-8','SW-6','SW-9','SW-10','SW-11','SW-12','SW-13','SW-14','SW-15','SW-16','SW-17','SW-20','SW-23','SW-18','SW-19','SW-21','SW-22','SW-24','SW-25','SW-26','SW-27','SW-28','SW-29','SW-31','SW-34','SW-30','SW-32','SW-33','SW-35','SW-36','SW-37','SW-38','SW-39','RADIO-3','RADIO-4','RADIO-7','RADIO-5','RADIO-6','RADIO-8','SW-40','SW-41','SW-42','SW-43','SW-99','RADIO-9','RADIO-10','SW-44','SW-45','SW-46','SW-47','SW-48','SW-49','SW-50','RT-7','RT-8','OLT-5','SW-68','SW-51','SW-52','SW-53','SW-63','SW-64','SW-67','RADIO-11','RADIO-12','RADIO-13','RADIO-14','SW-65','SW-66','SW-54','SW-59','SW-55','SW-56','SW-57','SW-60','SW-62','SW-61','SW-58','SW-69','SW-72','SW-73','SW-74','SW-75','SW-76','SW-77','SW-70','SW-78','OLT-6','SW-71','SW-79','SW-80','SW-81','RADIO-15','RADIO-16','SW-82','OLT-12','SW-83','SW-84','SW-85','SW-86','SW-87','SW-88','SW-89','SW-90','OLT-7','OLT-8','SW-91','SW-92','SW-93','RT-9','RT-10','SW-94','SW-95','OLT-9','OLT-10','OLT-11','SW-96','SW-97','SW-98','RT-1','RT-0','RT-2','RT-3','RT-3','RT-3','RT-5','RT-6','OLT-2','OLT-2','RT-6','SW-2','SW-4','SW-2','SW-3','SW-5','SW-3','SW-6','SW-6','RT-6','SW-11','RT-6','SW-13','SW-14','RT-6','SW-16','SW-16','SW-19','SW-19','RT-6','SW-24','SW-25','RT-6','SW-27','SW-27','SW-29','SW-31','SW-27','SW-30','SW-30','RT-6','SW-35','SW-35','SW-35','RT-6','SW-39','SW-39','RADIO-4','SW-39','SW-39','RADIO-6','RT-6','RT-6','SW-41','RT-6','SW-43','SW-43','SW-43','RT-6','SW-44','RT-6','SW-46','SW-46','SW-46','SW-49','RT-7','RT-8','OLT-5','OLT-5','SW-51','SW-53','SW-53','SW-64','SW-64','RADIO-11','RADIO-11','RADIO-11','SW-53','SW-53','SW-51','SW-54','SW-51','SW-51','SW-51','SW-57','SW-60','SW-57','SW-51','RT-8','SW-69','SW-72','SW-73','SW-69','SW-75','SW-76','RT-8','SW-70','RT-8','RT-8','SW-71','SW-71','RT-3','SW-81','RADIO-15','SW-81','SW-82','SW-83','SW-83','SW-83','SW-83','SW-83','SW-83','SW-81','SW-90','OLT-7','SW-81','SW-81','RT-3','SW-93','SW-93','RT-3','RT-3','SW-95','OLT-9','OLT-9','OLT-11','RT-3','SW-97','RT-5','RT-8','SW-81','SW-16','RT-4'}
    %weights=[10,10,10,10,1,0.6,0.6,10,10,10,10,10,10,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0.1,0.1,0.1,0.1,0.1,0.1,1,1,1,1,1,0.1,0.1,1,1,1,1,1,1,1,10,10,10,1,1,1,1,1,1,1,0.1,0.1,0.1,0.1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,10,1,1,1,10,1,1,10,10,1,1,1,1,1,1,1,10,10,10,1,1,10,10,10,10,10,10,10,10,10,10,10,2,2,2,2,2,2,2,2,2,2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.02,0.02,0.02,0.02,0.02,0.02,0.2,0.2,0.2,0.2,0.2,0.02,0.02,0.2,0.2,0.2,0.2,0.2,0.2,0.2,2,2,0.2,0.2,0.2,0.2,0.2,0.2,0.02,0.02,0.02,0.02,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,2,0.2,0.2,0.2,2,0.2,0.2,2,2,0.2,0.2,0.2,0.2,0.2,0.2,2,2,2,0.2,0.2,2,2,2,2,2,2,2,2,2,2,2,10,5,2,0.2,0.2]

% graph - nieskierowany,  digraph - skierowany
UD_G1= digraph(s,t,weights);


plot(UD_G1,'Layout','layered','Direction','down','Sources',[2],'EdgeLabel',UD_G1.Edges.Weight);

%Funkcje
%{
function punkty_artykulacji(UD_G,s,t)
AP_G = [];
k=1;
p = plot(UD_G,'Layout','layered');
i = numnodes(UD_G);
for i=1:i
UD_G = rmnode(UD_G,i);
bins = conncomp(UD_G);
if max(bins) ~= 1
    AP_G(k,1) = i; 
    k=k+1;
end
UD_G=graph(s,t);
end
highlight(p,AP_G,'NodeColor','r','MarkerSize',5)
AP_G

function centralnosc_bliskosci_nieskierowane(UD_G)
NN_G = numnodes(UD_G);
CC_UD_G = centrality(UD_G,'closeness');
bar(1:NN_G,CC_UD_G);
grid minor;
title('Centralno�� blisko�ci dla poszczeg�lnych w�z��w'); 
ylabel('Centralno�� blisko�ci'); 
xlabel('Numer w�z�a');

function centralnosc_bliskosci_skierowane(D_G)
NN_G = numnodes(D_G)
CIC_D_G = centrality(D_G,'incloseness');
COC_D_G = centrality(D_G,'outcloseness');
CC_D_G = [CIC_D_G COC_D_G];
bar(1:NN_G,CC_D_G);
grid minor;
title('Centralno�� blisko�ci dla poszczeg�lnych w�z��w'); 
ylabel('Centralno�� blisko�ci'); 
xlabel('Numer w�z�a');
Wychodzace = sum(COC_D_G)
Przychodzace = sum(CIC_D_G)

function centralnosc_wzajemnosci(G)
NN_G = numnodes(G);
CB_G = centrality(G,'betweenness');
bar(1:NN_G,CB_G);
grid minor;
title('Centralno�� wzajemno�ci dla poszczeg�lnych w�z��w'); 
ylabel('Centralno�� wzajemno�ci'); 
xlabel('Numer w�z�a');

function liczba_polaczen(G)
Liczba_polaczen = numedges(G)

function liczba_wezlow(G)
Liczba_wezlow = numnodes(G)

function maksymalny_przeplyw(G,w_p,w_k)
p = plot(G);
[mf,GF] = maxflow(G,w_p,w_k);
highlight(p,GF,'EdgeColor','r','LineWidth',2);
MAX_FLOW=mf
plot(GF,'EdgeLabel',GF.Edges.Weight);

function min_drzewo_rozpinajace(UD_G)
p = plot(UD_G,'Layout','layered','EdgeLabel',UD_G.Edges.Weight);
[T] = minspantree(UD_G);
highlight(p,T,'EdgeColor','r','LineWidth',3)

%plot(T)

function mosty(UD_G,s,t)
UD_G = graph(s,t);
k=1;
p = plot(UD_G,'Layout','layered');

P=zeros(length(s),1);
P = string(P);

K=zeros(length(s),1);
K = string(K);

a = length(s);
for i=1:a
UD_G = rmedge(UD_G,s(i),t(i));
bins = conncomp(UD_G);
if max(bins) ~= 1
    P(k)= s(i);
    K(k)= t(i);
    BRIDGES_G(k,1) = s(i); 
    BRIDGES_G(k,2) = t(i); 
    k=k+1;
end
UD_G = addedge(UD_G,s(i),t(i));
end
P = P(1:k-1);
K = K(1:k-1);
highlight(p,P,K,'EdgeColor','r','LineWidth',3)
BRIDGES_G

function najkrotsza_droga(G,w_p,w_k)
p = plot(G,'Layout','layered');
[P,d,edgepath] = shortestpath(G,w_p,w_k);
highlight(p,P,'EdgeColor','r','LineWidth',5,'NodeColor','r')
S_P = P


function polaczeniowosc(G)
NN_G = numnodes(G);
NE_G = numedges(G);
C_G=(2*NE_G)/(NN_G*(NN_G-1))

function stopien_skierowany(D_G)
NN_G = numnodes(D_G);
D_D_G = zeros(NN_G,1);
ID = indegree(D_G);
OD = outdegree(D_G);
for i=1:NN_G
D_D_G(i,1) = ID(i)+OD(i);
end
D_MaxD_G = max(D_D_G)
D_MinD_G = min(D_D_G)
D_AvgD_G = mean(D_D_G)

function srednia_dlugosc_drogi(G)
DISTANCE_G = distances(G,'Method','unweighted');
DISTANCE_G(isinf(DISTANCE_G)) = NaN;
AVG_DISTANCE_G = nanmean(nanmean(DISTANCE_G))

function srednica(G)
DISTANCE_G = distances(G,'Method','unweighted');
DISTANCE_G(isinf(DISTANCE_G)|isnan(DISTANCE_G)) = 0;
DIAMETER_G = max(max(DISTANCE_G))

function stopien_nieskierowany(UD_G)
UD_D_G = degree(UD_G);
UD_MaxD_G = max(UD_D_G)
UD_MinD_G = min(UD_D_G)
UD_AvgD_G = mean(UD_D_G)


function wspolczynnik_gronowania_skierowany(D_G)
NN_G = numnodes(D_G);
D_D_G = zeros(NN_G,1);
ID = indegree(D_G);
OD = outdegree(D_G);
for i=1:NN_G
D_D_G(i,1) = ID(i)+OD(i);
end
E = NN_G-1;
for i=1:NN_G
  WG_G(i,1)=(2*D_D_G(i,1))/(E*(E-1)); 
end
D_WGC_G = mean(WG_G)


function wspolczynnik_gronowania_nieskierowany(UD_G)
NN_G = numnodes(UD_G);
UD_D_G = degree(UD_G);
E = NN_G-1;
for i=1:NN_G
  WG_G(i,1)=(2*UD_D_G(i,1))/(E*(E-1)); 
end
UD_WGC_G = mean(WG_G)

%}


%centralnosc_bliskosci_nieskierowane(UD_G1);
%centralnosc_bliskosci_skierowane(UD_G1);
%centralnosc_wzajemnosci(UD_G1);

%liczba_polaczen(UD_G1);
%liczba_wezlow(UD_G1);

%min_drzewo_rozpinajace(UD_G1);
%mosty(UD_G1,s,t); 

%najkrotsza_droga(UD_G1,'OLT-4','SW-5');
%maksymalny_przeplyw(UD_G1,'SW-50','RADIO-14');

%polaczeniowosc(UD_G1);
%punkty_artykulacji(UD_G1,s,t);

%srednia_dlugosc_drogi(UD_G1);
%srednica(UD_G1);

%stopien_nieskierowany(UD_G1);
%stopien_skierowany(UD_G1);

%wspolczynnik_gronowania_nieskierowany(UD_G1);
%wspolczynnik_gronowania_skierowany(UD_G1);

% building traffic map - traffic values for lower nodes

keySet = unique([s,t]);
valueSet = zeros(1, length(keySet));

trafficMap = containers.Map(keySet,valueSet);

% assigning mock values for unit test

trafficMap('SW-34') = 1;

trafficMap('RADIO-14') = 0.5;

disp('umowna brama domyslna: RT-2')

% should return 1.5

disp('ruch w calej sieci:')

simulateNetworkTraffic(UD_G1, 'RT-2', 'RT-2', trafficMap)

% should return 1

disp('ruch w galezi RT-5:')

simulateNetworkTraffic(UD_G1, 'RT-2', 'RT-5', trafficMap)