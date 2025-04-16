import emitter from '@ohos.events.emitter'

export default class EventBus {
  private static instace: EventBus
  private subscribers = new Map<number, Map<string, (eventData: emitter.EventData) => void>>()

  private constructor() {

  }

  static getInstance(): EventBus {
    if (!EventBus.instace) {
      EventBus.instace = new EventBus()
    }
    return EventBus.instace
  }

  regist(id: number, key: string, callback: (eventData: emitter.EventData) => void) {
    let keyMap = this.subscribers[id] as Map<string, (eventData: emitter.EventData) => void>

    if (keyMap === undefined) {
      this.subscribers[id] = new Map<string, (eventData: emitter.EventData) => void>()
      keyMap = this.subscribers[id] as Map<string, (eventData: emitter.EventData) => void>
      keyMap.set(key, callback)

      let event: emitter.InnerEvent = {
        eventId: id,
        priority: emitter.EventPriority.IMMEDIATE
      }

      emitter.on(event, (event) => {
        let targetMap = this.subscribers[id] as Map<string, (eventData: emitter.EventData) => void>
        targetMap.forEach((cb) => {
          cb(event)
        })
      })
    } else {
      keyMap.set(key, callback)
    }
  }


  unregistByKey(id: number, key: string) {
    let keyMap = this.subscribers[id] as Map<string, (eventData: emitter.EventData) => void>
    if (keyMap !== null) {
      keyMap.delete(key)
    }
  }

  unregistById(id: number) {
    emitter.off(id)
    this.subscribers.delete(id)
  }


  post(id: number, data?: object
  ) {
    let event: emitter.InnerEvent = {
      eventId: id,
      priority: emitter.EventPriority.IMMEDIATE //事件立即被投递
    }
    let eventdata: emitter.EventData = {
      data: data
    }
    emitter.emit(event, eventdata)
  }
}

// 定义明确字段的接口
interface PostData {

  dynamicFields?: Map<string, string | number | boolean>;  // 动态字段使用 Map，限定值类型
}