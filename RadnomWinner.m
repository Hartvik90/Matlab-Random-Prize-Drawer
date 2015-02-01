clc
clear
close all

%Names of participants
participants_list = {
'Adam Nuridov'
'Johan Le Gall'
'Patrick Håland'
'Fabriece Sumuni'
'Leif Andreas Rudlang'
'Olav "Den hellige" Karstensen'
'Mathias Somby'
'Marius Nedrelid'
'Fredrik Wigsnes Jensen'
'Tomasz Gliniecki'
'Benoni Frøland'
'Sivert Tvedt Sliper'
'Ine Foss'
'Jonas Bjørheim'
'Christer Jensen'
}';


%% Plot the share of 100000 picks in a histogram to make sure everyone have an even chanse.
fprintf('Press enter to plot the chances of eatch participant:\n');
input(' ');
participants = length(participants_list);
for i = 1:1e6
j(i) = int16(ceil(rand(1)*participants));
end

%Random number to pick from the list
rn1 = ceil(rand(1)*1e6);
rn2 = ceil(rand(1)*1e6);

histogram(j)

disp('Even test done. Please ensure all participants have even odds.');
pause(1);

%%

fprintf('Press enter to show the first place:\n');
input(' ');

fprintf('First place goes to: \n');
pause(2);
fprintf('***DRUMBEAT***\n');
pause(2)
pause(1);
disp('The One...')
pause(1.5)
disp('The True...')
pause(2)
disp('The Incredible...')
pause(3)
fprintf('Lucky, %s!\n',participants_list{j(rn1)});


pause(4);
fprintf('Press enter to show the second place:\n');
input(' ');
lucky = j(rn2);
teller=0;


%Prevents 1. winner to win again
while lucky == j(rn1)
    teller = teller + 1;
    lucky = j(rn1+teller);
end

pause(1);
fprintf('Second place goes to: \n');
pause(3);
fprintf('***DRUMROLL***\n');
pause(1.5)
disp('The Second...')
pause(1.5)
disp('The second True...')
pause(2)
disp('The second Incredible...')
pause(3)
fprintf('%s! \n',participants_list{lucky});
pause(3)
fprintf('Congratulations, %s and %s! \n',participants_list{j(rn1)},participants_list{lucky});
