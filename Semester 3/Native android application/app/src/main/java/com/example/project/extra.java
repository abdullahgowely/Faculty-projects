package com.example.project;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class extra extends AppCompatActivity {
Button button;
Button button2;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_extra);
        button=(Button) findViewById(R.id.button12);
        button2=(Button) findViewById(R.id.button2);
        button2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                openActivity2();
            }
        });
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                openActivity3();
            }});


    }    private void openActivity2() {
        Intent intent= new Intent(this,zeyaddoctor.class);
        startActivity(intent);
    }

    private void openActivity3() {
        Intent intent= new Intent(this,zeyadpatient.class);
        startActivity(intent);
    }
}
