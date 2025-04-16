/**
 * Interface 判断类型（鸭子类型，Duck Typing）
 * 因为typescript的Interface无法直接通过类型判断实现类，所以需要判断该类中是否含有某个字段参数或者函数（duck typing）进行判断
 * @param v
 * @param k
 * @returns
 */
// export function extTypeIs<T extends object>(v: any, k: string): v is T {
//   return k in v;
// }

/**
 * 安全类型守卫：检查对象是否包含指定属性，并验证其类型结构
 * @param v - 待检测值（使用 unknown 保证类型安全）
 * @param k - 目标属性键
 */
// export function extTypeIs<T extends object>(
//   v: CommonType,  // 使用 unknown 替代 any‌:ml-citation{ref="1" data="citationList"}
//   k: PropertyKey // 更精确的键类型（替代 string）‌:ml-citation{ref="3" data="citationList"}
// ): v is T & Record<typeof k, CommonType> { // 增强类型关联性‌:ml-citation{ref="4" data="citationList"}
//   return typeof v === "object" && v !== null && k in v;
// }

// export function extTypeIs<T extends object>(
//   v: CommonType,            // 禁用 any，改用 unknown 增强类型安全‌:ml-citation{ref="8" data="citationList"}
//   k: PropertyKey         // 支持 symbol 等键类型‌:ml-citation{ref="3,4" data="citationList"}
// ): boolean {             // 返回 boolean 替代类型谓词‌:ml-citation{ref="8" data="citationList"}
//   return typeof v === 'object' && v !== null && k in v;
// }

//通用数据类型
export type CommonType = number | string | boolean | Array<number> | Array<string> | Array<boolean> | object | Object | ArrayBuffer
