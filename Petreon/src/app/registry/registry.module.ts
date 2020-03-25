import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { DogRegistryComponent } from './dog/dog-registry.component';
import { ProgressFlowComponent } from './progress-flow/progress-flow.component';

@NgModule({
  declarations: [
    DogRegistryComponent,
    ProgressFlowComponent,
  ],
  imports: [
    CommonModule
  ],
  exports: [
    DogRegistryComponent,
    ProgressFlowComponent,
  ]
})

export class RegistryModule { }
