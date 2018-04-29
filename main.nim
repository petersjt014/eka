import algorithm, future, httpclient, os, streams, strfmt
import strutils, sequtils, system, typetraits, times
import xmltree, xmlparser


# get the rss feed itself
proc fetch(url: string): string =
  return newHttpClient().getContent(url)


# debug-ish proc to help try and understand the weird parsing nuances in the description (re. CDATA?)
proc infoDump(episode: XmlNode): void =
  for n in episode.items:
    echo n.tag & " ::: " & n.innerText
  for x in episode.child("description"):
    echo interp"v \n ${repr(x)} \n ^"


# needed because passing a stream as an argument apparently doesn't work
proc getStream(doc: string): StringStream =
  return newStringStream(doc)


proc avgduration(doc: string): auto =

  var tlist = 
    getStream(doc)
    .parseXml
    .findAll("item")
    .map(proc(item: XMLNode): seq[int] =
      item
      .child("itunes:duration")
      .innerText
      .split(":")
      .map(parseInt)
      .reversed
      .concat(@[0,0]))
    .map(proc(x: seq[int]): int = 
      x[0] + x[1] * 60 + x[2] * 3600)

  return tlist.foldr(a+b).div(tlist.len)


proc parse(doc: string): string =
  echo "\n"
  for episode in getStream(doc).parseXml.findAll("item"):
    for field in @["title", "pubDate", "itunes:duration"]:
      
      # this is done because the string formatting is inconsistent
      var prelim: string = episode.child(field).innerText
      let content: string = 
        if prelim == nil: episode.child(field).text else: prelim
      
      echo field & " :: " & content 
    echo "\n"

    #infoDump(episode)

  let average = avgduration(doc)
  echo "\n", 
    interp"average duration: $average seconds",
    interp", or ${average/3600} hours"

  return "not done yet lol"


let
  cmdArr = commandLineParams()
  url: string =
    if len(cmdArr) == 0: "https://blart.libsyn.com/rss"
    else: cmdArr[0]
  feed = fetch(url)
    
discard parse(feed)
# todo: actually analyze fields
