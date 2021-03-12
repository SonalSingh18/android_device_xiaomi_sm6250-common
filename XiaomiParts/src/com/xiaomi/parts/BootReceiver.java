/*
 * Copyright (C) 2020 The Xiaomi-SM6250 Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License
 */

package com.xiaomi.parts;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import androidx.preference.PreferenceManager;
import android.util.Log;

import com.xiaomi.parts.dirac.DiracUtils;
import com.xiaomi.parts.kcal.Utils;
import com.xiaomi.parts.ambient.SensorsDozeService;
import com.xiaomi.parts.thermal.ThermalUtils;

public class BootReceiver extends BroadcastReceiver implements Utils {

    private static final String TAG = "XiaomiParts";

    public void onReceive(Context context, Intent intent) {
        if (!intent.getAction().equals(Intent.ACTION_BOOT_COMPLETED))
            return;

        Log.v("XiaomiParts: BootReceiver", "Called");

        SharedPreferences sharedPrefs = PreferenceManager.getDefaultSharedPreferences(context);

       // Ambient
        context.startService(new Intent(context, SensorsDozeService.class));

       // Dirac
        DiracUtils.onBootCompleted(context);

       // Thermal
        ThermalUtils.initialize(context);

        Intent bootRestoreIntent = new Intent(context, BootRestoreService.class);
        context.startService(bootRestoreIntent);
    }
}
