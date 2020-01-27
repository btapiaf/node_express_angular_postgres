import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {MatFormFieldModule} from '@angular/material/form-field';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomeComponent } from './componentes/home/home.component';
import { AboutComponent } from './componentes/about/about.component';
import { HorariosComponent } from './componentes/horarios/horarios.component';
import { SolicitudesComponent } from './componentes/solicitudes/solicitudes.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { FormsModule } from '@angular/forms';
import { AgregarComponent } from './componentes/about/agregar/agregar.component';
import {ReactiveFormsModule} from '@angular/forms';
import {TutorService} from './service/tutor.service';
import {HttpClientModule} from '@angular/common/http';
import { IngresarEntregableComponent } from './componentes/ingresar-entregable/ingresar-entregable.component';
@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    AboutComponent,
    HorariosComponent,
    SolicitudesComponent,
    AgregarComponent,
    IngresarEntregableComponent
  ],
  imports: [
    ReactiveFormsModule,
    BrowserModule,
    AppRoutingModule,
    MatFormFieldModule,
    FormsModule,
    BrowserAnimationsModule,
    HttpClientModule
  ],
  providers: [
    TutorService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
