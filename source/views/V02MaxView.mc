import Toybox.Graphics;
import Toybox.WatchUi;
import Toybox.Lang;

using Toybox.UserProfile;

class V02MaxView extends View {
    private var _vo2max as Float?;
    private var _vma as Float?;

    function initialize() {
        View.initialize();
        _vo2max = UserProfile.getProfile().vo2maxRunning;
        _vma = _vo2max / 3.5;
    }

    function getV02maxLabel() as String {
        if (_vo2max == null){ return "N/A"; }
        return _vo2max.format("%d");
    }

    function getVMALabel() as String {
        if (_vma == null){ return "N/A"; }
        return _vma.format("%.1f");
    }

    function onUpdate(dc as Dc) as Void {
        var width = dc.getWidth();
        var height = dc.getHeight();
        dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_BLACK);
        dc.clear();

        dc.setColor(Graphics.COLOR_LT_GRAY, Graphics.COLOR_TRANSPARENT);
        dc.drawText(
            0.30 * width, 0.35 * height,                     
            Graphics.FONT_SMALL, "V02",                          
            Graphics.TEXT_JUSTIFY_CENTER);
        dc.drawText(
            0.70 * width, 0.35 * height,                     
            Graphics.FONT_SMALL, "VMA",                          
            Graphics.TEXT_JUSTIFY_CENTER);

        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);
        dc.drawText(
            0.30 * width, 0.50 * height,                     
            Graphics.FONT_LARGE, getV02maxLabel(),                          
            Graphics.TEXT_JUSTIFY_CENTER);
        dc.drawText(
            0.70 * width, 0.50 * height,                     
            Graphics.FONT_LARGE, getVMALabel(),                          
            Graphics.TEXT_JUSTIFY_CENTER);
            
        dc.setColor(Graphics.COLOR_LT_GRAY, Graphics.COLOR_TRANSPARENT);
        dc.fillRectangle(
            0.50 * width - 1, (0.50 - 0.5 * 0.20) * height,
            2, 0.20 * height);

        // dc.setColor(Graphics.COLOR_RED, Graphics.COLOR_TRANSPARENT);
        // dc.drawLine(0, 0, width - 1, 0);
        // dc.drawLine(0, 0.5 * height - 1, width - 1, 0.5 * height - 1);
        // dc.drawLine(0, height - 1, width - 1, height - 1);
        // dc.drawLine(0, 0, 0, height - 1);
        // dc.drawLine(0.5 * width, 0, 0.5 * width, height);
        // dc.drawLine(width - 1, 0, width - 1, height - 1);
    }

    function onLayout(dc as Dc) as Void {}
    function onShow() as Void {}
    function onHide() as Void {}
}

