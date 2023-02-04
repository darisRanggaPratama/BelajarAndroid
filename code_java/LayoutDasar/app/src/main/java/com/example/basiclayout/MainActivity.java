package com.example.basiclayout;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    private EditText userName, passWord;
    private Button login;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        // Deklarasi Variable
        userName = findViewById(R.id.edt_username);
        passWord = findViewById(R.id.edt_password);
        login = findViewById(R.id.btn_login);

        login.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                // Ambil value dari layout (xml). Konversi ke String
                String txtUserName = userName.getText().toString();
                String txtPassWord = passWord.getText().toString();

                // Cek value variable
                if (txtUserName.isEmpty() || txtPassWord.isEmpty()) {
                    // Toast bila nilai null
                    Toast.makeText(MainActivity.this, "Please fill all fields", Toast.LENGTH_SHORT).show();
                } else {
                    // Toast tampilkan value bila benar. Toast Sebentar.
                    Toast.makeText(MainActivity.this, "Nama: " + txtUserName + " Password: " + txtPassWord, Toast.LENGTH_SHORT).show();
                }
            }
        });
    }
}