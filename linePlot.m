

%Channel 1
fs=500

algStartOne= 296.992
algStopOne=332.512
algOne = algStartOne*fs:algStopOne*fs;
aZone= length(algOne);
yone= ones(1,aZone)*1000

mStOne=227
mEdOne=441
manOne=mStOne*fs:mEdOne*fs;
mZone= length(manOne);
xone=ones(1,mZone)*1100
%% 
%channel 2
algStartTwo= 303.072
algStopTwo=352.608
algTwo = algStartTwo*fs:algStopTwo*fs;
aZtwo= length(algTwo);
ytwo= ones(1,aZtwo)*1000

mStTwo=274
mEdTwo=441
manTwo=mStTwo*fs:mEdTwo*fs;
mZtwo= length(manTwo);
xtwo=ones(1,mZtwo)*1100
%% 

% channel 3

algStartThree= 303.264
algStopThree= 346.24
algThree=algStartThree*fs:algStopThree*fs;
aZthree=length(algThree);
ythree=ones(1,aZthree)*1250

mStThree=273
mEdThree=441
manThree=mStThree*fs:mEdThree*fs;
mZthree= length(manThree);
xthree=ones(1,mZthree)*1350;

%% 
%channel 4
algStartFour=312.096
algStopFour=349.184
algFour=algStartFour*fs:algStopFour*fs;
aZfour=length(algFour);
yfour=ones(1,aZfour)*1000;

mStFour= 282
mEdFour=441
manFour= mStFour*fs:mEdFour*fs;
mZfour=length(manFour);
xfour=ones(1,mZfour)*1100;

%% 

%making the variables for the lengend
tenSeconds = 80*fs;

figure
s = [0 tenSeconds]
loc = [-600 -600]
placement = 250000

uV = 200;
uvPlot = [0 uV]

annotation('textbox',dim,'String',str,'FitBoxToText','on', 'EdgeColor','none');
xlim([0 350000])
ylim ([-1400 1400])

hold on
uV = 200;
uvPlot = [0 uV]
plot ([placement placement],uvPlot-600,'k', 'LineWidth',2)

% dimX = [.61 .15 .1 .1];
% strX = '80 Seconds';
% annotation('textbox',dimX,'String',X,'FitBoxToText','on', 'EdgeColor','none');

% dim = [.61 .15 .1 .1];
% str = '200 µV';
% annotation('textbox',dim,'String',str,'FitBoxToText','on', 'EdgeColor','none');


%%

C1= EEG(:,1);
C2=EEG(:,2);
C3=EEG(:,3);
C4=EEG(:,4);

subplot (2,2,1) 
plot (C1,'k')
hold on 
plot(algOne,yone,'ro')
hold on 
plot(manOne,xone,'go')
xlim([0 350000])
ylim ([-800 1500])
box off 
axis off

subplot (2,2,2)
plot (C2,'k')
hold on 
plot(algTwo,ytwo,'ro')
hold on 
plot(manTwo,xtwo,'go')
xlim([0 350000])
ylim ([-800 1500])
box off 
axis off

subplot (2,2,3)
plot (C3,'k')
hold on 
plot(algThree,ythree,'ro')
hold on
plot(manThree, xthree,'go')
xlim([0 350000])
ylim ([-800 1500])
box off 
axis off

subplot(2,2,4)
plot (C4,'k') 
hold on 
plot(algFour,yfour,'ro')
hold on 
plot(manFour,xfour,'go')
hold on 
plot (s+placement,loc,'k', 'LineWidth',2)
hold on 
plot ([placement placement],uvPlot-600,'k', 'LineWidth',2)
dim = [.4 .01 .1 .1];
str = '200 µV';
annotation('textbox',dim,'String',str,'FitBoxToText','on', 'EdgeColor','none');
dimX = [.45 .01 .1 .1];
strX = '80 Seconds';
annotation('textbox',dimX,'String',strX,'FitBoxToText','on', 'EdgeColor','none');

xlim([0 350000])
ylim ([-800 1500])
box off 
axis off

hold on


