package com.buy.winup360;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import com.buy.winup360.R;

public class MainActivity extends AppCompatActivity {
    private WebView mywebView;
    private ProgressDialog progressDialog;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setTheme(R.style.AppTheme);
        setContentView(R.layout.activity_main);
        mywebView = findViewById(R.id.webview);

        // Create and configure a ProgressDialog
        progressDialog = new ProgressDialog(this);
        progressDialog.setMessage("Please wait...");
        progressDialog.setCancelable(false);

        WebSettings webSettings = mywebView.getSettings();
        webSettings.setJavaScriptEnabled(true);
        webSettings.setDomStorageEnabled(true); // Enable local storage

        // Set WebChromeClient for handling progress updates
        mywebView.setWebChromeClient(new MyWebChromeClient());

        // Set WebViewClient for handling page navigation within the WebView
        mywebView.setWebViewClient(new MyWebViewClient());

        // Load the initial URL
        mywebView.loadUrl("https://winup360.com");
    }

    // Code For Back Button
    @Override
    public void onBackPressed() {
        if (mywebView.canGoBack()) {
            mywebView.goBack();
        } else {
            showExitConfirmationDialog();
        }
    }

    private void showExitConfirmationDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage("Are you sure you want to exit?")
                .setPositiveButton("Yes", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int id) {
                        finish();
                    }
                })
                .setNegativeButton("No", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int id) {
                        // User clicked the "No" button, do nothing and dismiss the dialog
                        dialog.dismiss();
                    }
                });
        AlertDialog dialog = builder.create();
        dialog.show();
    }

    private class MyWebViewClient extends WebViewClient {
        @Override
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            // Handle page navigation within the WebView
            view.loadUrl(url);
            return true;
        }
    }

    private class MyWebChromeClient extends WebChromeClient {
        @Override
        public void onProgressChanged(WebView view, int newProgress) {
            // If the page has finished loading, hide the ProgressDialog
            if (newProgress == 100) {
                if (progressDialog.isShowing()) {
                    progressDialog.dismiss();
                }
            } else {
                // If the page is still loading, show the ProgressDialog
                if (!progressDialog.isShowing()) {
                    progressDialog.show();
                }
            }
        }
    }
}
