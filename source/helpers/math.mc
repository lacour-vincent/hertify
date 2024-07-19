using Toybox.Math;
using Toybox.System;

function roundToOneDecimal(value){
    System.println("value = " + value);
    System.println("value = " + 0.1 * Math.round(10 * value));
    return 0.1 * Math.round(10 * value);
}