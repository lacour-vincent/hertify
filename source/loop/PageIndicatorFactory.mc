import Toybox.Graphics;
import Toybox.Lang;
import Toybox.WatchUi;

class PageIndicatorFactory extends ViewLoopFactory {
    private const NUM_PAGES = 2;

    function initialize() {
        ViewLoopFactory.initialize();
    }

    function getView(page as Number) as [View] or [View, BehaviorDelegate] {
       switch (page) {
            case 0:
                return [new $.V02MaxView(), new $.ViewDelegate()];
            case 1:
                return [new $.HeartZonesView(), new $.ViewDelegate()];
            default:
                return [new $.V02MaxView(), new $.ViewDelegate()];
        }
    }

    function getSize() {
        return NUM_PAGES;
    }
}