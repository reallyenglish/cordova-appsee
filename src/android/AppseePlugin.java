package org.reallyenglish.cordova;

import java.util.Map;
import java.util.HashMap;

import org.json.JSONArray;
import org.json.JSONException;

import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CallbackContext;

import com.appsee.Appsee;

public class AppseePlugin extends CordovaPlugin {
    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callback) throws JSONException {
        try {
            if ("init".equals(action)) {
                this.start(args);
            } else if ("startScreen".equals(action)) {
                this.startScreen(args);
            } else if ("addEvent".equals(action)) {
                this.addEvent(args);
            } else if ("markViewAsSensitive".equals(action)) {
                this.markViewAsSensitive(args);
            } else if ("unmarkViewAsSensitive".equals(action)) {
                this.unmarkViewAsSensitive(args);
            } else if ("setUserId".equals(action)) {
                this.setUserId(args);
            } else if ("setLocation".equals(action)) {
                this.setLocation(args);
            } else if ("setLocationDescription".equals(action)) {
                this.setLocationDescription(args);
            } else if ("stop".equals(action)) {
                Appsee.stop();
            } else if ("stopAndUpload".equals(action)) {
                Appsee.stopAndUpload();
            } else if ("pause".equals(action)) {
                Appsee.pause();
            } else if ("resume".equals(action)) {
                Appsee.resume();
            } else {
                callback.error("Unknown Appsee API called: " + action);
                return false;
            }
            callback.success(String.format("Appsee.%s(%s)", action, args.join(", ")));
            return true;
        } catch (Exception exception) {
            callback.error(exception.getMessage());
            return false;
        }
    }

    private void start(JSONArray args) throws IllegalArgumentException, JSONException {
        String key = args.getString(0);
        if (key == null || key.length() == 0) {
            throw new IllegalArgumentException("missing api key");
        }
        Appsee.start(key);
    }

    private void startScreen(JSONArray args) throws IllegalArgumentException, JSONException {
        String screenName = args.getString(0);
        if (screenName == null || screenName.length() == 0) {
            throw new IllegalArgumentException("missing screen name");
        }
        Appsee.startScreen(screenName);
    }

    private void setUserId(JSONArray args) throws IllegalArgumentException, JSONException {
        String id = args.getString(0);
        if (id == null || id.length() == 0) {
            throw new IllegalArgumentException("missing user id");
        }
        Appsee.setUserId(id);
    }

    private void setLocation(JSONArray args) throws IllegalArgumentException, JSONException {
        double latitude = args.getDouble(0);
        double longitude = args.getDouble(1);
        float horizontalAccuracy = (float) args.getDouble(2);
        float verticalAccuracy = (float) args.getDouble(3);

        Appsee.setLocation(latitude, longitude, horizontalAccuracy, verticalAccuracy);
    }

    private void setLocationDescription(JSONArray args) throws IllegalArgumentException, JSONException {
        String description = args.getString(0);
        if (description == null || description.length() == 0) {
            throw new IllegalArgumentException("missing location description");
        }
        Appsee.setLocationDescription(description);
    }

    private void addEvent(JSONArray args) throws IllegalArgumentException, JSONException {
        String name = args.getString(0);
        if (name == null || name.length() == 0) {
            throw new IllegalArgumentException("missing event name");
        }
        if (args.length() == 2 && !args.isNull(1)) {
            Map<String, Object> properties = (HashMap<String, Object>)args.get(1);
            Appsee.addEvent(name, properties);
        } else {
            Appsee.addEvent(name);
        }
    }

    /**
     * Marks view as sensitive.
     *
     * markViewAsSensitive API needs reference to native instance of
     * andoid.view.View. But hybrid cordova apps have only one native view(web view)
     * and all things inside web view is html.
     *
     * @param Array of arguments.
     * @todo Update it if appsee api support comes for elements inside web view.
     */
    private void markViewAsSensitive(JSONArray args) throws UnsupportedOperationException, JSONException {
        if (args.length() == 0) {
            Appsee.markViewAsSensitive(this.webView);
        } else {
            //TODO
            throw new UnsupportedOperationException("can't access contents of web view");
        }
    }

    /**
     * Unmarks previously marked sensitive view.
     *
     * @param Array of arguments.
     * @todo Update it if appsee api support comes for elements inside web view.
     */
    private void unmarkViewAsSensitive(JSONArray args) throws UnsupportedOperationException, JSONException {
        if (args.length() == 0) {
            Appsee.unmarkViewAsSensitive(this.webView);
        } else {
            // TODO
            throw new UnsupportedOperationException("can't access contents of web view");
        }
    }

}
