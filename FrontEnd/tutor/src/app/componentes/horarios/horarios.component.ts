import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-horarios',
  templateUrl: './horarios.component.html',
  styles: []
})
export class HorariosComponent {

  datos = [{

    Id: 1,
    nombre: 'Boris Tapia',
    hora: '18h15',
    dia: 'jueves'
  },
  {
    Id: 2,
    nombre: 'Cynthia Maza',
    hora: '17h20',
    dia: 'lunes'
  },
  {
    Id: 3,
    nombre: 'Carla Guamanzara',
    hora: '18h15',
    dia: 'jueves'
  }
];




}
