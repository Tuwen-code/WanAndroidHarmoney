import { CommonType } from "../../../ext/TypeExt";

/**
 * 玩安卓登录以及注册接口响应数据类
 */
export interface ILoginRegist {
  admin: boolean;
  chapterTops: CommonType[];
  coinCount: number;
  collectIds: number[];
  email: string;
  icon: string;
  id: number;
  nickname: string;
  password: string;
  publicName: string;
  token: string;
  type: number;
  username: string;
}

