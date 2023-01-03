//Random tempo pulse with a

//connect instrument to the soundcard out
Flute inst => dac;

int foo;
Math.random2 (10,750) => foo;

int multiplier;
Math.random2 (1,5) => multiplier;

int divisor;
Math.random2 (1,5) => divisor;

(foo * multiplier)/divisor => foo;
if (foo > 1000)
  foo - 1000 => foo;

<<<"Duration (ms):", foo>>>;

int bar;
Math.random2(0,127) => bar;
<<<"Pitch (MIDI note):", bar>>>;

for( 0=>int i;i>-1 ; i++ ) { //infinite loop
  Std.mtof( bar ) => inst.freq; //set the note
  inst.noteOn( 0.5 ); //play a note at half volume
  foo::ms => now; //compute audio for foo millisec

  inst.noteOn( 0.0 ); //play a note at half volume
  foo::ms => now; //compute audio for foo millisec
}
