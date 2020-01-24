import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './componentes/home/home.component';
import { AboutComponent } from './componentes/about/about.component';
import { HorariosComponent } from './componentes/horarios/horarios.component';
import { SolicitudesComponent } from './componentes/solicitudes/solicitudes.component';
import { AgregarComponent } from './componentes/about/agregar/agregar.component';


const routes: Routes = [
  {path: 'about', component: AboutComponent},
  {path: 'index', component: HomeComponent},
  {path: 'horarios', component: HorariosComponent},
  {path: 'solicitudes', component: SolicitudesComponent},
  {path: 'about/agregar', component: AgregarComponent},
  {path: '**', pathMatch: 'full', redirectTo: 'home'}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
