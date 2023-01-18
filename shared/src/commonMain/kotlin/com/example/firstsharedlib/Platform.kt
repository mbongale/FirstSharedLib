package com.example.firstsharedlib

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform