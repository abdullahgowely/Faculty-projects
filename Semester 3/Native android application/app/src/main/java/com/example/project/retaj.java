package com.example.project;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class retaj extends AppCompatActivity {
    SharedPreferences sharedPreferences;

    Button button;
    Button button2;
    Button button3;
    Button button4;
    Button button5;
    Button button6;

    TextView name1;
    TextView name2;
    TextView name3;
    TextView name4;
    TextView name5;
    TextView name6;
    public static final String mypreference = "mypref";
    public static final String Name = "namekey";


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_retaj);
        button = findViewById(R.id.button);
        button2 = findViewById(R.id.button2);
        button3 = findViewById(R.id.button3);
        button4 = findViewById(R.id.button4);
        button5 = findViewById(R.id.button5);
        button6 = findViewById(R.id.button6);

        name1 = findViewById(R.id.textView2);
        name2 = findViewById(R.id.textView3);
        name3 = findViewById(R.id.textView5);
        name4 = findViewById(R.id.textView6);
        name5 = findViewById(R.id.textView8);
        name6 = findViewById(R.id.textView9);

        // shared preferences (name, mode)
        sharedPreferences = getSharedPreferences(mypreference, MODE_PRIVATE);

        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String n1 = name1.getText().toString();
                // edit shared preferences (to put data)
                SharedPreferences.Editor editor = sharedPreferences.edit();
                // put data in shared preferences
                editor.putString(Name, n1);
                editor.apply();
                openPay();
            }
        });
        button2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String n2 = name2.getText().toString();
                SharedPreferences.Editor editor = sharedPreferences.edit();
                editor.putString(Name, n2);
                editor.commit();
                openPay();
            }
        });
        button3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String n3 = name3.getText().toString();
                SharedPreferences.Editor editor = sharedPreferences.edit();
                editor.putString(Name, n3);
                editor.commit();
                openPay();
            }
        });
        button4.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String n4 = name4.getText().toString();
                SharedPreferences.Editor editor = sharedPreferences.edit();
                editor.putString(Name, n4);
                editor.commit();
                openPay();
            }
        });
        button5.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String n5 = name5.getText().toString();
                SharedPreferences.Editor editor = sharedPreferences.edit();
                editor.putString(Name, n5);
                editor.commit();
                openPay();
            }
        });
        button6.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String n6 = name6.getText().toString();
                SharedPreferences.Editor editor = sharedPreferences.edit();
                editor.putString(Name, n6);
                editor.commit();
                openPay();
            }
        });
    }

    public void openPay() {
        Intent intent1 = new Intent(this, marwa.class);
        startActivity(intent1);
    }
}