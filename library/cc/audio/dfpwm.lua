---@meta

---This module converts between streams of DFPWM audio data and a list of
---amplitudes.
---
---[Dynamic Filter Pulse Width Modulation
---(DFPWM)](https://wiki.vexatos.com/dfpwm) is an audio codec designed by
---[GreaseMonkey](https://gist.github.com/iamgreaser/5890329) that is relatively
---compact compared to [pulse-code
---modulation](https://en.wikipedia.org/wiki/Pulse-code_modulation) (PCM). It
---uses only 1 bit per sample, any yet, is still simple enough to encode and
---decode in real time on CC:Tweaked computers. It is not a popular file format,
---and as a result, most audio processing tools do not have the option to export
---to it. However, the online tool [music.madefor.cc](https://music.madefor.cc/)
---can be used to convert from more standard audio formats to DFPWM.
---
---DFPWM can be read from the filesystem or a web request as a string, decoded
---to PCM, and played on a speaker peripheral.
---
---For an in-depth guide to playing audio in CC:Tweaked, see the [official
---guide](https://tweaked.cc/guide/speaker_audio.html).
---
---[Official Documentation](https://tweaked.cc/library/cc.audio.dfpwm.html)
local M = {}

---Create a new encoder for converting PCM audio data into DFPWM.
---
---The returned encode function accepts a table of amplitude data between -128
---and 127 and returns encoded DFPWM data.
---
---⚠️ **Warning**: Encoders contain lots of internal state. Reusing encoders for
---multiple streams can result in incorrect audio and is not recommended.
---@return fun(PCM: integer[]): string encoder
---
---[Official Documentation](https://tweaked.cc/library/cc.audio.dfpwm.html#v:make_encoder)
function M.make_encoder() end

---Helper function for encoding an entire file of audio at once.
---
---If writing many chunks to the same file, use an encoder from `make_encoder` instead.
---@param PCM integer[]
---@return string DFPWM
---
---[Official Documentation](https://tweaked.cc/library/cc.audio.dfpwm.html#v:encode)
function M.encode(PCM) end

---Create a new decoder for converting DFPWM into PCM audio data.
---
---The returned decoder function accepts a string of DFPWM data and returns a
---table of amplitudes between -128 and 127.
---
---⚠️ **Warning**: Decoders contain lots of internal state. Reusing decoders for
---multiple streams can result in incorrect audio and is not recommended.
---@return fun(DFPWM: string): integer[]
---
---[Official Documentation](https://tweaked.cc/library/cc.audio.dfpwm.html#v:make_decoder)
function M.make_decoder() end

---Helper function for decoding an entire file of audio at once.
---
---If processing large files, you should instead read the file in chunks and
---process it using `make_decoder`.
---@param DFPWM string DFPWM data to convert
---@return integer[] PCM
---
---[Official Documentation](https://tweaked.cc/library/cc.audio.dfpwm.html#v:decode)
function M.decode(DFPWM) end

return M
