IF %1!==! (
	SET /P msg1="Message: "
) ELSE (
	SET "msg1=%1"
)

echo %msg1%

magick ytk-transit-colors-l.png -crop 256x256 +repage +adjoin icons/icon-%d.png
magick ytk-transit-dir-l.png -crop 256x256 +repage +adjoin direction/dir-%d.png

git commit -a -m %msg1%
git push