%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dir='.';
cd(dir);
load motorData.mat;
% load light.mat;
dirFinal=strcat(dir,'\figure')
mkdir(dirFinal);
maxrun=size(motorData, 2);
% figure;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% for  a=1:maxrun
%       b=length(motorData{a}.bodyTheta);
%       c=1:b;
%       hold on;
%       plot(c,motorData{a}.bodyTheta,'r.');
%       plot(c,motorData{a}.bodyOmega,'b.');
%       plot(c,motorData{a}.headTheta,'m.');
%       plot(c,motorData{a}.headOmega,'g.');
%       %pause(2)
%       %display('save the figure')
%       %keyboard;
%       %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       filename = strcat('motorData{', num2str(a),'}');
%       saveas(gcf, filename);
%       clf;
%       %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% end
for  a=1:maxrun
    frame_number = length(motorData{a}.cmSpeed);
    frame_rate = motorData{a}.fs;
    time = 1:frame_number; % frame
    % change unit
    time = time / frame_rate; % frame -> second
    speed = motorData{a}.cmSpeed  / 11.94; % unit : pixel / frame
	subplot(2,4,1);
    plot(time ,speed ,'r*','linewidth',0.5,'Markersize',0.5);
    %        hold on;
    %        plot(c,light{a}.lightframe,'k*','linewidth',0.5,'Markersize',0.5);
    xlabel('Time(s)');
    cmSpeed=strcat('motorData{', num2str(a),'}cmSpeed')
    ylabel('cmSpeed(mm/s)');
    axis([0 frame_number/frame_rate -1 3])
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    speed = motorData{a}.headSpeed / 11.94;
    subplot(2,4,2);
    plot(time, speed ,'b*','linewidth',0.5,'Markersize',0.5);
    %        hold on;
    %        plot(c,light{a}.lightframe,'k*','linewidth',0.5,'Markersize',0.5);
    xlabel('Time(s)');
    headSpeed=strcat('motorData{', num2str(a),'}headSpeed')
    ylabel('headSpeed(mm/s)');
    axis([0 frame_number/frame_rate -1 3])
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    speed = motorData{a}.tailSpeed / 11.94;
    subplot(2,4,3);
    plot(time, speed ,'m*','linewidth',0.5,'Markersize',0.5);
    %        hold on;
    %        plot(c,light{a}.lightframe,'k*','linewidth',0.5,'Markersize',0.5);
    xlabel('Time(s)');
    %       tailSpeed=strcat('motorData{', num2str(a),'}tailSpeed')
    ylabel('tailSpeed(mm/s)');
    axis([0 frame_number/30 -1 3])
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    speed = motorData{a}.midSpeed / 11.94;
    subplot(2,4,4);
    plot(time, speed ,'g*','linewidth',0.5,'Markersize',0.5);
    %        hold on;
    %        plot(c,light{a}.lightframe,'k*','linewidth',0.5,'Markersize',0.5);
    xlabel('Time(s)');
    %       midSpeed=strcat('motorData{', num2str(a),'}midSpeed')
    ylabel('midSpeed(mm/s)');
    axis([0 frame_number/frame_rate -1 3])
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    theta = motorData{a}.bodyTheta / pi * 180; % radiu -> degree
    subplot(2,4,5)
    plot(time,theta,'r.','linewidth',0.5,'Markersize',0.5);
    %        hold on;
    %        plot(c,light{a}.lightframe,'k*','linewidth',0.5,'Markersize',0.5);
    xlabel('Time(s)');
    %       bodyTheta=strcat('motorData{', num2str(a),'}bodyTheta')
    ylabel('bodyTheta(degree)');
    axis([0 frame_number/frame_rate -180 180])
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    omega = motorData{a}.bodyOmega / pi * 180;
    subplot(2,4,6);
    plot(time,omega,'b.','linewidth',0.5,'Markersize',0.5);
    %        hold on;
    %        plot(c,light{a}.lightframe,'k*','linewidth',0.5,'Markersize',0.5);
    xlabel('Time(s)');
    %       bodyOmega=strcat('motorData{', num2str(a),'}bodyOmega')
    ylabel('bodyOmega(degree/s)');
    axis([0 frame_number/frame_rate -180 180])
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    theta = motorData{a}.headTheta / pi * 180;
    subplot(2,4,7)
    plot(time, theta,'m.','linewidth',0.5,'Markersize',0.5);
    %        hold on;
    %        plot(c,light{a}.lightframe,'k*','linewidth',0.5,'Markersize',0.5);
    xlabel('Time(s)');
    %       headTheta=strcat('motorData{', num2str(a),'}headTheta')
    ylabel('headTheta(degree)');
    axis([0 frame_number/frame_rate -180 180])
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    omega = motorData{a}.headOmega / pi * 180;
    subplot(2,4,8)
    plot(time,omega ,'g.','linewidth',0.5,'Markersize',0.5);
    %        hold on;
    %        plot(c,light{a}.lightframe,'k*','linewidth',0.5,'Markersize',0.5);
    xlabel('Time(s)');
    %       headOmega=strcat('motorData{', num2str(a),'}headOmega')
    ylabel('headOmega(degree/s)');
    axis([0 frame_number/frame_rate -180 180])
    %pause(2)
    %display('save the figure')
    %keyboard;
    %%%%%%%%%%%%%%%%%%%%%%%%%%
    filename = strcat('motorData{', num2str(a),'}');
    cd(dirFinal);
    saveas(gcf, filename);
    clf;
    %        cd(dirFinal);
    %        outfile00=strcat(dirFinal,'6301(20160617)', num2str(a),'.jpeg');
    % print('-f1','-djpeg',outfile00);
    % clf;
    %%%%%%%%%%%%%%%%%%%%%%%%%%
end


