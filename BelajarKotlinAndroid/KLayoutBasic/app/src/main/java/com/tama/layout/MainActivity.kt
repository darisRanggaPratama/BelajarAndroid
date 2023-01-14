package com.tama.layout

import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.EditText
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {
    // Deklrasi variable
    private var userName: EditText? = null
    private var passWord: EditText? = null
    private var login: Button? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        // Isi variable dari UI/.xml
        userName = findViewById(R.id.edt_username)
        passWord = findViewById(R.id.edt_password)
        login = findViewById(R.id.btn_login)

        // Aksi ketika tombol di klik
        login?.setOnClickListener(
            View.OnClickListener {
                // Ubah isi variable ke string
                var txtUserName = userName?.text.toString()
                var txtPassWord = passWord?.text.toString()

                // Cek isi variable
                if (txtUserName.isEmpty() || txtPassWord.isEmpty()) {
                    // Jika kosong tampilkan Toast
                    Toast.makeText(this@MainActivity, "Please fill all fields", Toast.LENGTH_SHORT)
                        .show()
                } else {
                    // Jika bernilai tampilkan isi variable di Toast
                    Toast.makeText(this@MainActivity, "Name: $txtUserName Password: $txtPassWord", Toast.LENGTH_SHORT).show()
                }
            }
        )
    }
}
