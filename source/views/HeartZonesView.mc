import Toybox.Graphics;
import Toybox.WatchUi;
import Toybox.Lang;

using Toybox.System;
using Toybox.UserProfile;

class HeartZonesView extends View {
    var zones as Array<Number>;

    function initialize() {
        View.initialize();
        zones = UserProfile.getHeartRateZones(UserProfile.HR_ZONE_SPORT_RUNNING);
        System.println("zones : ");
        for(var i = 0; i < zones.size(); i += 1) {
            System.println("Zone - " + i + " = " + zones[i]);
        }
    }

    function getZoneLabel(zone as Number) as String {
        if (zones.size() != 6) { return "N/A"; }
        switch(zone){
            case 1:
                return zones[0].format("%d") + "  -  " + zones[1].format("%d");
            case 2:
                return (zones[1] + 1).format("%d") + "  -  " + zones[2].format("%d");
            case 3:
                return (zones[2] + 1).format("%d") + "  -  " + zones[3].format("%d");
            case 4:
                return (zones[3] + 1).format("%d") + "  -  " + zones[4].format("%d");
            case 5:
                return ">  " + zones[4].format("%d");
            default:
                return "N/A";
        }
    }

    function onUpdate(dc as Dc) as Void {
        dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_BLACK);
        dc.clear();

        dc.setColor(Graphics.COLOR_LT_GRAY, Graphics.COLOR_TRANSPARENT);
        dc.fillRoundedRectangle(
            0.30 * dc.getWidth() - 0.5 * 75, 0.20 * dc.getHeight() - 0.5 * 15,
            75, 15, 8);

        dc.setColor(Graphics.COLOR_BLUE, Graphics.COLOR_TRANSPARENT);
        dc.fillRoundedRectangle(
            0.30 * dc.getWidth() - 0.5 * 75, 0.35 * dc.getHeight() - 0.5 * 15,
            75, 15, 8);

        dc.setColor(Graphics.COLOR_GREEN, Graphics.COLOR_TRANSPARENT);
        dc.fillRoundedRectangle(
            0.30 * dc.getWidth() - 0.5 * 75, 0.50 * dc.getHeight() - 0.5 * 15,
            75, 15, 8);
        
        dc.setColor(Graphics.COLOR_ORANGE, Graphics.COLOR_TRANSPARENT);
        dc.fillRoundedRectangle(
            0.30 * dc.getWidth() - 0.5 * 75, 0.65 * dc.getHeight() - 0.5 * 15,
            75, 15, 8);

        dc.setColor(Graphics.COLOR_RED, Graphics.COLOR_TRANSPARENT);
        dc.fillRoundedRectangle(
            0.30 * dc.getWidth() - 0.5 * 75, 0.80 * dc.getHeight() - 0.5 * 15,
            75, 15, 8);

        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);
        dc.drawText(
            0.825 * dc.getWidth(), 0.20 * dc.getHeight(),                     
            Graphics.FONT_SYSTEM_XTINY, getZoneLabel(1),                          
            Graphics.TEXT_JUSTIFY_VCENTER);
        dc.drawText(
             0.825 * dc.getWidth(), 0.35 * dc.getHeight(),                     
            Graphics.FONT_SYSTEM_XTINY, getZoneLabel(2),                       
            Graphics.TEXT_JUSTIFY_VCENTER);
        dc.drawText(
             0.825 * dc.getWidth(), 0.50 * dc.getHeight(),                     
            Graphics.FONT_SYSTEM_XTINY, getZoneLabel(3),                            
            Graphics.TEXT_JUSTIFY_VCENTER);
        dc.drawText(
             0.825 * dc.getWidth(), 0.65 * dc.getHeight(),                     
            Graphics.FONT_SYSTEM_XTINY, getZoneLabel(4),                         
            Graphics.TEXT_JUSTIFY_VCENTER);
        dc.drawText(
            0.75 * dc.getWidth(), 0.80 * dc.getHeight(),                     
            Graphics.FONT_SYSTEM_XTINY, getZoneLabel(5),                           
            Graphics.TEXT_JUSTIFY_VCENTER);
    }

    function onLayout(dc as Dc) as Void {}
    function onShow() as Void {}
    function onHide() as Void {}
}

