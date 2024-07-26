import Toybox.Graphics;
import Toybox.WatchUi;
import Toybox.Lang;

using Toybox.System;
using Toybox.UserProfile;

class HeartZonesView extends View {
    private var _zones as Array<Number>;

    function initialize() {
        View.initialize();
        _zones = UserProfile.getHeartRateZones(UserProfile.HR_ZONE_SPORT_RUNNING);
    }

    function getZoneLabel(zone as Number) as String {
        if (_zones.size() != 6) { return "N/A"; }
        switch(zone){
            case 1:
                return _zones[0].format("%d") + "  -  " + _zones[1].format("%d");
            case 2:
                return (_zones[1] + 1).format("%d") + "  -  " + _zones[2].format("%d");
            case 3:
                return (_zones[2] + 1).format("%d") + "  -  " + _zones[3].format("%d");
            case 4:
                return (_zones[3] + 1).format("%d") + "  -  " + _zones[4].format("%d");
            case 5:
                return ">  " + _zones[4].format("%d");
            default:
                return "N/A";
        }
    }

    function onUpdate(dc as Dc) as Void {
        var width = dc.getWidth();
        var height = dc.getHeight();
        dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_BLACK);
        dc.clear();

        dc.setColor(Graphics.COLOR_LT_GRAY, Graphics.COLOR_TRANSPARENT);
        dc.fillRoundedRectangle(
            0.30 * width - 0.5 * 75, 0.20 * height - 0.5 * 15,
            75, 15, 8);

        dc.setColor(Graphics.COLOR_BLUE, Graphics.COLOR_TRANSPARENT);
        dc.fillRoundedRectangle(
            0.30 * width - 0.5 * 75, 0.35 * height - 0.5 * 15,
            75, 15, 8);

        dc.setColor(Graphics.COLOR_GREEN, Graphics.COLOR_TRANSPARENT);
        dc.fillRoundedRectangle(
            0.30 * width - 0.5 * 75, 0.50 * height - 0.5 * 15,
            75, 15, 8);
        
        dc.setColor(Graphics.COLOR_ORANGE, Graphics.COLOR_TRANSPARENT);
        dc.fillRoundedRectangle(
            0.30 * width - 0.5 * 75, 0.65 * height - 0.5 * 15,
            75, 15, 8);

        dc.setColor(Graphics.COLOR_RED, Graphics.COLOR_TRANSPARENT);
        dc.fillRoundedRectangle(
            0.30 * width - 0.5 * 75, 0.80 * height - 0.5 * 15,
            75, 15, 8);

        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);
        dc.drawText(
            0.825 * width, 0.20 * height,                     
            Graphics.FONT_SYSTEM_XTINY, getZoneLabel(1),                          
            Graphics.TEXT_JUSTIFY_VCENTER);
        dc.drawText(
             0.825 * width, 0.35 * height,                     
            Graphics.FONT_SYSTEM_XTINY, getZoneLabel(2),                       
            Graphics.TEXT_JUSTIFY_VCENTER);
        dc.drawText(
             0.825 * width, 0.50 * height,                     
            Graphics.FONT_SYSTEM_XTINY, getZoneLabel(3),                            
            Graphics.TEXT_JUSTIFY_VCENTER);
        dc.drawText(
             0.825 * width, 0.65 * height,                     
            Graphics.FONT_SYSTEM_XTINY, getZoneLabel(4),                         
            Graphics.TEXT_JUSTIFY_VCENTER);
        dc.drawText(
            0.75 * width, 0.80 * height,                     
            Graphics.FONT_SYSTEM_XTINY, getZoneLabel(5),                           
            Graphics.TEXT_JUSTIFY_VCENTER);

        dc.setColor(Graphics.COLOR_RED, Graphics.COLOR_TRANSPARENT);
        dc.drawLine(0, 0, width - 1, 0);
        dc.drawLine(0, 0.5 * height - 1, width - 1, 0.5 * height - 1);
        dc.drawLine(0, height - 1, width - 1, height - 1);
        dc.drawLine(0, 0, 0, height - 1);
        dc.drawLine(0.5 * width, 0, 0.5 * width, height);
        dc.drawLine(width - 1, 0, width - 1, height - 1);
    }

    function onLayout(dc as Dc) as Void {}
    function onShow() as Void {}
    function onHide() as Void {}
}

