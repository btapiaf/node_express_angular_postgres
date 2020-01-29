import { Component, OnInit } from '@angular/core';
import {TutorService} from '../../service/tutor.service';
import { EntregableDatos } from 'src/app/models/Entregables';
import {ActivatedRoute, Router} from '@angular/router';

@Component({
  selector: 'app-horarios',
  templateUrl: './horarios.component.html',
  styles: []
})

export class HorariosComponent implements OnInit {




  constructor(private tutor: TutorService, private active: ActivatedRoute, private router: Router) { }

  id2 = this.active.snapshot.params;

  entregable: EntregableDatos ;
  ngOnInit(): void {
    const params = this.active.snapshot.params;


    this.tutor.getEntregablesI(params.id).subscribe(
      res => {
        this.entregable = res;
      },
      err => console.error(err)
    );
  }

  firmar(id: number, si: string) {

    const params = this.active.snapshot.params;

    console.log(id, si);

    this.tutor.updateFirma(id, si).subscribe(
      res => {
        this.router.navigate([`/index/${+params.id}`]);
        console.log(`valio todo`);
        console.log(res);
      },
      err => {
        console.log('no valio');
        console.error(err);
      });


  }
}
