# RubyMotion ZBar Barcode Scanning Example

This [RubyMotion](http://www.rubymotion.com) application was the result of an [AirPair](http://www.airpair.com/) session I did to help [@rossfuhrman](https://twitter.com/rossfuhrman) with RubyMotion and UPC (EAN) barcode reading.

We used the [ZBar](http://sourceforge.net/projects/zbar/?source=dlp) barcode reading library.

This was a 1 hour pair programming session over Google Hangouts and is [posted to Youtube](http://www.youtube.com/watch?v=YWU6NcMdO-Y).

## Getting started

This application **will not** run in the simulator. Well, It'll *run*, but it won't *work*. You need to compile it to a device in order	 for it to do anything useful.

Run: `bundle` then add your bundle identifier and provisioning profile data to the `Rakefile`. Then run `rake device`. If you want to see the output from the bar code reading in the terminal, run `rake devicedebug=1`. To exit from the device debug session, hit `control+c`, then `control+d`, `y`, `enter`.

## Video

[![Youtube Link](http://i.ytimg.com/vi/YWU6NcMdO-Y/0.jpg)](http://www.youtube.com/watch?v=YWU6NcMdO-Y)
