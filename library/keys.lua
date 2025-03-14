---@meta

---It is reccommended that you use the constant values defined here rather than
---any numerical values as they may change between versions
---
------
---[Official Documentation](https://tweaked.cc/module/keys.html)
keys = {
    space = 32,
    apostrophe = 39,
    comma = 44,
    minus = 45,
    period = 46,
    slash = 47,
    zero = 48,
    one = 49,
    two = 50,
    three = 51,
    four = 52,
    five = 53,
    six = 54,
    seven = 55,
    eight = 56,
    nine = 57,
    semicolon = 59,
    equals = 61,
    a = 65,
    b = 66,
    c = 67,
    d = 68,
    e = 69,
    f = 70,
    g = 71,
    h = 72,
    i = 73,
    j = 74,
    k = 75,
    l = 76,
    m = 77,
    n = 78,
    o = 79,
    p = 80,
    q = 81,
    r = 82,
    s = 83,
    t = 84,
    u = 85,
    v = 86,
    w = 87,
    x = 88,
    y = 89,
    z = 90,
    leftBracket = 91,
    backslash = 92,
    rightBracket = 93,
    grave = 96,
    enter = 257,
    tab = 258,
    backspace = 259,
    insert = 260,
    delete = 261,
    right = 262,
    left = 263,
    down = 264,
    up = 265,
    pageUp = 266,
    pageDown = 267,
    home = 268,
    ["end"] = 269,
    capsLock = 280,
    scrollLock = 281,
    numLock = 282,
    printScreen = 283,
    pause = 284,
    f1 = 290,
    f2 = 291,
    f3 = 292,
    f4 = 293,
    f5 = 294,
    f6 = 295,
    f7 = 296,
    f8 = 297,
    f9 = 298,
    f10 = 299,
    f11 = 300,
    f12 = 301,
    f13 = 302,
    f14 = 303,
    f15 = 304,
    f16 = 305,
    f17 = 306,
    f18 = 307,
    f19 = 308,
    f20 = 309,
    f21 = 310,
    f22 = 311,
    f23 = 312,
    f24 = 313,
    f25 = 314,
    numPad0 = 320,
    numPad1 = 321,
    numPad2 = 322,
    numPad3 = 323,
    numPad4 = 324,
    numPad5 = 325,
    numPad6 = 326,
    numPad7 = 327,
    numPad8 = 328,
    numPad9 = 329,
    numPadDecimal = 330,
    numPadDivide = 331,
    numPadMultiply = 332,
    numPadSubtract = 333,
    numPadAdd = 334,
    numPadEnter = 335,
    numPadEqual = 336,
    leftShift = 340,
    leftCtrl = 341,
    leftAlt = 342,
    leftSuper = 343,
    rightShift = 344,
    rightCtrl = 345,
    rightAlt = 346,
    menu = 348,
}

---Translates a key code to a written name from the `keys` API
---@param code integer
---@return string|nil name The name of the key or nil if the code was invalid
------
---[Official Documentation](https://tweaked.cc/module/keys.html#v:getName)
function keys.getName(code) end
