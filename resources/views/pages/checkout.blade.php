@extends('layouts.checkout')
@section('title', 'Details Travel')


@section('content')
<main>
  <section class="section-details-header"></section>
  <section class="section-details-content">
      <div class="container">
          <div class="row">
              <div iv class="col p-0">
                  <nav>
                      <ol class="breadcrumb">
                          <li class="breadcrumb-item">
                              Paket Travel
                          </li>
                          <li class="breadcrumb-item">
                              Details
                          </li>
                          <li class="breadcrumb-item active">
                              Checkout
                          </li>
                      </ol>
                  </nav>
              </div>
          </div>
          <div class="row">
              <div class="col-lg-8 pl-lg-0">
                  <div class="card card-details">
                      <h1>Nusa Pendinda</h1>
                      <p>Republic Indonesia Raya </p>
                      <div class="attendee">
                          <table class="table table-responsive-sm text-center">
                              <thead>
                                  <tr>
                                      <td>Picture</td>
                                      <td>Name</td>
                                      <td>Nacioality</td>
                                      <td>Visa</td>
                                      <td>Passport</td>
                                      <td></td>
                                  </tr>
                              </thead>
                              <tbody>
                                  <tr>
                                      <td>
                                          <img src="{{ url ('frontend/images/cekimage.png') }}" alt="" height="60">
                                      <td class="align-middle">
                                          Berninda
                                      </td>
                                      <td class="align-middle">
                                          CN
                                      </td>
                                      <td class="align-middle">
                                          NA
                                      </td>
                                      <td class="align-middle">
                                          Active
                                      </td>
                                      <td class="align-middle">
                                          <a href="">
                                              <img src="{{ url ('frontend/images/asu.png') }}" alt="">
                                          </a>
                                      </td>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          <img src="{{ url ('frontend/images/cekimage2.png') }}" alt="" height="60">
                                      <td class="align-middle">
                                          Indah Kus
                                      </td>
                                      <td class="align-middle">
                                          CN
                                      </td>
                                      <td class="align-middle">
                                          NA
                                      </td>
                                      <td class="align-middle">
                                          Active
                                      </td>
                                      <td class="align-middle">
                                          <a href="">
                                              <img src="{{ url ('frontend/images/asu.png') }}" alt="">
                                          </a>
                                      </td>
                                      </td>
                                  </tr>
                              </tbody>
                          </table>
                      </div>
                      <div class="member mt-3">
                          <h2>Add Member</h2>
                          <form action="" class="form-inline">
                              <label for="inputusername" class="sr-only">Name</label>
                              <input type="text" name="inputusername" class="form-control mb-2 mr-sm-2"
                                  id="inputusername" placeholder="username">
                              <label for="inputvisa" class="sr-only">Visa</label>
                              <select name="inputvisa" id="inputvisa" class="custom-select mb-2 mr-sm-2">
                                  <option value="visa" selected>visa </option>
                                  <option value="30">30 days </option>
                                  <option value="N/A">NA </option>
                              </select>
                              <label for="doePassport" class="sr-only">Doe Passport</label>
                              <div class="input-group mb-2 mr-sm-2">
                                  <input type="text" class="form-control datepicker" id="doePassport"
                                      placeholder="Doe passpoert">
                              </div>

                              <button type="submit" class="btn btn-add-now mb-2 px-4">Add Now</button>
                          </form>
                          <h3 class="mt-2 mb-0">Note</h3>
                          <p class="disclaimer mb-0">
                              You are able to invite Memberthat has registered Nomans.
                          </p>
                      </div>
                  </div>
              </div>
              <div class="col-lg-4">
                  <div class="card card-details card-right">

                      <h2>Checkout Information</h2>
                      <table class="trip-information">
                          <tr>
                              <th width="50%">Member</th>
                              <td width="50%" class="text-right">
                                  2 person
                              </td>
                          </tr>
                          <tr>
                              <th width="50%">Additional Visa</th>
                              <td width="50%" class="text-right">
                                  $190,00
                              </td>
                          </tr>
                          <tr>
                              <th width="50%">Trip Price</th>
                              <td width="50%" class="text-right">
                                  $80,00 / person
                              </td>
                          </tr>
                          <tr>
                              <th width="50%">Sub Total</th>
                              <td width="50%" class="text-right">
                                  $279,33
                              </td>
                          </tr>
                          <tr>
                              <th width="50%">Total (+unique code)</th>
                              <td width="50%" class="text-right text-total">
                                  <span class="text-blue">$279,</span>
                                  <span class="text-orange">33</span>
                              </td>
                          </tr>
                      </table>
                      <hr>
                      <h2>Payment Instruction</h2>
                      <p class="payment-instruction">Please Complete the payment before
                          you continue the trip
                      </p>
                      <div class="bank">
                          <div class="bank-item pb-3">
                              <img src="{{ url ('frontend/images/bank.png') }}" alt="" class="Bank-image">
                              <div class="description">
                                  <h3>Pt Lukman Id</h3>
                                  <p>Bank Central Asia
                                  </p>
                                  <p>01232131924090129
                                  </p>
                              </div>
                              <div class="clearfix"></div>
                          </div>
                          <div class="bank-item pb-3">
                              <img src="{{ url ('frontend/images/bank.png') }}" alt="" class="Bank-image">
                              <div class="description">
                                  <h3>Pt Lukman Id</h3>
                                  <p>Bank Central Asia
                                  </p>
                                  <p>01232131924090129
                                  </p>
                              </div>
                              <div class="clearfix"></div>
                          </div>
                      </div>
                  </div>
                  <div class="join-container">
                      <a href="{{ url ('/checkout/success') }}" class="btn btn-block btn-join-now mt-3 py-2">
                          I Have Made Payment
                      </a>
                  </div>
                  <div class="text-center mt-3">
                      <a href="{{ url ('/details') }}" class="text-muted">Cancel Boking</a>
                  </div>
              </div>
          </div>
      </div>
      </div>
  </section>
</main>
@endsection
@push('prepend-style')
<link rel="stylesheet" href="{{ url ('frontend/libraries/combined/css/gijgo.min.css ') }}">
@endpush
@push('addon-script')
<script src="{{ url ('frontend/libraries/combined/js/gijgo.min.js') }}"></script>
<script>
  $(document).ready(function () {
      $('.datepicker').datepicker({
          uiLibrary: 'bootstrap4',
          icons: {
              rightIcon: '<img src="{{ url ('frontend/images/tgl.png') }}"/>'
          }
      });
  });
</script>
@endpush
