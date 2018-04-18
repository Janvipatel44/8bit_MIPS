

 
 
 




window new WaveWindow  -name  "Waves for BMG Example Design"
waveform  using  "Waves for BMG Example Design"

      waveform add -signals /progcount_im_block_tb/status
      waveform add -signals /progcount_im_block_tb/progcount_im_block_synth_inst/bmg_port/CLKA
      waveform add -signals /progcount_im_block_tb/progcount_im_block_synth_inst/bmg_port/ADDRA
      waveform add -signals /progcount_im_block_tb/progcount_im_block_synth_inst/bmg_port/ENA
      waveform add -signals /progcount_im_block_tb/progcount_im_block_synth_inst/bmg_port/DOUTA

console submit -using simulator -wait no "run"
