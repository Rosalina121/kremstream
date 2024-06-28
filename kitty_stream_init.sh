#!/bin/bash

# id reference:
# 1: asciiquarium
# 2: twt
# 3: cmatrix
# 4: music
# 5: cava

# Launch windows

# [1|2]
kitten @ launch --location=vsplit --cwd /home/rosalina /usr/bin/zsh -c "twt"

# [1|2]
# [ |3]
kitten @ launch --location=hsplit --cwd /home/rosalina /usr/bin/zsh -c "chafa -f symbols /home/rosalina/VTube/Stream\ Assets\ 2024/blahaj-blåhaj.gif --relative true"

# [1|2]
# [4|3]
kitten @ focus-window --match id:1
kitten @ launch --location=hsplit --cwd /home/rosalina /usr/bin/zsh -c "bash /home/rosalina/Scripts/start_music.sh"

# [ 1 |2]
# [4|5|3]
# note: cava -p points to where you have checked out the Terminal-Music-Controller repo and cava-config generated by it
kitten @ launch --location=vsplit --cwd /home/rosalina /usr/bin/zsh -c "cava -p /home/rosalina/Gits/Terminal-Music-Controller/cava-config"

# Make id:1 (fish) 16:9
kitten @ resize-window --match id:1 --axis vertical -i 11
kitten @ resize-window --match id:1 --axis horizontal -i 41

# Make id:4 (music) a bit wider
kitten @ resize-window --match id:4 --axis horizontal -i 8

# add fishes to first window
kitten @ focus-window --match id:1
asciiquarium