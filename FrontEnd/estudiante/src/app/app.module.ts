import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { SolicitudesComponent } from './components/solicitudes/solicitudes.component';
import { IndexComponent } from './components/index/index.component';

import {FormsModule} from '@angular/forms';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import {NgFallimgModule} from 'ng-fallimg';
import {HttpClientModule} from '@angular/common/http';

import {EmployeeService} from './services/employee.service';
import { EntregablesComponent } from './components/entregables/entregables.component';
@NgModule({
  declarations: [
    AppComponent,
    SolicitudesComponent,
    IndexComponent,
    EntregablesComponent,

  ],
  imports: [
    HttpClientModule,
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    BrowserAnimationsModule,
    NgFallimgModule.forRoot({
      default: '/assets/imagen1.png'
    })
  ],
  providers: [EmployeeService],
  bootstrap: [AppComponent]
})
export class AppModule { }
