import {Component, OnInit} from '@angular/core';
import {FormBuilder, FormGroup, Validators} from "@angular/forms";
import {City} from "../../../../share/models/city";
import {Router} from "@angular/router";
import {CityService} from "../../../../share/services/city.service";
import {AuthService} from "../../../../share/services/auth.service";
import {ToastrService} from "ngx-toastr";

@Component({
  selector: 'app-employer-register',
  templateUrl: './employer-register.component.html',
  styleUrls: ['./employer-register.component.css']
})
export class EmployerRegisterComponent implements OnInit {

  formRegister!: FormGroup
  cities: City[] = [];

  constructor(private formBuilder: FormBuilder,
              private router: Router,
              private cityService: CityService,
              private authService: AuthService,
              private toastr: ToastrService) {

  }

  ngOnInit(): void {
    this.formRegister = this.formBuilder.group({
      name: ['', [Validators.required]],
      email: ['', [Validators.required, Validators.email]],
      password: ['', [Validators.required, Validators.minLength(8)]],
      confirmpassword: ['', [Validators.required]],
      city_id: ['', Validators.required],
      employees: [''],
      map_link: [''],
      accept: ['', Validators.required],
    },
      {validators: this.MustMatch('password', 'confirmpassword')
    });
    this.getAllCity();

  }

  // @ts-ignore
  get f() {
    return  this.formRegister.controls;
  }

  MustMatch(controlName: string, matchingControlName: string) {
      return(formGroup: FormGroup) => {
        const control =  formGroup.controls[controlName];
        const matchingControl =  formGroup.controls[matchingControlName];
        if (matchingControl.errors && !matchingControl.errors.MustMatch) {
          return
        }
        if (control.value !== matchingControl.value) {
          matchingControl.setErrors({MustMatch: true})
        } else  {
          matchingControl.setErrors(null);
        }
      }
  }


  submit() {
    let data = this.formRegister.value;
    this.authService.employerRegister(data).subscribe(res => {
      if (res.status == 1) {
        this.toastr.success('Bạn hãy xác thực Email để tiếp tục dịch vụ!', 'Đăng ký tài khoản thành công!', {
          timeOut: 5000
        });
      } else {
        this.toastr.error(res.message);
      }
    }, (error) => {
        this.toastr.error(error.error.message);
    })
  }

  getAllCity() {
    this.cityService.getAll().subscribe((res) => {
      this.cities = res.cities;
    }, (error) => {
      console.log(error)
    },);
  }
}
