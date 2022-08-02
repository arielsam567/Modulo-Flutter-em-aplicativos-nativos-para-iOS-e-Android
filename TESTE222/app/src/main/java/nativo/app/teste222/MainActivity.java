package nativo.app.teste222;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.view.FlutterMain;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void onButtonClick(View view) {
        System.out.println("CLICK ffff FFFF");
        startActivity(
                FlutterActivity.createDefaultIntent(this)
        );
    }
}