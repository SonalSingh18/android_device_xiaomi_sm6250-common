package com.xiaomi.parts;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.IBinder;
import android.provider.Settings;
import android.util.Log;

import androidx.preference.PreferenceManager;

import com.xiaomi.parts.kcal.Utils;

public class BootRestoreService extends Service implements Utils {

    private static final String TAG = "XiaomiParts: BootRestoreService";
    // vars
    private SharedPreferences sharedPrefs;

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        Log.v(TAG, "onStartCommand: " + "Called");

        sharedPrefs = PreferenceManager.getDefaultSharedPreferences(this);
        restorePreferences();

        return super.onStartCommand(intent, flags, startId);
    }

    private void restorePreferences() {
        // Restore all preferences
        restoreKCal();
        restoreMiscPrefs();

        stopSelf();
    }

    private void restoreKCal() {
        // KCal disabled, return
        if (Settings.Secure.getInt(getContentResolver(), PREF_ENABLED, 0) != 1)
            return;

        FileUtils.setValue(KCAL_ENABLE, Settings.Secure.getInt(getContentResolver(),
                PREF_ENABLED, 0));

        String rgbValue = Settings.Secure.getInt(getContentResolver(),
                PREF_RED, RED_DEFAULT) + " " +
                Settings.Secure.getInt(getContentResolver(), PREF_GREEN,
                        GREEN_DEFAULT) + " " +
                Settings.Secure.getInt(getContentResolver(), PREF_BLUE,
                        BLUE_DEFAULT);

        FileUtils.setValue(KCAL_RGB, rgbValue);
        FileUtils.setValue(KCAL_MIN, Settings.Secure.getInt(getContentResolver(),
                PREF_MINIMUM, MINIMUM_DEFAULT));
        FileUtils.setValue(KCAL_SAT, Settings.Secure.getInt(getContentResolver(),
                PREF_GRAYSCALE, 0) == 1 ? 128 :
                Settings.Secure.getInt(getContentResolver(),
                        PREF_SATURATION, SATURATION_DEFAULT) + SATURATION_OFFSET);
        FileUtils.setValue(KCAL_VAL, Settings.Secure.getInt(getContentResolver(),
                PREF_VALUE, VALUE_DEFAULT) + VALUE_OFFSET);
        FileUtils.setValue(KCAL_CONT, Settings.Secure.getInt(getContentResolver(),
                PREF_CONTRAST, CONTRAST_DEFAULT) + CONTRAST_OFFSET);
        FileUtils.setValue(KCAL_HUE, Settings.Secure.getInt(getContentResolver(),
                PREF_HUE, HUE_DEFAULT));
    }

    private void restoreMiscPrefs() {

        // Restore preferences

        // USB Fastcharge
        FileUtils.setValue(DeviceSettings.USB_FASTCHARGE_PATH, Settings.Secure.getInt(getContentResolver(),
                DeviceSettings.PREF_USB_FASTCHARGE, 0));

        // FPS Info
        boolean enabled = sharedPrefs.getBoolean(DeviceSettings.PREF_KEY_FPS_INFO, false);
        if (enabled)
            startService(new Intent(this, FPSInfoService.class));
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }
}

