import { Component, OnInit } from '@angular/core';
import { SolicitudService } from 'src/app/services/solicitud.service';
import {Datos} from '../../models/datitos';

@Component({
  selector: 'app-solicitud',
  templateUrl: './solicitud.component.html',
  styleUrls: ['./solicitud.component.scss']
})
export class SolicitudComponent implements OnInit {

  estado = [
    {Nombre : 'Pendiente'},
    {Nombre : 'Rechazado'},
    {Nombre : 'Aprobado'}];

  mostrar: any = [ ];


  constructor(private solici: SolicitudService ) { }

  ngOnInit() {

    this.solici.getSolicitud().subscribe(
      res => {
        this.mostrar = res;
      },
      err => console.error(err)
    );

  }

  alFin() {
   alert('Formato cambiado');

  }
}
