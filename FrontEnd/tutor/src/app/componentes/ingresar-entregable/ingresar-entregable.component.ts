import { Component, OnInit } from '@angular/core';
import { EntregableDatos } from 'src/app/models/Entregables';
import {TutorService} from '../../service/tutor.service';
import {Router, ActivatedRoute} from '@angular/router';

@Component({
  selector: 'app-ingresar-entregable',
  templateUrl: './ingresar-entregable.component.html',
  styleUrls: ['./ingresar-entregable.component.css']
})
export class IngresarEntregableComponent implements OnInit {


  constructor(private entre: TutorService, private router: Router, private activeRoute: ActivatedRoute) { }

  params = this.activeRoute.snapshot.params;
  entregable: EntregableDatos = {
    id_tu : 1,
    id_es : +this.params.id,
    dia: '',
    hora: '',
    porce: 0,
    desc: '',
    firma: false
  };

  saveEntregable() {
    console.log(this.entregable);
    this.entre.saveEntregable(this.entregable).subscribe(
      res => {
        this.router.navigate([`/index/${+this.params.id}`]);
        console.log(res);
      },
      erro => console.error(erro)
    );
  }

  ngOnInit() {
  }




}
