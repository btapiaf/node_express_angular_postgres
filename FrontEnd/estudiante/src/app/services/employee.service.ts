import { Injectable } from '@angular/core';
import { HttpClient} from '@angular/common/http';
import {Solicitudes } from '../models/employee';
@Injectable({
  providedIn: 'root'
})
export class EmployeeService {

  readonly URL_API = 'http://localhost:3000/api';
  constructor(private http: HttpClient) {}

  getEstudiante() {
    return this.http.get(`${this.URL_API}/estudiante`);
  }

  getEntregables() {
    return this.http.get(`${this.URL_API}/entregables`);
  }

  getSolicitud() {
    return this.http.get(`${this.URL_API}/registro`);
  }

  postSolcitud(Solicitud: Solicitudes) {
    return this.http.post(`${this.URL_API}/registro`, Solicitud);

  }
}
