import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Datos} from '../models/datitos';
import { Observable } from 'rxjs';
@Injectable({
  providedIn: 'root'
})
export class SolicitudService {

  constructor(private http: HttpClient) { }

  readonly URL_API = 'http://localhost:3000/api';

  getSolicitud() {
    return this.http.get(`${this.URL_API}/registro`);
  }

  postResolucion(estado: Datos) {
    return this.http.post(`${this.URL_API}/resolucion`, estado);
  }
}
