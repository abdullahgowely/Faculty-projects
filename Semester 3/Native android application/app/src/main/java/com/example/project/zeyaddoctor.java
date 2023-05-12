package com.example.project;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.Toast;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;

public class zeyaddoctor extends AppCompatActivity {
    Button button,signup_id;
    EditText mFullName,mEmail,mPassword,mConfirmpassword,mPhone;
    FirebaseAuth fAuth;
    ProgressBar progressBar;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_zeyaddoctor);
        mFullName=findViewById(R.id.mFullName);
        mEmail=findViewById(R.id.mEmail);
        mPassword=findViewById(R.id.mPassword);
        mPhone=findViewById(R.id.mPhone);
        mConfirmpassword=findViewById(R.id.mconfirmpassword);
        fAuth=FirebaseAuth.getInstance();
        button=(Button) findViewById(R.id.button);
        progressBar=findViewById(R.id.progressBar);
        String emailPattern="[a-zA-z0-9._-]+@[a-z]+\\.+[a-z]+";
        button.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View view) {
                String email=mEmail.getText().toString().trim();
                String password=mPassword.getText().toString().trim();
                String name=mFullName.getText().toString().trim();
                String phone=mPhone.getText().toString().trim();
                String confirmpassword=mConfirmpassword.getText().toString().trim();

                if (TextUtils.isEmpty(email)){
                    mEmail.setError("Email is Required.");
                    return;
                }
                if (TextUtils.isEmpty(email)){
                    mEmail.setError("Email is Required.");
                    return;
                }

                if (!email.matches(emailPattern)){
                    mEmail.setError("Enter connext Email");
                    return;
                }
                if (!password.equals(confirmpassword)){
                    mConfirmpassword.setError("Password Not Match Both Field");

                    return;
                }

                if (TextUtils.isEmpty(password)){
                    mPassword.setError("Password is Required.");
                    return;
                }
                if (password.length()< 6){
                    mPassword.setError("Password Must be >= 6 characters");
                    return;
                }
                if (TextUtils.isEmpty(name)){
                    mFullName.setError("Email is Required.");
                    return;
                }
                if (TextUtils.isEmpty(phone)){
                    mPhone.setError("Email is Required.");
                    return;
                }
                progressBar.setVisibility(view.VISIBLE);
                fAuth.createUserWithEmailAndPassword(email,password).addOnCompleteListener(new OnCompleteListener<AuthResult>() {
                    @Override
                    public void onComplete(@NonNull Task<AuthResult> task) {
                        if (task.isSuccessful()){
                            Toast.makeText(zeyaddoctor.this, "User Created. ", Toast.LENGTH_SHORT).show();
                            openActivity();

                        }
                        else {
                            Toast.makeText(zeyaddoctor.this, "Error"+task.getException().getMessage(), Toast.LENGTH_SHORT).show();
                        }
                    }
                });
            }
        });


    }
    private void openActivity() {
        Intent intent= new Intent(this,yaya.class);
        startActivity(intent);
    }
}