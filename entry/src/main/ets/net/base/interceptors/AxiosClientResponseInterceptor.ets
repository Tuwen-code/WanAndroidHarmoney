import { AxiosResponse } from '@ohos/axios';
import { CommonType } from '../../../ext/TypeExt';

export interface AxiosClientResponseInterceptor {
  onFulfilled?: (response: AxiosResponse) => AxiosResponse | Promise<AxiosResponse>
  onRejected?: (error: CommonType) => CommonType
}