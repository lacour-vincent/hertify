import Toybox.Graphics;
import Toybox.WatchUi;
import Toybox.Lang;

using Toybox.System;
using Toybox.UserProfile;

class V02MaxView extends View {
    private var _vo2max as Float?;

    function initialize() {
        View.initialize();
        _vo2max = UserProfile.getProfile().vo2maxRunning;
    }

    function getV02maxLabel() as String {
        if (_vo2max == null){ return "N/A"; }
        return _vo2max.format("%d");
    }

    function getVMALabel() as String {
        if (_vo2max == null){ return "N/A"; }
        var vma = _vo2max / 3.5;
        return vma.format("%.1f");
    }

    function onUpdate(dc as Dc) as Void {
        dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_BLACK);
        dc.clear();

        dc.setColor(Graphics.COLOR_LT_GRAY, Graphics.COLOR_TRANSPARENT);
        dc.drawText(
            0.25 * dc.getWidth(), 0.35 * dc.getHeight(),                     
            Graphics.FONT_XTINY, "VO2max",                          
            Graphics.TEXT_JUSTIFY_CENTER);
        dc.drawText(
            0.75 * dc.getWidth(), 0.35 * dc.getHeight(),                     
            Graphics.FONT_XTINY, "VMA",                          
            Graphics.TEXT_JUSTIFY_CENTER);

        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);
        dc.drawText(
            0.25 * dc.getWidth(), 0.50 * dc.getHeight(),                     
            Graphics.FONT_LARGE, getV02maxLabel(),                          
            Graphics.TEXT_JUSTIFY_CENTER);
        dc.drawText(
            0.75 * dc.getWidth(), 0.50 * dc.getHeight(),                     
            Graphics.FONT_LARGE, getVMALabel(),                          
            Graphics.TEXT_JUSTIFY_CENTER);
            
        dc.setColor(Graphics.COLOR_LT_GRAY, Graphics.COLOR_TRANSPARENT);
        dc.fillRectangle(
            0.50 * dc.getWidth() - 1, (0.50 - 0.5 * 0.20) * dc.getHeight(),
            2, 0.20 * dc.getHeight());
    }

    function onLayout(dc as Dc) as Void {}
    function onShow() as Void {}
    function onHide() as Void {}
}

