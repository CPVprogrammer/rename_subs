<pre>
this is a group of files renamer by extension, and is common used to rename subtitles with the video name

Usage: 
   in the video directory execute the script extension optional and case sensitive
	 must have the same amount of subtitles files than videos files in the directory to work
	 and the two groups must be sorted
	 
   /full path to script/rename_subs.sh [extension]
   
example:
  > cd /videos/tvshow/season01
  > ls
  > subtitle 1x01 title.srt
  > subtitle 1x02 other title.srt
  > subtitle 1x03 another title.srt
  > video_S01E01.mkv
  > video_S01E02.mkv
  > video_S01E03.mkv
  >
  > /scripts/rename_subs.sh  
or use the script with extension
  > /scripts/rename_subs.sh srt
  
output:
  > ls
  > video_S01E01.mkv
  > video_S01E01.srt
  > video_S01E02.mkv
  > video_S01E02.srt
  > video_S01E03.mkv
  > video_S01E03.srt
</pre>
