import httpclient, os, streams, strfmt, strutils, typetraits
import xmltree, xmlparser


proc fetch(url: string): string =
  return newHttpClient().getContent(url)


proc infoDump(episode: XmlNode): void =
  for n in episode.items:
    echo n.tag & " ::: " & n.innerText
  for x in episode.child("description"):
    echo interp"v \n ${repr(x)} \n ^"


proc parse(doc: string): string =
  let sdoc = newStringStream(doc)

  echo "\n"
  for episode in sdoc.parseXml.findAll("item"):
    for field in @["title", "pubDate", "itunes:duration"]:
      var prelim: string = episode.child(field).innerText
      let content: string = 
        if prelim == nil: episode.child(field).text else: prelim
      
      echo field & " :: " & content 
    echo "\n"
      
    #infoDump(episode)

  return "not done yet lol"


let
  cmdArr = commandLineParams()
  url: string =
    if len(cmdArr) == 0: "https://blart.libsyn.com/rss"
    else: cmdArr[0]
  feed = fetch(url)
    
discard parse(feed)
# todo: actually analyze fields
