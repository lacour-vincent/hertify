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

        dc.setColor(Graphics.COLOR_LT_GRAY, Graphics.COLOR_TRANSPARENT);
        dc.drawText(
            0 * width, 0 * height,                     
            Graphics.FONT_XTINY, "Hello World",                          
            Graphics.TEXT_JUSTIFY_LEFT);
    }

    function onLayout(dc as Dc) as Void {}
    function onShow() as Void {}
    function onHide() as Void {}
}
