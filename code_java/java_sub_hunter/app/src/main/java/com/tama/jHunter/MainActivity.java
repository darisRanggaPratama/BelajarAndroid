package com.tama.jHunter;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
}

/*
* Game Logic
* 1. Mengetuk game untuk memulai
* 2. Mencari objek yang posisinya random. Skor bernilai nol jika dimulai pertama kali
* 3. Layar akan dipenuhi garis melintang horizontal & vertical yang saling memotong dengan jarak tertentu
* */