# eka
Eka is an unfinished podcast parser written in Nim. 

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

"maybe" features:

* a graphical interface (possibly, depends on complexity)
* abstracting it to general rss feeds

More feature suggestions can be added as pull requests. General code PRs will be too, provided that they are well-documented (especially for features of the language I am still familiarizing myself with) and are reasonable inclusions overall.

## Why Nim?

I like the raw speed that low level languages tend to offer, and the chance to use one with a Python-ish level of openness was too good to pass up. The availability of several other features (such as the optional garbage collector) played a part too.

## Why that name?

Since this is the first tool of its kind (I looked just about everywhere and found nothing), I've christened it Eka--sanskrit for _one_. This will be slightly awkward if I find a similar tool after starting this one, but the name still sounds cool either way.
