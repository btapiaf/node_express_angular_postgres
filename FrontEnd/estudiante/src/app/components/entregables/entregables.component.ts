import { Component, OnInit } from '@angular/core';
import {EmployeeService} from '../../services/employee.service';
import {ActivatedRoute, Router} from '@angular/router';

@Component({
  selector: 'app-entregables',
  templateUrl: './entregables.component.html',
  styleUrls: ['./entregables.component.css']
})
export class EntregablesComponent implements OnInit {
  entregable: any = [];
  id = this.active.snapshot.params;
  acu = 0;
  constructor(private datos: EmployeeService, private active: ActivatedRoute ) { }

  ngOnInit() {

    const params = this.id;
    this.datos.getEntregablesI(params.id).subscribe(
      res => {
        this.entregable = res;
      },
      err => console.error(err)


    );

  }

}
