RubyMotionClass
===============

Reworking the labs from an iOS class as RubyMotion apps

The first lab, motion-weatherapp3-delegates-protocols, is essentially a "Hello World" app, but constructed with the intention of building up the entire app.  So, the "Hello World" label becomes... a tempurature for the eventual weather portion of the app.  In the iOS class, this lab also taught us about delegates and protocols.  Delegates and protocols don't really need much in the way of formal identification in Ruby, so not much happens here... EXCEPT YOU GET A RUNNING IOS APP WRITTEN IN RUBY!

Up next, motion-weatherapp4-view-controllers introduced us to Storyboards and view controllers.  The awesome part of this lab was the complete lack of work involved in using a Storyboard.  I just copied the Storyboard over from the Xcode/Obj-C project, and then built the view controller classes.  As long as you match the class naming used in the Storyboard, all the delegates and segues "just work".  Some of the other RubyMotion projects around storyboards that I looked at actually seem to go to a lot of work that just isn't necessary.  In this lab, we also built a TableView controller, which was quite straightforward.

Third, we have motion-weatherapp5-uitextfield-uiswitch-uidatepicker, where we need to hook up some IBOutlets to some of the input fields.  Simple as pie in RubyMotion. Again, just make certain to follow the naming conventions used in the storyboard, and most of it "just works".  In this case, we managed to grab the date picker value, and reflect it into a label on another view.  Also got the table selection working, and reflected that onto another view as well.

