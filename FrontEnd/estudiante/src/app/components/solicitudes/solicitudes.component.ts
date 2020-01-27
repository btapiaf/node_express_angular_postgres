import { Component, OnInit } from '@angular/core';
import {EmployeeService} from '../../services/employee.service';
import {Solicitudes } from '../../models/employee';

@Component({
  selector: 'app-solicitudes',
  templateUrl: './solicitudes.component.html',
  styleUrls: ['./solicitudes.component.css']
})
export class SolicitudesComponent implements OnInit {

  constructor(private datos: EmployeeService) { }

  tipo: any = [];

  prueba: Solicitudes = {
    soli : '',
    contenido : '',
    destinatario : ''
  };


  ngOnInit(): void {
    this.datos.getSolicitud().subscribe(
      res => {
        this.tipo = res;
        console.log(res);
      },
      err => console.error(err)
      );


  }

  guardar() {

  }



}
