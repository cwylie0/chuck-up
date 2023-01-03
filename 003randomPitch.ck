//Random pitches pulse

//connect instrument to the soundcard out
Flute inst => dac;

//pulse a note for 200ms on and off
int foo;
Std.rand2(5,500) => foo;

int bar;
Std.rand2(0,127) => bar;

<<<"Duration (ms):", foo>>>;
<<<"Pitch (MIDI note):", bar>>>;

for( 0=>int i;i>-1 ; i++ ) { //infinite loop

  Std.mtof( bar ) => inst.freq; //set the note
  inst.noteOn( 0.5 ); //play a note at half volume
  foo::ms => now; //compute audio for foo millisec

  inst.noteOn( 0.0 ); //play a note at half volume
  foo::ms => now; //compute audio for foo millisec
}
