//connect a plucked string to the soundcard out
Flute inst => dac;

[0,2,3,1,4,2,6,3,4,4] @=> int mel[]; //sequence data
[0,2,4,5,7,9,11,12] @=> int major[]; //major scale

//minor scales
[0, 2, 3, 5, 7, 8, 10] @=> int min[]; //minor mode
[0, 2, 3, 5, 7, 8, 11] @=> int har[]; //harmonic minor
[0, 2, 3, 5, 7, 9, 11] @=> int asc[]; //ascending melodic minor
[0, 1, 3, 5, 7, 8, 10] @=> int nea[]; //make 2nd degree neapolitain

//other church modes
[0, 2, 4, 5, 7, 9, 11] @=> int maj[]; //major scale
[0, 2, 4, 5, 7, 8, 10] @=> int mixo[]; //church mixolydian
[0, 2, 3, 5, 7, 9, 10] @=> int dor[]; //church dorian
[0, 2, 4, 6, 7, 9, 11] @=> int lyd[]; //church lydian

[0, 2, 4, 7, 9] @=> int pent[]; //major pentatonic
[0, 1, 4, 5, 7, 8, 10] @=> int jewish[]; //phrygian dominant, jewish scale
[0, 2, 3, 6, 7, 8, 11] @=> int gypsy[]; //hungarian or gypsy
[0, 1, 4, 5, 7, 8, 11] @=> int arabic[]; //arabic scale
[0, 2, 4, 6, 8, 10] @=> int whole_tone[]; //the whole tone scale
[0, 2, 3, 5, 6, 8, 9, 11] @=> int dim[]; //diminished scale

//new psuedo indian lydian mode
[0, 2, 4, 6, 7, 9, 10] @=> int ind[];


int foo;
Math.random2 (250,350) => foo;

int multiplier;
Math.random2 (1,5) => multiplier;

int divisor;
Math.random2 (1,5) => divisor;

(foo * multiplier)/divisor => foo;
if (foo > 1000)
  foo - 1000 => foo;

  int note[4];
  Math.random2 (0,6) => note[0];
  Math.random2 (0,6) => note[1];
  Math.random2 (0,6) => note[2];
  Math.random2 (0,6) => note[3];

while (true) { //infinite loop
for( 0=>int i;i<8 ; i++ ){
      Std.mtof( 48 + mixo[note[0]] ) => inst.freq; //set the note
      inst.noteOn( 0.5 ); //play a note at half volume
      foo::ms => now; //compute audio for 0.3 sec
      }
      for( 0=>int i;i<8 ; i++ ){
      Std.mtof( 48 + mixo[note[1]] ) => inst.freq; //set the note
      inst.noteOn( 0.5 ); //play a note at half volume
      foo::ms => now; //compute audio for 0.3 sec
      }
      for( 0=>int i;i<8 ; i++ ){
      Std.mtof( 48 + mixo[note[2]] ) => inst.freq; //set the note
      inst.noteOn( 0.5 ); //play a note at half volume
      foo::ms => now; //compute audio for 0.3 sec
      }
      for( 0=>int i;i<8 ; i++ ){
      Std.mtof( 48 + mixo[note[3]] ) => inst.freq; //set the note
      inst.noteOn( 0.5 ); //play a note at half volume
      foo::ms => now; //compute audio for 0.3 sec
      }


}
