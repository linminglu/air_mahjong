const { ccclass, property } = cc._decorator;
import Window from "./Window"

@ccclass
export default class Global {

    public static dataView: Window;

    public static KeyEvent() {

        cc.systemEvent.on(cc.SystemEvent.EventType.KEY_DOWN.toString(), Global.onKeyDown);
    }

    public static onKeyDown(event) {
        switch (event.keyCode) {
            case 6:
            case 27:
                if (Global.dataView == null || Global.dataView.node != null && !Global.dataView.node.isValid) {
                    Global.dataView = new Window("DataView");
                }
                break;
        }
    }

    public static GotoScene(name, ...param) {
        cc.director.loadScene(name, function (err, scene) {
            var canvas = scene.getChildByName('Canvas');
            var script = canvas.getComponent(name);
            if (script.init instanceof Function) {
                script.init.apply(script, param);
            }
        });
    }

    public static StringIP(ip: number): string {
        return (ip >> 24 & 0xff) + "." + (ip >> 16 & 0xff) + "." + (ip >> 8 & 0xff) + "." + (ip & 0xff);
    }
}