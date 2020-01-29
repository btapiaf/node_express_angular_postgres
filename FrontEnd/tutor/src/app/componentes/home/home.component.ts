import { Component, OnInit } from '@angular/core';
import { TutorService } from 'src/app/service/tutor.service';
import {ActivatedRoute} from '@angular/router';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
  nombre = '';
  datos: any = [];
  constructor(private tutor: TutorService, private actuvatedRoute: ActivatedRoute) { }

  ngOnInit(): void {

    this.tutor.getEstudiantes().subscribe(
      res => {
        this.datos = res;
        console.log(res);
      },
      err => console.error(err)
    );


  }

}


