# Eka
Eka is an unfinished podcast parser/analysis tool written in Nim.

## How do I use it?

Compile with `nim compile -d:ssl main.nim` and simply run the executable.

## What does it do?

Right now? Not much. Writing something yourself is the best way to learn a language (and I can only write fibonacci number finders so many times), which is one of two reasons this program exists--the other being that I could not find a similar tool anywhere.

But if you are curious, firing it up it without arguments runs a baked-in test case. The results look like this:

````
title :: Til Death Do Us Blart 2017
pubDate :: Thu, 23 Nov 2017 12:50:21 +0000
itunes:duration :: 01:14:54


title :: Til Death Do Us Blart 2016
pubDate :: Thu, 24 Nov 2016 05:01:00 +0000
itunes:duration :: 01:34:42


title :: Til Death Do Us Blart 2015
pubDate :: Thu, 26 Nov 2015 11:30:37 +0000
itunes:duration :: 01:27:46


title :: Til Death Do Us Blart: Trailer
pubDate :: Fri, 13 Nov 2015 20:02:35 +0000
itunes:duration :: 01:31
````

## What will it do?

Overall, I'm not sure--but I do have a list of features to be added as of now.

"probably" features:
* [ ] Cross-platform tray icon
* [ ] accepting either a single url or an OPML file as input
* [ ] showing the average length of episodes
* [ ] showing the average timespan between episode releases
* [ ] showing the average filesize of episodes
* [ ] showing the average quality of an episode
  * [ ] as a measure of a ratio of length vs size 
  * [ ] as measured by bitrate (if sampling each individual episode is feasible)
* [ ] storing gathered data offline (likely as sqlite or json)
* [ ] graphical interface via webgui and [tray icon](https://github.com/zserge/tray)

"maybe/eventually" features:

* [ ] abstracting it to general rss feeds
* [ ] ability to scrape feeds on an interval, either in their entirety or just specific fields (ideally without relying on cron or the like)
* [ ] [gpodder](https://gpodder.net/developer) integration
* [ ] distributed network-based recommendation system possibly using PageRank and/or a basic DHT

Feature suggestions and general contributions in the form of PRs are welcome.

## Why Nim?

I like the raw speed that low level languages tend to offer, and the chance to use one with a Python-ish level of openness was too good to pass up. The availability of several other features (such as the optional garbage collector) played a part too.

## Why that name?

Since this is the first tool of its kind (I looked just about everywhere and found nothing), I've christened it Eka--sanskrit for _one_. This will be slightly awkward if I find a similar tool after starting this one, but the name still sounds cool either way.

## TODO

* [ ] switch to the included testing framework
* [ ] determine weird xml edge cases
  * [ ] handle edge cases
