import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-solicitudes',
  templateUrl: './solicitudes.component.html',
  styles: []
})
export class SolicitudesComponent implements OnInit {
  solicitud = [{
    name: 'Cambio de Tutor',
  }, {
    name: 'Prorroga'
  }];

  destinatario = [{
    name: 'Director de Carrera'
  }];

  constructor() { }

  ngOnInit() {
  }

}
