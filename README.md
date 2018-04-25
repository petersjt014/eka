# eka
Eka is an unfinished podcast parser written in Nim. 

## What does it do?

Right now? Not much. Writing something yourself is the best way to learn a language (and I can only write fibonacci number finders so many times), which is one of two reasons this program exists--the other being that I could not find a similar tool anywhere.

## What will it do?

Overall, I'm not sure--but I do have a list of features to be added as of now.

"probably" features:

* accepting either a single url or an OPML file as input
* showing the average length of episodes
* showing the average timespan between episode releases
* showing the average filesize of episodes
* showing the average quality of an episode
  * as a measure of a ratio of length vs size 
  * as measured by bitrate (if sampling each individual episode is feasible)
* storing gathered data offline (likely as sqlite or json)

"maybe" features:

* abstracting it to general rss feeds
* a graphical interface (possibly, depends on complexity) as webui, or maybe Qt
  * ability to be used as a library and as an interactive program ala [mpv](https://github.com/mpv-player/mpv)
* ability to scrape feeds on an interval, either in their entirety or just specific fields (ideally without relying on cron or the like)

Feature suggestions and general contributions in the form of PRs are welcome.

## Why Nim?

I like the raw speed that low level languages tend to offer, and the chance to use one with a Python-ish level of openness was too good to pass up. The availability of several other features (such as the optional garbage collector) played a part too.

## Why that name?

Since this is the first tool of its kind (I looked just about everywhere and found nothing), I've christened it Eka--sanskrit for _one_. This will be slightly awkward if I find a similar tool after starting this one, but the name still sounds cool either way.

## TODO

* switch to the included testing framework
* determine weird xml edge cases
  * handle edge cases
