### Neevo Tank Monitor Script

This simple script returns the tank monitor level from a propane tank setup in the Neevo app. The script takes one input argument from the command line, which is the HTTP Basic Authorization of the Neevo account. To get your HTTP auth, follow these instructions: https://mixedanalytics.com/knowledge-base/api-connector-encode-credentials-to-base-64/. It's basically an encoded version of your Neevo username and password.

The script is setup to return the tank level (e.g. "70" for 70% full).

Have not tested the script on Neevo accounts with multiple tanks, etc.