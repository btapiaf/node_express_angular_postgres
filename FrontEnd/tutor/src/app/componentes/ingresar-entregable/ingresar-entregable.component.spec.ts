import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { IngresarEntregableComponent } from './ingresar-entregable.component';

describe('IngresarEntregableComponent', () => {
  let component: IngresarEntregableComponent;
  let fixture: ComponentFixture<IngresarEntregableComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ IngresarEntregableComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(IngresarEntregableComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
