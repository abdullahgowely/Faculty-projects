package com.example.project;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;

import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;

import com.google.android.material.textfield.TextInputEditText;

public class confirm extends AppCompatActivity {
    TextInputEditText input;
    TextView name;
    @SuppressLint("MissingInflatedId")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_confirm);

        name = (TextView) findViewById(R.id.textView4);
        Intent i = getIntent();
        String Name = getIntent().getStringExtra("Name");
        name.setText(Name);


    }
}