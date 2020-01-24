import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent {
  nombre = 'Ingeniero Hurtado';
  datos = [{

    id: 1,
    nombre: 'Boris',
    apellido: 'Tapia',
    tema: 'Ingenieria en Plataformas web'
  },
  {
    id : 2,
    nombre: 'Cynthia',
    apellido: 'Maza',
    tema: 'Machine Learned'
  },
  {
    id: 3,
    nombre: 'Carla ',
    apellido: 'Guamanzara',
    tema: 'IHM'
  },
  {
    id: 4,
    nombre: 'Lizbeth ',
    apellido: 'Simba',
    tema: 'Inteligencia artificial'

  }

];
}


