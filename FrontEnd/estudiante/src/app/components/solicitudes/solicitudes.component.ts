import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-solicitudes',
  templateUrl: './solicitudes.component.html',
  styleUrls: ['./solicitudes.component.css']
})
export class SolicitudesComponent {

  solicitud = [{
    name: 'Cambio de Tutor',
  }, {
    name: 'Avance de Prorroga'
  }];

  destinatario = [{
    name: 'Director de Carrera'
  }];

  constructor() { }



}
