  close all;
    f = fopen('S11_only_series_res.txt');
    S11_ser_res = textscan(f,'%f32 %f32');
    fclose(f);
     
    f = fopen('S21_only_series_res.txt');
    S21_ser_res = textscan(f,'%f32 %f32');
    fclose(f);
    
    f = fopen('S11_TL.txt');
    S11_TL = textscan(f,'%f32 %f32');
    fclose(f);
     
    f = fopen('S21_TL.txt');
    S21_TL = textscan(f,'%f32 %f32');
    fclose(f);
    
    f = fopen('S11_ideal_CL.txt');
    S11_icl = textscan(f,'%f32 %f32');
    fclose(f);
     
    f = fopen('S21_ideal_CL.txt');
    S21_icl = textscan(f,'%f32 %f32');
    fclose(f);
    
    f = fopen('S11_subst_CL.txt');
    S11_scl = textscan(f,'%f32 %f32');
    fclose(f);
     
    f = fopen('S21_subst_CL.txt');
    S21_scl = textscan(f,'%f32 %f32');
    fclose(f);

  
    f = fopen('S11_layout.txt');
    S11_lay = textscan(f,'%f32 %f32');
    fclose(f);
     
    f = fopen('S21_layout.txt');
    S21_lay = textscan(f,'%f32 %f32');
    fclose(f);
    
%     figure(1)
%     plot(S11_ser_res{1}./1e9,S11_ser_res{2},'Linewidth',1);
%     grid on;
%     xlim([1.5 1.65]);
%     xlabel('Frequency [GHz]');
%     ylabel('S11 [dB]');
%     
%     figure(2)
%     plot(S21_ser_res{1}./1e9,S21_ser_res{2},'Linewidth',1);
%     grid on;
%     xlim([1.5 1.7]);
%     xlabel('Frequency [GHz]');
%     ylabel('S21 [dB]');
%     
%     figure(3)
%     plot(S11_ser_res{1}./1e9,S11_ser_res{2},'Linewidth',1);
%     hold on;
%     plot(S11_TL{1}./1e9,S11_TL{2},'r','Linewidth',1);
%     grid on;
%     xlim([1.5 1.65]);
%     ylim([-100 0]);
%     xlabel('Frequency [GHz]');
%     ylabel('S11 [dB]');
%     legend('Series res. discrete','Transmission Line');
%     
%     figure(4)
%     plot(S21_ser_res{1}./1e9,S21_ser_res{2},'Linewidth',1);
%     hold on;
%     plot(S21_TL{1}./1e9,S21_TL{2},'r','Linewidth',1);
%     grid on;
%     xlim([1.5 1.7]);
%     xlabel('Frequency [GHz]');
%     ylabel('S21 [dB]');
%     legend('Series res. discrete','Transmission Line');
%     
%     
%     figure(5)
%     plot(S11_scl{1}./1e9,S11_scl{2},'r','Linewidth',1);
%     hold on;
%     plot(S11_icl{1}./1e9,S11_icl{2},'Linewidth',1);
%     grid on;
%     xlim([1.5 1.65]);
%     ylim([-50 0]);
%     xlabel('Frequency [GHz]');
%     ylabel('S11 [dB]');
%     legend('Coupled Lines w/ Subst.','Ideal Coupled Lines');
%     
%     
%     figure(6)
%     plot(S21_scl{1}./1e9,S21_scl{2},'r','Linewidth',1);
%     hold on;
%     plot(S21_icl{1}./1e9,S21_icl{2},'Linewidth',1);
%     grid on;
%     xlim([1.5 1.7]);
%     xlabel('Frequency [GHz]');
%     ylabel('S21 [dB]');
%     legend('Coupled Lines w/ Subst.','Ideal Coupled Lines');
%     
%     
    figure(7)
    plot(S11_scl{1}./1e9,S11_scl{2},'Linewidth',1);
    hold on;
    plot(S11_lay{1}./1e9,S11_lay{2},'r','Linewidth',1);
    grid on;
    xlim([1.5 1.65]);
    ylim([-50 0]);
    xlabel('Frequency [GHz]');
    ylabel('S11 [dB]');
    legend('Coupled Lines w/ Subst.','EM-model');
    
    figure(8)
    plot(S21_scl{1}./1e9,S21_scl{2},'Linewidth',1);
    hold on;
    plot(S21_lay{1}./1e9,S21_lay{2},'r','Linewidth',1);
    grid on;
    xlim([1.5 1.7]);
    xlabel('Frequency [GHz]');
    ylabel('S21 [dB]');
    legend('Coupled Lines w/ Subst.','EM-model');
%     
%     figure(9)
%     plot(S11_TL{1}./1e9,S11_TL{2},'Linewidth',1);
%     grid on;
%     xlim([1.4 1.7]);
%     ylim([-50 0]);
%     hold on;
%     plot(S11_ser_res{1}./1e9,S11_ser_res{2},'Linewidth',1,'Color','r');
%     xlabel('Frequency [GHz]');
%     ylabel('S11 [dB]');
%     legend('Layout Friendly','EM-model');
%     
%     figure(10)
%     plot(S21_TL{1}./1e9,S21_TL{2},'Linewidth',1);
%     grid on;
%     xlim([1.4 1.7]);
%     ylim([-50 0]);
%     hold on;
%     plot(S21_ser_res{1}./1e9,S21_ser_res{2},'Linewidth',1,'Color','r');
%     xlabel('Frequency [GHz]');
%     ylabel('S21 [dB]');
%     legend('Layout Friendly','EM-model');