import Toybox.Graphics;
import Toybox.WatchUi;
import Toybox.Lang;

using Toybox.UserProfile;

class PacesView extends View {
    private var _vma as Float?;

    function initialize() {
        View.initialize();
        _vma = UserProfile.getProfile().vo2maxRunning / 3.5;
    }

    function getPaceLabel(percentage as Number) as String {
        var pace = 60 / (0.01 * percentage * _vma);
        return pace.format("%.2f");
    }

    function drawPaceLine(dc as Dc, percentage as Number, line as Float) {
        var width = dc.getWidth();
        var height = dc.getHeight();
        var font = dc.getFontHeight(Graphics.FONT_SYSTEM_TINY);
        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);
        dc.drawText(
            0.30 * width, line * height - 0.5 * font,                     
            Graphics.FONT_SYSTEM_TINY, percentage + " %",                          
            Graphics.TEXT_JUSTIFY_CENTER);
        dc.drawText(
            0.5 * width, line * height - 0.5 * font,                     
            Graphics.FONT_SYSTEM_TINY, "—",                          
            Graphics.TEXT_JUSTIFY_CENTER);
        dc.drawText(
            0.70 * width, line * height - 0.5 * font,                     
            Graphics.FONT_SYSTEM_TINY, getPaceLabel(percentage),                          
            Graphics.TEXT_JUSTIFY_CENTER);
    }

    function onUpdate(dc as Dc) as Void {
        dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_BLACK);
        dc.clear();

        drawPaceLine(dc, 105, 0.2);
        drawPaceLine(dc, 100, 0.35);
        drawPaceLine(dc, 95, 0.50);
        drawPaceLine(dc, 90, 0.65);
        drawPaceLine(dc, 85, 0.80);

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

