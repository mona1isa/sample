import { NgModule } from '@angular/core';

import { SampleSharedLibsModule, JhiAlertComponent, JhiAlertErrorComponent } from './';

@NgModule({
    imports: [SampleSharedLibsModule],
    declarations: [JhiAlertComponent, JhiAlertErrorComponent],
    exports: [SampleSharedLibsModule, JhiAlertComponent, JhiAlertErrorComponent]
})
export class SampleSharedCommonModule {}
