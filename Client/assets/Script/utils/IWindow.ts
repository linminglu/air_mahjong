
export default class IWindow extends cc.Component {
    onLoad() {
        this.node.on(cc.Node.EventType.TOUCH_START, this.onTouchStart, this);
    }

    onTouchStart(event: cc.Event.EventTouch) {
    }

    init(...param) {

    }

    close(code: number = 0) {
        this.node.destroy();
    }
}
