const { ccclass, property } = cc._decorator;

import CardDrafting from "../window/CardDrafting"
@ccclass
export default class Pai extends cc.Component {

    @property({ type: cc.Sprite })
    img: cc.Sprite;
    @property({ type: cc.Sprite })
    jing: cc.Sprite;

    obj: any;
    cd: CardDrafting;

    onLoad() {
        this.node.on(cc.Node.EventType.TOUCH_START, this.onTouchStart, this);
    }

    onTouchStart(event: cc.Event.EventTouch) {
        cc.log('Drag stated ...',this.obj.id);
        this.cd.save(this.obj.id);
    }

    init(cd: CardDrafting, obj: any, pa: cc.SpriteAtlas) {
        this.cd = cd;
        this.obj = obj;
        this.img.spriteFrame = pa.getSpriteFrame(obj.value);
        if (obj.jing > 0) {
            this.jing.node.active = true;
            if (obj.jing == 2) {
                this.jing.node.color = cc.color(0, 0, 255, 255);
            }
        } else {
            this.jing.node.active = false;
        }
    }
}
