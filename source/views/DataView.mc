import Toybox.Graphics;
import Toybox.WatchUi;

using Toybox.System;
using Toybox.UserProfile;

class DataView extends WatchUi.View {
    var vo2max;
    var vma;
    var zones;

    function initialize() {
        View.initialize();
        var profile = UserProfile.getProfile();
        vo2max = profile.vo2maxRunning;
        vma = roundToOneDecimal(vo2max / 3.5);
        zones = UserProfile.getHeartRateZones(UserProfile.HR_ZONE_SPORT_RUNNING);
        System.println("vo2max = " + vo2max);
        System.println("vma = " + vma);
        System.println("zones : ");
        for(var i = 0; i < zones.size(); i += 1) {
            System.println("Zone - " + i + " = " + zones[i]);
        }
    }

    // Load your resources here
    function onLayout(dc as Dc) as Void {
        setLayout(Rez.Layouts.MainLayout(dc));
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() as Void {
    }

    // Update the view
    function onUpdate(dc as Dc) as Void {
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
    }

}

