// make our patch
      SinOsc s => dac;

      // time-loop, in which the osc's frequency is changed every 100 ms
      while( true ) {
          300::ms => now;
          Std.rand2f(30.0, 1000.0) => s.freq;
      }
