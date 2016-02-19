function [] = plot_decay_fn(y_fn, time ,samp_freq)
%PLOT_DECAY_FN Plots and plays the whale call
%   Plots and plays the whale call as it decays exponentially

    K = input('Enter amplitude, recommended 6: ');
    R = input('Enter decay constant, recommended 1.5: '); %how quickly it decays
    A=(K*exp(-R*time)).*sin(2*pi*0.5*time);
    call=A.*y_fn;
    %% Play through sound card & plot
    soundsc(call,samp_freq)
    plot(time,call)
    title('Visualisation of whale call'); 
    xlabel('Time in seconds');
    ylabel('Aplitude of the call');

end

