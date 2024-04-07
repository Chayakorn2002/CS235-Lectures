BEGIN {FS = "\t"}
{
   split($0,namephone)
   split(namephone[1], lastfirst, ",")
   print namephone[2], lastfirst[2], lastfirst[1]
}
