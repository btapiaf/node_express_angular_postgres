import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { SolicitudComponent } from './components/solicitud/solicitud.component';
import {HttpClientModule} from '@angular/common/http';
import {SolicitudService} from './services/solicitud.service';
import {FormsModule} from '@angular/forms';

@NgModule({
  declarations: [
    AppComponent,
    SolicitudComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule
  ],
  providers: [SolicitudService],
  bootstrap: [AppComponent]
})
export class AppModule { }
