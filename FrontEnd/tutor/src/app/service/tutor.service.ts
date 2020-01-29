import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {EntregableDatos} from '../models/Entregables';
import {Solicitud} from '../models/solicitud';
import { Observable } from 'rxjs';
@Injectable({
  providedIn: 'root'
})
export class TutorService {

  constructor(private http: HttpClient) { }
  readonly URL_API = 'http://localhost:3000/api';

  getEntregables() {
    return this.http.get(`${this.URL_API}/entregables`);
  }

  getEntregablesI(id: string) {
     return this.http.get(`${this.URL_API}/entregables/${id}`);
  }

  deleteEntregable(id: string) {
    return this.http.delete(`${this.URL_API}/entregables/${id}`);
  }

  saveEntregable(entregable2: EntregableDatos) {
    return this.http.post(`${this.URL_API}/entregables`, entregable2);

  }

  updateEntregable(id: number, updateEntre: EntregableDatos): Observable<EntregableDatos> {
    return this.http.put(`${this.URL_API}/entregables/${id}`, updateEntre);
  }

  updateFirma(id: number, updateEntre: string) {

    return this.http.put(`${this.URL_API}/firma/${id}`, updateEntre);
  }

  getEstudiantes() {
    return this.http.get(`${this.URL_API}/estudiante`);
  }

  postSolicitud(soli: Solicitud) {
    return this.http.post(`${this.URL_API}/registro`, soli);
  }
}


