import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { SolicitudesComponent } from './components/solicitudes/solicitudes.component';
import { IndexComponent } from './components/index/index.component';
import {EntregablesComponent} from './components/entregables/entregables.component';



const routes: Routes = [
  {path: 'index', component: IndexComponent},
  {path: 'entregable', component: EntregablesComponent},
  {path: 'solicitudes', component: SolicitudesComponent},
  {path: 'index', pathMatch: 'full', redirectTo: 'index'}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
