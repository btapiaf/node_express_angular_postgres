import { Component, OnInit } from '@angular/core';
import {EmployeeService} from '../../services/employee.service';
@Component({
  selector: 'app-index',
  templateUrl: './index.component.html',
  styleUrls: ['./index.component.css']
})
export class IndexComponent implements OnInit {

  nombre = 'Bienvenido estudiante Boris Mauricio Tapia';
  constructor(private datos: EmployeeService) { }

  estu: any = [];

  ngOnInit() {
    this.datos.getEstudiante().subscribe(
      res => {
        this.estu = res;
        console.log(res);
      },
      err => console.error(err)
      );

  }



}
