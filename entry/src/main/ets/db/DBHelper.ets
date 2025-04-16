import relationalStore from '@ohos.data.relationalStore'
import { BusinessError } from '@kit.BasicServicesKit'

export class DBHelper {
  private static dbMap = new Map<string, relationalStore.RdbStore>()

  static getRdbStore(dbName: string): relationalStore.RdbStore | null {
    let rdbStore = DBHelper.dbMap.get(dbName)
    if (!rdbStore) {
      return null
    } else {
      return rdbStore
    }
  }


  static getWithCreateDb(
    context: Context,
    config: relationalStore.StoreConfig
  ): Promise<relationalStore.RdbStore> {
    return new Promise<relationalStore.RdbStore>((success, error) => {
      if (!context || !config.name) {
        error("param error context" + context + "    config:" + config.name)
        return
      }
      let rdbStore = DBHelper.dbMap.get(config.name)

      if (!rdbStore) {
        relationalStore.getRdbStore(context, config).then(rdbStore => {
          DBHelper.dbMap.set(config.name, rdbStore)
          success(rdbStore)
        }).catch((err: BusinessError) => {
          error(err)
        })
      } else {
        success(rdbStore)
      }
    })
  }
}