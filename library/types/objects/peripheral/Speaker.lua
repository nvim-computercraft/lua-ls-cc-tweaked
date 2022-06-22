---@meta

---The speaker peripheral allows you to play music discs, notes, Minecraft
---sounds, and custom audio
---
------
---[Official Documentation](https://tweaked.cc/peripheral/speaker.html)
---@class Speaker
Speaker = {}

---Plays a note through the speaker
---
---The pitch argument uses semitones as the unit. This directly maps to the number of clicks on a note block. For reference, 0, 12, and 24 map to F#, and 6 and 18 map to C.
---
---A maximum of 8 notes can be played in a single tick. If this limit is hit, this function will return false.
---@param instrument instrument The instrument to play on
---@param volume? number The volume to play at (0.0 - 3.0, defaults to 1.0)
---@param pitch? number The pitch to play at in semitones from 0 to 24 (defaults to 12)
---@return boolean success If the note could be played or if the limit was reached
---@throws If the `instrument` does not exist
------
---[Official Documentation](https://tweaked.cc/peripheral/speaker.html#v:playNote)
function Speaker.playNote(instrument, volume, pitch) end

---Play a Minecraft sound through the speaker
---
---Only one sound can be played at once. This function will return false if
---another sound was started this tick, or if some audio is still playing.
---@param name soundEffect The name of the sound to play
---@param volume? number The volume to play at (0.0 - 3.0, defaults to 1.0)
---@param pitch? number The speed to play at (0.5 - 2.0, defaults to 12)
---@return boolean success If the sound could be played
---@throws If the sound name was invalid
---## Example
---```
---local speaker = peripheral.find("speaker")
---speaker.playSound("entity.creeper.primed")
---```
------
---[Official Documentation](https://tweaked.cc/peripheral/speaker.html#v:playSound)
function Speaker.playSound(name, volume, pitch) end

---Attempt to stream audio to the speaker
---
---This accepts a list of audio samples as amplitudes between -128 and 127.
---These are stored in an internal buffer and played back at 48kHz. If this
---buffer is full, this function will return false. You should wait for a
---`speaker_audio_empty` event before trying again.
---
---🗒️ The speaker only buffers a single call to `playAudio()` at once. This means
---if you try to play a small number of samples, you'll have a lot of stutter.
---You should try to play as many samples in one call as possible (up to
---128×1024), as this reduces the chances of audio stuttering or halting,
---especially when the server or computer is lagging.
---@param audio number[] An array of amplitudes
---@param volume? number The volume to play the audio at. Defaults to the previous value given
---@return boolean success If there was room to accept the audio data
---@throws If the audio data is malformed
---## Example
---```
---local dfpwm = require("cc.audio.dfpwm")
---local speaker = peripheral.find("speaker")
---
---local decoder = dfpwm.make_decoder()
---for chunk in io.lines("data/example.dfpwm", 16 * 1024) do
---    local buffer = decoder(chunk)
---
---    while not speaker.playAudio(buffer) do
---        os.pullEvent("speaker_audio_empty")
---    end
---end
---```
------
---[Official Documentation](https://tweaked.cc/peripheral/speaker.html#v:playAudio)
function Speaker.playAudio(audio, volume) end

---Stop all audio being played by this speaker
---
------
---[Official Documentation](https://tweaked.cc/peripheral/speaker.html#v:stop)
function Speaker.stop() end
