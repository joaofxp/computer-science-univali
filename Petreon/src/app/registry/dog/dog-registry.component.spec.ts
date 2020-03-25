import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DogRegistryComponent } from './dog-registry.component';

describe('DogRegistryComponent', () => {
  let component: DogRegistryComponent;
  let fixture: ComponentFixture<DogRegistryComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DogRegistryComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DogRegistryComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
