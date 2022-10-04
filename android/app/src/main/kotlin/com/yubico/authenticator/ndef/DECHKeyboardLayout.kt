package com.yubico.authenticator.ndef

object DECHKeyboardLayout : BaseKeyboardLayout("DECH",
        arrayOf("", "", "", "", "a", "b", "c", "d", "e", "f", "g", /* 0xa */
                "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", /* 0x14 */
                "r", "s", "t", "u", "v", "w", "x", "z", "y", "1", /* 0x1e */
                "2", "3", "4", "5", "6", "7", "8", "9", "0", "\n", /* 0x28 */
                "", "", "\t", " ", "'", "^", "ü", "¨", "", "$", "ö", "ä", "§", ",", ".", "-")/* 0x38 */,
        arrayOf("", "", "", "", "A", "B", "C", "D", "E", "F", "G", /* 0x8a */
                "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", /* 0x94 */
                "R", "S", "T", "U", "V", "W", "X", "Z", "Y", "+", "\"", "*", "ç", "%", "&", "/", "(", ")", "=", "", "", "", "", "", "?", "`", "è", "!", "", "£", "Ö", "Ä", "°", ";", ":", "_")
)