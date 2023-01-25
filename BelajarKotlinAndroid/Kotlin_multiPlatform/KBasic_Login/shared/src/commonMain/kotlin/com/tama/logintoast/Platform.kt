package com.tama.logintoast

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform