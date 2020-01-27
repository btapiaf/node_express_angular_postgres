import { Component, OnInit } from '@angular/core';
import {TutorService} from '../../service/tutor.service';
import { EntregableDatos } from 'src/app/models/Entregables';
import {Firma} from 'src/app/models/firma';
import {ActivatedRoute} from '@angular/router';
@Component({
  selector: 'app-horarios',
  templateUrl: './horarios.component.html',
  styles: []
})
export class HorariosComponent implements OnInit {


  constructor(private tutor: TutorService, private active: ActivatedRoute) { }

  id2 = this.active.snapshot.params;

  entregable: EntregableDatos;

  ngOnInit(): void {
    const params = this.active.snapshot.params;


    this.tutor.getEntregablesI(params.id).subscribe(
      res => {
        this.entregable = res;
      },
      err => console.error(err)
    );
  }

  editEntre(id: number) {


  }
}
