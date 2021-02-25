# colour_mixer

An experiment in implementing Provider for state management, with a colour mixer using sliders for red, green, blue and opacity.

This app was built in 5 stages:

1. Using Set State to update colour changes
2. using provider to update colour changes
3. Added a second screen as a proof of concept (consistency of colour and element values across 2 views)
4. Refactoring to extract custom widget templates for re-use, rather than repeating widgets within the UI widget tree
5. Refactoring the color provider in order to remove more of the calculation from the UI code
