import { Component, OnInit } from '@angular/core';
import {EmployeeService} from '../../services/employee.service';

@Component({
  selector: 'app-entregables',
  templateUrl: './entregables.component.html',
  styleUrls: ['./entregables.component.css']
})
export class EntregablesComponent implements OnInit {
  entregable: any = [];
  constructor(private datos: EmployeeService ) { }

  ngOnInit() {
    this.datos.getEntregables().subscribe(
      res => {
        this.entregable = res;
      },
      err => console.error(err)


    );

  }

}
