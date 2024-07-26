import Toybox.Graphics;
import Toybox.WatchUi;
import Toybox.Lang;


class WidgetView extends GlanceView {

    function initialize() {
        GlanceView.initialize();
    }

    function onUpdate(dc as Dc) as Void {
        var width = dc.getWidth();
        var height = dc.getHeight();

        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);
        dc.drawText(
            0.75 * width, 0.5 * height,              
            Graphics.FONT_TINY, "Heartify",                          
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
