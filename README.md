# VGMDB Images Downloader
A bash script made to download all the Front Covers belonging to a game from [VGMDB](https://vgmdb.net/)

## How does it Work ?

Thanks to the [VGMdb API](http://vgmdb.info/), using curl to browse through the search queries is an easy task/ Thus, I decided to make this little script.

## Requirements
Any OS that supports bash.

## How to use

Input your game's name (example : vagrant story )


```bash
./vgmdb.sh vagrant story
```
Your images will be downloaded inside the same folder as your query (so ~/"vagrant story"/ in my example), there will be one image per soundtrack.

## What's Next ?

* Make a folder per soundtrack ?
* Download all the images belonging to each soundtrack ?