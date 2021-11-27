# cdrecord mod by chrdev

A cdrecord mod aiming to ease the writing of Audio-CD with CD-TEXT.

Windows releases available.

Original cdrecord license applies. See LICENSE for details.

## Features Added

1.  Supports both NUL-terminated and unterminated CD-TEXT files.

2.  Supports UTF-8-BOM cue files.

    However, file names still have to be of multi-byte.
	So name these 3 types of files carefully:
    .cue file, passed by cuefile= parameter
    .wav file, embedded in cue, the FILE line(s)
    .cdt file, passed by textfile= parameter, or embeded in cue, the CDTEXTFILE line
	
	If you don't quite understand the above statements, use English for file names would be OK.

3.  Recognizes CD recorders on later Windows versions. (mod from cdrtfe)

## Suggested commands

    cdrecord.exe speed=4 -raw96r textfile=fn.cdt cuefile=fn.cue

Or, if CDTEXT file name is embedded in cue (has "CDTEXTFILE fn.cdt" before FILE line)

    cdrecord.exe speed=4 -raw96r -text cuefile=fn.cue
	