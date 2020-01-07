#!/bin/bash
cd ~/Descargas

#Compressed
classifier -st .zip .rar .r0* .r1* .arj .gz .sit .sitx .sea .xz .ace .bz2 .7z .iso .tar -sf "Compressed"

#Documents
classifier -st .doc .docx .pdf .ppt .pps .cbz .epub .mobi -sf "Documents"

#Music
classifier -st .mp3 .wav .wma .mpa .ram .ra .aac .aif .m4a -sf "Music"

#Images
classifier -st .jpg .jpeg .png .svg .psd .bmp -sf "Images"

#Software
classifier -st .exe .msi .deb -sf "Software"

#Video
classifier -st .avi .mpg .mpe .mpeg .asf .wmv .mov .qt .rm .mp4 .flv .m4v .webm .ogv .ogg .mkv -sf "Video"

#Torrents
classifier -st .torrent -sf "Torrents"
