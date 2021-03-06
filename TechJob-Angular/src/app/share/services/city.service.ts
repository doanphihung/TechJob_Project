import { Injectable } from '@angular/core';
import {environment} from "../../../environments/environment";
import {HttpClient} from "@angular/common/http";
import {Observable} from "rxjs";


const API_URL = `${environment.apiUrl}`;
@Injectable({
  providedIn: 'root'
})
export class CityService {
  constructor(private http: HttpClient) { }

  public getAll(): Observable<any> {
    return this.http.get(API_URL + 'cities');
  }
}
