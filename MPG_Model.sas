
data newdata;
input HP	MPG	VOL	SP	WT;
datalines;
49	53.70068138	89	104.1853528	28.7620589
55	50.01340115	92	105.4612635	30.46683298
55	50.01340115	92	105.4612635	30.19359657
70	45.69632238	92	113.4612635	30.63211391
53	50.50423183	92	104.4612635	29.88914864
70	45.69632238	89	113.1853528	29.59176832
55	50.01340115	92	105.4612635	30.30847957
62	46.71655428	50	102.5985128	15.84775807
62	46.71655428	50	102.5985128	16.35948352
80	42.29907817	94	115.6452041	30.92015417
73	44.65283424	89	111.1853528	29.36334142
92	39.3540941	50	117.5985128	15.75353468
92	39.3540941	99	122.1050553	32.81359241
73	44.65283424	89	111.1853528	29.3784363
66	45.73489292	89	108.1853528	29.34727902
73	44.65283424	89	111.1853528	29.60452658
78	42.78990885	91	114.3692933	29.5357836
92	39.3540941	50	117.5985128	16.19412154
78	42.78990885	91	114.3692933	29.92939368
90	38.90183397	103	118.4729364	33.51697417
92	38.4110033	99	119.1050553	32.32464971
74	42.8284794	107	110.8408174	34.90821127
95	38.31060597	101	120.2889958	32.6758277
81	40.47472334	96	113.8291446	31.83712236
95	38.31060597	89	119.1853528	28.78172789
92	38.4110033	50	114.5985128	16.04317492
92	38.4110033	117	120.7605199	38.06282335
92	38.4110033	99	119.1050553	32.83506939
52	43.4694339	104	99.56490661	34.4832075
103	35.40419245	107	121.8408174	35.54935984
84	39.4312352	114	113.4846092	37.04235003
84	39.4312352	101	112.2889958	33.23436141
102	36.28545648	97	119.9211148	31.38004084
102	36.28545648	113	121.3926389	37.57328965
81	39.53163253	101	111.2889958	32.701644
90	37.95874317	98	115.0130851	31.9112234
90	37.95874317	88	114.0933825	28.75400008
102	34.07066829	86	116.909442	27.87991549
102	34.07066829	86	116.909442	28.63050247
130	31.01413094	92	128.4612635	30.11543403
95	35.15272697	113	116.3926389	37.39252442
95	35.15272697	106	115.7488471	35.02717556
102	34.07066829	92	117.4612635	30.52742698
95	35.15272697	88	114.0933825	28.34397592
93	35.64355765	102	114.3809661	33.07863163
100	34.56149897	99	117.1050553	32.62191589
100	34.56149897	111	118.2086984	36.49861738
98	35.05232964	103	116.4729364	33.91005598
130	31.01413094	86	127.909442	28.07059654
115	29.62993595	101	118.2889958	33.45847152
115	29.62993595	101	118.2889958	33.21395395
115	29.62993595	101	118.2889958	33.43671117
115	29.62993595	124	120.4043117	40.39816357
180	24.48736667	113	143.3926389	37.62069475
160	26.85227868	113	135.3926389	37.25439197
130	27.85625194	124	126.4043117	40.58906845
96	31.11358394	92	110.4612635	30.14754329
115	29.62993595	101	118.2889958	32.73451818
100	30.13192258	94	112.6452041	30.61528334
100	28.8602252	115	115.5765794	37.66287367
145	27.35426531	111	130.2086984	36.88815313
120	24.60913156	116	117.6685497	37.86041143
140	23.51591693	131	126.0481035	43.3909885
140	23.51591693	123	125.3123415	40.72283115
150	23.60515831	121	128.128401	40.15948186
165	40.05	50	126.5985128	15.71285853
165	23.10317168	114	132.4846092	37.97995604
165	23.10317168	127	133.6802225	41.57397476
165	23.10317168	123	133.3123415	40.47204238
245	21.27370792	112	158.3006687	37.14173328
280	19.67850666	50	164.5985128	15.82306042
162	23.203569	135	133.4159845	44.01313857
162	23.203569	132	133.1400738	43.35312292
140	19.08634055	160	124.7152409	52.99775236
140	19.08634055	129	121.864163	42.61869847
175	18.76283667	129	132.864163	42.77821864
322	36.9	50	169.5985128	16.13294744
238	19.1978876	115	150.5765794	37.92311321
263	34	50	151.5985128	15.76962542
295	19.83373318	119	167.9444604	39.42309899
236	12.10126289	107	139.8408174	34.94861469
Proc print data = newdata;
Title "My Newdata";
Run;

PROC SGPLOT  DATA = newdata;
   VBOX HP; 
   title 'Box Plot - hp';
RUN; 

PROC SGPLOT  DATA = newdata;
   VBOX VOL; 
   title 'Box Plot - VOL';
RUN; 

PROC SGPLOT  DATA = newdata;
   VBOX SP; 
   title 'Box Plot - SP';
RUN; 

PROC SGPLOT  DATA = newdata;
   VBOX WT; 
   title 'Box Plot - WT';
RUN; 

PROC SGPLOT  DATA = newdata;
   VBOX MPG; 
   title 'Box Plot - MPG';
RUN; 

pROC sgscatter  DATA = newdata;
   matrix HP	MPG	VOL	SP	WT;

   title 'Scatter Plot: Correlation Graph - t1';
RUN; 

proc corr data = newdata ;
VAR  HP	MPG	VOL	SP	WT  ;
title "Correlation pairs -t1 ";
run;

proc corr data = newdata plots = matrix ;
VAR  HP	MPG	VOL	SP	WT  ;
title "Correlation graph-t1(not required later) ";
run;

ods graphics on;
title 'partial Correlation between HP & MPG';

proc corr data=newdata plots=scatter(alpha=.20 .30);
   var HP SP;
   partial MPG VOL WT;
run;

proc corr data=newdata plots=scatter(alpha=.20 .30);
   var VOL WT;
   partial HP MPG SP;
title 'partial Correlation between VOL WT';
run;

proc corr data=newdata plots=scatter(alpha=.20 .30);
   var HP	MPG	;
   partial VOL	SP	WT;
title 'partial Correlation between HP MPG';
run;

proc corr data=newdata plots=scatter(alpha=.20 .30);
   var HP	VOL	;
   partial MPG	SP	WT;
title 'partial Correlation between HP VOL';
run; 

proc corr data=newdata plots=scatter(alpha=.20 .30);
   var HP	WT	;
   partial MPG	VOL SP;
title 'partial Correlation between HP WT';
run; 

proc corr data=newdata plots=scatter(alpha=.20 .30);
   var MPG	VOL	;
   partial HP SP WT;
title 'partial Correlation between MPG VOL';
run; 

proc corr data=newdata plots=scatter(alpha=.20 .30);
   var MPG	SP	;
   partial HP	VOL	 WT;
title 'partial Correlation between MPG SP';
run; 

proc corr data=newdata plots=scatter(alpha=.20 .30);
   var MPG	WT	;
   partial HP	VOL	 SP;
title 'partial Correlation between MPG WT';
run; 

proc corr data=newdata plots=scatter(alpha=.20 .30);
   var VOL	SP	;
   partial HP	MPG	 WT;
title 'partial Correlation between VOL SP';
run; 

proc corr data=newdata plots=scatter(alpha=.20 .30);
   var SP	WT	;
   partial HP	MPG	 VOL;
title 'partial Correlation between SP WT';
run; 

ods output ParameterEstimates (persist) = r;  
proc reg data = newdata;
model MPG = HP VOL SP WT;
  output out=MODEL.CAR;
  title "Regression with all Required Statistics to perform EDA";
run;

proc reg data = newdata;
model MPG = VOL;
  output out=MODEL.CARV;
  title " volume parameter statistics";
run;

proc reg data = newdata;
model MPG = WT;
  output out=MODEL.CARW;
  title " weight parameter statistics";
run;

proc reg data = newdata;
model MPG = VOL WT;
  output out=MODEL.CARVW;
  title " Combine volume + weight parameter statistics";
run;
ods output close;

/*proc print data = r; 
 title "Consolidated Parameter Statistic";
run;
*/

data r2;
  set r;
  retain modelnum 0;
  if variable="Intercept" then modelnum = modelnum + 1;
  title " Models - parameter statistics"
run;

proc print data   = r2;
run;

proc reg data = newdata plots(only) = (CooksD(label) DFFits(label));  
model MPG = HP VOL SP WT/VIF TOL COLLIN;
 /* output out=MODEL.CAR1;*/
  /*output out=MODEL.CAR1 pred=Pred rstudent=RStudent dffits=DFFits cookd=CooksD; /* optional: output statistics */
  output out=MODELCAR r=residual h=hat rstudent=rstudent cookd = cooksd dffits=DFFits pred=Pred;
  title "Regression with all Required Statistics to perform EDA - ta";
run;

proc print data = MODELCAR; /*Note that tempfile is the output from the proc reg statements. */
 var MPG HP VOL SP WT residual hat rstudent cooksd;
 title "Influential Observations Output - Table";
run;


Data newdataWithObs77Removed;
set newdata;
if _n_ = 77 then delete; /***_n_ is a SAS variable which counts observations**/

proc reg data = newdataWithObs77Removed plots(only) = (CooksD(label) DFFits(label));  
  model MPG = HP VOL SP WT/VIF TOL COLLIN;
  output out=tempfile1 r=residual h=hat rstudent=rstudent cookd = cooksd dffits=DFFits pred=Pred;
  title "Proc Reg with Obs 77 removed -yh ";
run;

proc print data = tempfile1;
 var MPG HP VOL SP WT residual hat rstudent cooksd;
 title "Influential Obs without Obs 77";
run;

Data newdataWithObs78Removed;
set newdataWithObs77Removed;
if _n_ = 78 then delete; /***_n_ is a SAS variable which counts observations**/

proc reg data = newdataWithObs78Removed plots(only) = (CooksD(label) DFFits(label));  
  model MPG = HP VOL SP WT/VIF TOL COLLIN;
  output out=tempfile2 r=residual h=hat rstudent=rstudent cookd = cooksd dffits=DFFits pred=Pred;
  title "Proc Reg with Obs 78 removed -y78 ";
run;

proc print data = tempfile2;
 var MPG HP VOL SP WT residual hat rstudent cooksd;
 title "Influential Obs without Obs 78";
run;

proc reg data = newdataWithObs77Removed;
  model MPG = HP VOL SP WT / partial;
  plot r.*HP;
  title "Proc Reg with Obs 78 del,77 removed -yav plot-T ";
run;

proc reg data = newdataWithObs77Removed plots(only) = (CooksD(label) DFFits(label));  
  model MPG = HP VOL SP /VIF TOL COLLIN;
  output out=tempfile3 r=residual h=hat rstudent=rstudent cookd = cooksd dffits=DFFits pred=Pred;
  title "Proc Reg with Obs 78 del,77 removed -ya  - final results";
run;

proc print data = tempfile3;
 var MPG HP VOL SP  residual hat rstudent cooksd;
 title "Influential Obs without Obs 78del,77 - final model without wt";
run;

data newdata_logtransformation;
set newdataWithObs77Removed;
HPLOG=log10(HP);
MPGLOG=log10(MPG);
VOLLOG=log10(VOL);
SPLOG=log10(SP);
WTLOG=log10(WT);
run;
Proc print data = newdata_logtransformation;
Title "My Newdata log transformation";
Run;

proc reg data = newdata_logtransformation plots(only) = (CooksD(label) DFFits(label));  
  model MPGLOG = HPLOG VOLLOG SPLOG /VIF TOL COLLIN;
  output out=tempfilelog r=residual h=hat rstudent=rstudent cookd = cooksd dffits=DFFits pred=Pred;
  title "Model log transformation";
run;

proc print data = tempfilelog;
 var MPG HP VOL SP  residual hat rstudent cooksd;
 title "Model log transformation  - final results";
run;

data newdata_sqrttransformation;
set newdataWithObs77Removed;
HPsqrt=sqrt(HP);
MPGsqrt=sqrt(MPG);
VOLsqrt=sqrt(VOL);
SPsqrt=sqrt(SP);
WTsqrt=sqrt(WT);
run;
Proc print data = newdata_sqrttransformation;
Title "My Newdata sqrt transformation";
Run;

proc reg data = newdata_sqrttransformation plots(only) = (CooksD(label) DFFits(label));  
  model MPGsqrt = HPsqrt VOLsqrt SPsqrt /VIF TOL COLLIN;
  output out=tempfilesqrt r=residual h=hat rstudent=rstudent cookd = cooksd dffits=DFFits pred=Pred;
  title "Model sqrt transformation";
run;

proc print data = tempfilesqrt;
 var MPG HP VOL SP  residual hat rstudent cooksd;
 title "Model sqrt transformation  - final results";
run;

data newdata_minus_sqrttransformation;
set newdataWithObs77Removed;
HPsqrtminu=-1/sqrt(HP);
MPGsqrtminus=-1/sqrt(MPG);
VOLsqrtminus=-1/sqrt(VOL);
SPsqrtminus=-1/sqrt(SP);
WTsqrtminus=-1/sqrt(WT);
run;
Proc print data = newdata_minus_sqrttransformation;
Title "My Newdata minus sqrt transformation";
Run;

proc reg data = newdata_minus_sqrttransformation plots(only) = (CooksD(label) DFFits(label));  
  model MPGsqrtminus = HPsqrtminus VOLsqrtminus SPsqrtminus /VIF TOL COLLIN;
  output out=tempfilesqrtminus r=residual h=hat rstudent=rstudent cookd = cooksd dffits=DFFits pred=Pred;
  title "Model minus sqrt transformation";
run;

proc print data = tempfilesqrtminus;
 var MPG HP VOL SP  residual hat rstudent cooksd;
 title "Model minus sqrt transformation  - final results";
run;

proc univariate data=newdataWithObs77Removed;
   histogram HP / NORMAL;
   title "Normal Distribution Analysis for line asssumptions - HP";
run;

proc univariate data=newdataWithObs77Removed;
   histogram MPG / NORMAL;
   title "Normal Distribution Analysis for line asssumptions - MPG";
run;

proc univariate data=newdataWithObs77Removed;
   histogram VOL / NORMAL;
   title "Normal Distribution Analysis for line asssumptions - VOL";
run;

proc univariate data=newdataWithObs77Removed;
   histogram SP / NORMAL;
   title "Normal Distribution Analysis for line asssumptions - SP";
run;

proc univariate data=newdataWithObs77Removed;
   histogram WT / NORMAL;
   title "Normal Distribution Analysis for line assumptions - WT";
run;






































