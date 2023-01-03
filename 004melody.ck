//connect a plucked string to the soundcard out
ModalBar inst => dac;


/*
Plays the melodic scale array below
*/

[0,2,3,1,4,2,6,4] @=> int mel[]; //sequence data

<<<"Notes in a scale array">>>;

for( 0=>int i;i>-1 ; i++ ) { //infinite loop
  Std.mtof( 48 + mel[i%mel.cap()] ) => inst.freq; //set the note
  inst.noteOn( 0.5 ); //play a note at half volume
  200::ms => now; //compute audio for 0.3 sec
  Std.mtof( 48 + mel[i%mel.cap()] ) => inst.freq; //set the note
  inst.noteOn( 0.0 ); //play a note at half volume
  200::ms => now; //compute audio for 0.3 sec
}
