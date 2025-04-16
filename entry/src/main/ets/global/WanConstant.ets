import relationalStore from '@ohos.data.relationalStore'
import { image } from '@kit.ImageKit';

interface GeneratedObjectLiteralInterface_1 {
  name: string;
  securityLevel: relationalStore.SecurityLevel.S1;
  encrypt: boolean;
  tables: string[];
}

interface GeneratedObjectLiteralInterface_2 {
  name: string;
}

export class WanConstant {


  static DB_CONFIG: GeneratedObjectLiteralInterface_1 = {
    name: 'Wan.db',
    securityLevel: relationalStore.SecurityLevel.S1,
    encrypt: false,
    tables: ["wanUser", "searchHistory"]
  }
  static PERFERENCES_CONFIG: GeneratedObjectLiteralInterface_2 = {
    name: 'WanCache'
  }
  static readonly AVATAR_MAP: Map<number,Resource> = new Map<number,Resource>([
    [1, $r('app.media.avatar1')],
    [2, $r('app.media.avatar2')],
    [3, $r('app.media.avatar3')],
    [4, $r('app.media.avatar4')],
    [5, $r('app.media.avatar5')],
    [6, $r('app.media.avatar6')],
    [7, $r('app.media.avatar7')],
    [8, $r('app.media.avatar8')],
    [9, $r('app.media.avatar9')],
    [10, $r('app.media.avatar10')],
    [11, $r('app.media.avatar11')],
    [12, $r('app.media.avatar12')],
    [13, $r('app.media.avatar13')],
    [14, $r('app.media.avatar14')],
    [15, $r('app.media.avatar15')],
    [16, $r('app.media.avatar16')],
    [17, $r('app.media.avatar17')],
    [18, $r('app.media.avatar18')],
    [19, $r('app.media.avatar19')],
    [20, $r('app.media.avatar20')],
    [21, $r('app.media.avatar21')],
    [22, $r('app.media.avatar22')],
    [23, $r('app.media.avatar23')],
    [24, $r('app.media.avatar24')],
    [25, $r('app.media.avatar25')],
    [26, $r('app.media.avatar26')],
    [27, $r('app.media.avatar27')],
    [28, $r('app.media.avatar28')],
    [29, $r('app.media.avatar29')],
    [30, $r('app.media.avatar30')],
    [31, $r('app.media.avatar31')],
    [32, $r('app.media.avatar32')],
    [33, $r('app.media.avatar33')],
    [34, $r('app.media.avatar34')],
    [35, $r('app.media.avatar35')],
    [36, $r('app.media.avatar36')],
    [37, $r('app.media.avatar37')],
    [38, $r('app.media.avatar38')],
    [39, $r('app.media.avatar39')],
    [40, $r('app.media.avatar40')],
    [41, $r('app.media.avatar41')],
    [42, $r('app.media.avatar42')],
    [43, $r('app.media.avatar43')],
    [44, $r('app.media.avatar44')],
    [45, $r('app.media.avatar45')],
    [46, $r('app.media.avatar46')],
    [47, $r('app.media.avatar47')],
    [48, $r('app.media.avatar48')],
    [49, $r('app.media.avatar49')],
    [50, $r('app.media.avatar50')],
    [51, $r('app.media.avatar51')],
    [52, $r('app.media.avatar52')],
    [53, $r('app.media.avatar53')],
    [54, $r('app.media.avatar54')],
    [55, $r('app.media.avatar55')],
    [56, $r('app.media.avatar56')],
    [57, $r('app.media.avatar57')],
    [58, $r('app.media.avatar58')],
    [59, $r('app.media.avatar59')],
    [60, $r('app.media.avatar60')],
    [61, $r('app.media.avatar61')],
    [62, $r('app.media.avatar62')],
    [63, $r('app.media.avatar63')],
    [64, $r('app.media.avatar64')],
    [65, $r('app.media.avatar65')],
    [66, $r('app.media.avatar66')],
    [67, $r('app.media.avatar66')],
    [68, $r('app.media.avatar66')],
    [69, $r('app.media.avatar66')],
    [70, $r('app.media.avatar66')],
    [71, $r('app.media.avatar66')],
    [72, $r('app.media.avatar66')],
    [73, $r('app.media.avatar66')],
    [74, $r('app.media.avatar66')],
    [75, $r('app.media.avatar66')],
    [76, $r('app.media.avatar66')],
    [77, $r('app.media.avatar66')],
    [78, $r('app.media.avatar66')],
    [79, $r('app.media.avatar66')],
    [80, $r('app.media.avatar66')],
    [81, $r('app.media.avatar66')],
    [82, $r('app.media.avatar66')],
    [83, $r('app.media.avatar66')],
    [84, $r('app.media.avatar66')],
    [85, $r('app.media.avatar66')],
    [86, $r('app.media.avatar66')],
    [87, $r('app.media.avatar66')],
    [88, $r('app.media.avatar66')],
    [89, $r('app.media.avatar66')]
  ])


}