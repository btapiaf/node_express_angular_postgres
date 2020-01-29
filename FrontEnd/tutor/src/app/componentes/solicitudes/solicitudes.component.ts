import { Component, OnInit } from '@angular/core';
import {Solicitud} from '../../models/solicitud';
import { TutorService } from 'src/app/service/tutor.service';
import {Router} from '@angular/router';

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

  soli: Solicitud = {
    tipo : '',
    cont : '',
    desti : ''
  };



  constructor(private entre: TutorService, private router: Router) { }

  ngOnInit() {
  }

  saveSoli() {
    console.log(this.soli);
    this.entre.postSolicitud(this.soli).subscribe(
      res => {

        alert('guardado Satisfactorio');
        this.router.navigate([`/index`]);

      },
    err => {

    }
);



  }

}
