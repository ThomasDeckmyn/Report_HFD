  close all;
    f = fopen('S11_coupled_lines.txt');
    S11_cl = textscan(f,'%f32 %f32');
    fclose(f);
     
    f = fopen('S21_coupled_lines.txt');
    S21_cl = textscan(f,'%f32 %f32');
    fclose(f);
    
    f = fopen('S11_friendly_coupled_lines.txt');
    S11_fcl = textscan(f,'%f32 %f32');
    fclose(f);
     
    f = fopen('S21_friendly_coupled_lines.txt');
    S21_fcl = textscan(f,'%f32 %f32');
    fclose(f);
    
    f = fopen('S11_ideal_coupled_lines.txt');
    S11_icl = textscan(f,'%f32 %f32');
    fclose(f);
     
    f = fopen('S21_ideal_coupled_lines.txt');
    S21_icl = textscan(f,'%f32 %f32');
    fclose(f);

  
    
    figure(1)
    plot(S11_cl{1}./1e9,S11_cl{2},'Linewidth',1);
    grid on;
    xlim([1.4 1.7]);
    xlabel('Frequency [GHz]');
    ylabel('S11 [dB]');
    
    figure(2)
    plot(S21_cl{1}./1e9,S21_cl{2},'Linewidth',1);
    grid on;
    xlim([1.4 1.7]);
    xlabel('Frequency [GHz]');
    ylabel('S21 [dB]');
    
    figure(3)
    
    plot(S11_fcl{1}./1e9,S11_fcl{2},'Linewidth',1);
    grid on;
    xlim([1.4 1.7]);
    xlabel('Frequency [GHz]');
    ylabel('S11 [dB]');
    
    figure(4)
    plot(S21_fcl{1}./1e9,S21_fcl{2},'Linewidth',1);
    grid on;
    xlim([1.4 1.7]);
    xlabel('Frequency [GHz]');
    ylabel('S21 [dB]');
    
    figure(5)
    plot(S11_icl{1}./1e9,S11_icl{2},'Linewidth',1);
    grid on;
    xlim([1.4 1.7]);
    ylim([-50 0]);
    xlabel('Frequency [GHz]');
    ylabel('S11 [dB]');
    
    figure(6)
    plot(S21_icl{1}./1e9,S21_icl{2},'Linewidth',1);
    grid on;
    xlim([1.4 1.7]);
    xlabel('Frequency [GHz]');
    ylabel('S21 [dB]');
    
    figure(7)
    plot(S11_icl{1}./1e9,S11_icl{2},'Linewidth',1);
    grid on;
    xlim([1.4 1.7]);
    ylim([-50 0]);
    hold on;
    plot(S11_fcl{1}./1e9,S11_fcl{2},'Linewidth',1,'Color','r');
    xlabel('Frequency [GHz]');
    ylabel('S11 [dB]');
    legend('Ideal','Layout Friendly');
    
    figure(8)
    plot(S21_icl{1}./1e9,S21_icl{2},'Linewidth',1);
    grid on;
    xlim([1.4 1.7]);
    ylim([-50 0]);
    hold on;
    plot(S21_fcl{1}./1e9,S21_fcl{2},'Linewidth',1,'Color','r');
    xlabel('Frequency [GHz]');
    ylabel('S21 [dB]');
    legend('Ideal','Layout Friendly');
    
    figure(9)
    plot(S11_fcl{1}./1e9,S11_fcl{2},'Linewidth',1);
    grid on;
    xlim([1.4 1.7]);
    ylim([-50 0]);
    hold on;
    plot(S11_cl{1}./1e9,S11_cl{2},'Linewidth',1,'Color','r');
    xlabel('Frequency [GHz]');
    ylabel('S11 [dB]');
    legend('Layout Friendly','EM-model');
    
    figure(10)
    plot(S21_fcl{1}./1e9,S21_fcl{2},'Linewidth',1);
    grid on;
    xlim([1.4 1.7]);
    ylim([-50 0]);
    hold on;
    plot(S21_cl{1}./1e9,S21_cl{2},'Linewidth',1,'Color','r');
    xlabel('Frequency [GHz]');
    ylabel('S21 [dB]');
    legend('Layout Friendly','EM-model');