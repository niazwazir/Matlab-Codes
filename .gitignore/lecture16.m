%LECTURE NO: 16: ADDITIONAL PLOTTING FEATURES: 1
%Controlling x-axis and y-axis plotting limits
% means we set own x axis and y axis values
% so we use v = axis command they shows what is the value xmin, xmax,
%ymin, ymax so this shows the current limit of our graph
% so if change these limits you can use this command
% axis ([xmin xmax ymin ymax]);
% if you wnat axis of x and y are same you use axis equal command
% if you use axis square command this command makes the current axis
% box square
% axis normal this command cancels the effect of axis equal and axis square
% axis off command turns off all axis labelling, tick marks and background
%axis on command turns on all axis labelling, tick marks, and
%background(default case)


%Creating Multiple plots on same axis
x=-pi:pi/20:pi;
y1=sin(x);
y2=cos(x);
plot(x,y1,'b-');
hold on
plot(x,y2,'k--');
legend('sinx','cosx');

%Create separate plot on separate graph
x=-pi:pi/20:pi;
y1=sin(x);
y2=cos(x);
figure(1)
plot(x,y1,'b-');
figure(2)
plot(x,y2,'k--');


%subplots, concept of subplot means draw many plot on single figure,
%so figure is same but axis is change, so plot six graphs in 2 rows and
% three columns subplot(2,3) means 2 rows and 3 columns so (2,3,1) it 
% is create for first graph, (2,3,2),(2,3,3),(2,3,4),(2,3,5),(2,3,6)

x=-pi:pi/20:pi;
y1=sin(x);
y2=cos(x);
subplot(2,1,1)   % because here we can draw two graphs one of sin and other cosine
plot(x,y1,'b-');
subplot(2,1,2);
plot(x,y2,'k--');

