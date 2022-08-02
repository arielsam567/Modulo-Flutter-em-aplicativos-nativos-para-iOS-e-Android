package nativo.app.teste222;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.FlutterEngineCache;
import io.flutter.embedding.engine.dart.DartExecutor;

public class MainActivity extends AppCompatActivity {
    public FlutterEngine flutterEngine;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Instantiate a FlutterEngine.
        flutterEngine = new FlutterEngine(this);

        // Configure an initial route.
        flutterEngine.getNavigationChannel().setInitialRoute("/");

        // Start executing Dart code to pre-warm the FlutterEngine.
        flutterEngine.getDartExecutor().executeDartEntrypoint(
                DartExecutor.DartEntrypoint.createDefault()
        );
        // Cache the FlutterEngine to be used by FlutterActivity or FlutterFragment.
        FlutterEngineCache
                .getInstance()
                .put("my_engine_id", flutterEngine);
    }

    public void onButtonClick(View view) {
        System.out.println("CLICK ffff FFFF");
        startActivity(
                ///DEMORA PARA ABRIR A NOVA TELA
                //FlutterActivity.createDefaultIntent(this)

                ///ABRE INSTANTANEAMENTE A NOVA TELA
                FlutterActivity
                        .withCachedEngine("my_engine_id")
                        .build(this)
        );
    }
}