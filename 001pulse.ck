//Random pitches and tempo variation

//connect instrument to the soundcard out
Flute inst => dac;

<<<"Random pitches and tempo variation">>>;

for( 0=>int i;i>-1 ; i++ ) { //infinite loop
  int foo;
  Std.rand2(5,500) => foo;
  Std.mtof( Std.rand2(0,127)) => inst.freq; //set the note
  inst.noteOn( 0.5 ); //play a note at half volume
  foo::ms => now; //compute audio for foo millisec

  Std.rand2(5,50) => foo;
  inst.noteOn( 0.0 ); //play a note at half volume
  foo::ms => now; //compute audio for foo millisec
}
