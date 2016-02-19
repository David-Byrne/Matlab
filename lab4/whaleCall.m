%WHALECALL.M
%Gets parameters and graphs a whale's call using functions
[s_freq,f_freq,dur ] = whale_data_input( );
[time, sinusoid] = time_sinus_fn(f_freq, s_freq, dur);
plot_decay_fn(sinusoid, time, s_freq);
