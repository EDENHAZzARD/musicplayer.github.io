# To Do List from Music Buttons Flow Chart Images
- Frist Set of Buttons,
<a href="https://github.com/MercersKitchen/MusicPlayer20260202P4.github.io/tree/main/Prototyping/Button%20Flow%20Chart#first-set-of-buttons">Click Here<a>
- Second Set of Buttons,
<a href="https://github.com/MercersKitchen/MusicPlayer20260202P4.github.io/tree/main/Prototyping/Button%20Flow%20Chart#second-set-of-buttons">Click Here<a>
- How to Draw the Buttons,
<a href="https://github.com/MercersKitchen/MusicPlayer20260202P4.github.io/tree/main/Prototyping/Button%20Flow%20Chart#how-to-draw-the-buttons">Click Here<a>

# First Set of Buttons

### not.isPlaying()
- [ ] Play-Stop-Pause
    - Single Click: STOP, 2 seconds
    - Double within 2s: Pause
    - PAUSE <80%.position(), actually PAUSE then present STOP
    - PAUSE >80%.position(), rewind.[current].play(), cue.[next].play(), then present PLAY
    - Note: last 20% of some songs has low volume and can be confusing
- [ ] NEXT Feature: depends if song is playing or not
    - isPlaying() = [current].rewind(), [next].play()
    - not.isPlaying() = cue.[next]
    - Note: access different parts of NEXT Feature

### .isPlaying(), <20s.position()
- "Searching for the VIBE"
- [ ] PAUSE on first button, can change to STOP
- [ ] Previous Feature
- [ ] Next Feature

### .isPlaying(), >20s.position(), <80%.position()
- [ ] PAUSE on first button, can change to STOP
- [ ] Rewind
- [ ] Previous Feature 
- [ ] Next Feature
- [ ] Fast Forward

### .isPlaying(), >80%.position()
- [ ] STOP on first button
    - [currnet].rewind()
- [ ] Rewind
- [ ] Previous Feature 
- [ ] Next Feature
- Note: fast forward disappears

# Second Set of Buttons
- [ ] Mute: on off, electricity to speakers
- [ ] Loop, Single Click
    - Symbol: Number 1
- [ ] Loop, Double Click
    - Symbol: Letter I (infinite)
- [ ] Loop, Triple Click, Off
    - Button Active Turns Off
    - Rewind to current song
    - not.isPlaying()
- [ ] Loop, Note: in Preferences able to set how many loops is a single click
- [ ] Shuffle, Single Click: entire playlist
- [ ] Shuffle, Double Click: Loop & Shuffle Entire Playlist
- [ ] Shuffle OPTIONAL, mini playlists saved in Preferences

# How to Draw the Buttons

---
