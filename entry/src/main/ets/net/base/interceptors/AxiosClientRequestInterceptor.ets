import { InternalAxiosRequestConfig } from '@ohos/axios';
import { CommonType } from '../../../ext/TypeExt';

export interface AxiosClientRequestInterceptor {
  onFulfilled?: (config: InternalAxiosRequestConfig) => InternalAxiosRequestConfig | Promise<InternalAxiosRequestConfig>
  onRejected?: (error: CommonType) => CommonType
}