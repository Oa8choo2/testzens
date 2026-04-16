#!/bin/gawk

# https://unix.stackexchange.com/questions/713038/how-can-i-replace-straight-quotes-with-curly-quotes

BEGIN {
  code1 = "^```"
  code2 = "^~~~"
  admonition = "^!!!"
  jinja = "^\{\%"
}

# MAIN
{

  # skip some known non-text
  if ($0 ~ code1) { print; next }
  if ($0 ~ code2) { print; next }
  if ($0 ~ admonition) { print; next }
  if ($0 ~ jinja) { print; next }

  # FIXME skip these too  {%- if site == 'Gent' %}
  
  # single quotes
    while ( match($0,/\047[^\047]*\047/) ) {
        $0 = substr($0,1,RSTART-1) "‘" substr($0,RSTART+1,RLENGTH-2) "’" substr($0,RSTART+RLENGTH)
        singles[$0]++
    }
  # double quotes  
    while ( match($0,/"[^"]*"/) ) {
        $0 = substr($0,1,RSTART-1) "“" substr($0,RSTART+1,RLENGTH-2) "”" substr($0,RSTART+RLENGTH)
        doubles[$0]++
    }
    print
}

END {
  print "\n===================\n"        > "/dev/stderr"
  print "singles"                        > "/dev/stderr"
  for (i in singles) print singles[i], i > "/dev/stderr"
  print "\ndoubles"                      > "/dev/stderr"
  for (i in doubles) print doubles[i], i > "/dev/stderr"
  }
