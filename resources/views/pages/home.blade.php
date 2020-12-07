@extends('layouts.app')

@section('title')
Nomans    
@endsection

@section('content')
  <!-- Header -->
  <header class="text-center">
      <h1>Explore The Beautiful World
          <br>
          As Easy One Click</h1>
      <p class="mt-3">
          You will see beautiful
          <br>
          moment you never see before
      </p>
      <a href="#" class="btn btn-get-started px-4 mt-4">
          Get Started
      </a>
  </header>
  <!-- Akhhri Header -->


  <main>
      <!-- statistik -->
      <div class="container">
          <section class="section-starts row      justify-content-center" id="start">
              <div class="col-3 col-md-2 start-details">
                  <h2>20K</h2>
                  <P>Member</P>
              </div>
              <div class="col-3 col-md-2 start-details">
                  <h2>12</h2>
                  <P>Countries</P>
              </div>
              <div class="col-3 col-md-2 start-details">
                  <h2>3K</h2>
                  <P>Member</P>
              </div>
              <div class="col-3 col-md-2 start-details">
                  <h2>72</h2>
                  <P>Parnters</P>
              </div>
          </section>
      </div>
      <!-- akhir staistik -->

      <!-- Popular -->
      <div class="section-popular" id="popular">
          <div class="container">
              <div class="row">
                  <div class="col text-center section-popular-heading">
                      <h2>Wisata Popular</h2>
                      <p>Something that you never try
                          <br>
                          before in this world</p>
                  </div>
              </div>
          </div>
      </div>
      <!-- Akhri popular -->
      <!-- Conten Popular -->
      <div class="section-popular-content" id="content">
          <div class="container">
              <div class="section-popular-travel row justify-content-center">
                  <div class="col-sm-6 col-md-4   col-lg-3">
                      <div class="card-travel text-center d-flex flex-column"
                          style="background-image: url(frontend/images/cok1.jpg);">
                          <div class=" travel-country">INDONESIA</div>
                          <div class="travel-location">Deratan, Bali</div>
                          <div class="travel-button mt-auto">
                              <a href="{{ url ('/details') }}" class="btn btn-travel-details">
                                  View Details
                              </a>
                          </div>
                      </div>
                  </div>
                  <div class="col-sm-6 col-md-4   col-lg-3">
                      <div class="card-travel text-center d-flex flex-column"
                          style="background-image: url(frontend/images/cok2.jpg);">
                          <div class=" travel-country">INDONESIA</div>
                          <div class="travel-location">Bromo, Malang</div>
                          <div class="travel-button mt-auto">
                              <a href="{{ url ('/details') }}"" class="btn btn-travel-details">
                                  View Details
                              </a>
                          </div>
                      </div>
                  </div>
                  <div class="col-sm-6 col-md-4   col-lg-3">
                      <div class="card-travel text-center d-flex flex-column"
                          style="background-image: url(frontend/images/cok3.jpg);">
                          <div class=" travel-country">INDONESIA</div>
                          <div class="travel-location">NUSA PENINDA</div>
                          <div class="travel-button mt-auto">
                              <a href="{{ url ('/details') }}"" class="btn btn-travel-details">
                                  View Details
                              </a>
                          </div>
                      </div>
                  </div>
                  <div class="col-sm-6 col-md-4   col-lg-3">
                      <div class="card-travel text-center d-flex flex-column"
                          style="background-image: url(frontend/images/cok4.jpg);">
                          <div class=" travel-country">INDONESIA</div>
                          <div class="travel-location">Dubai</div>
                          <div class="travel-button mt-auto">
                              <a href="{{ url ('/details') }}"" class="btn btn-travel-details">
                                  View Details
                              </a>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
      <!-- Akhir Contet -->
      <section class="section-network" id="netrwork">
          <!-- our network -->
          <div class="container">
              <div class="row">
                  <div class="col-md-4">
                      <h2>Our Networks</h2>
                      <p>Companies are trusted us
                          <br>
                          more than just a trip</p>
                  </div>
                  <div class="col-md-8 text-center">
                      <img src="frontend/images/logos_partner.png" alt=" class" class="img-partner">
                  </div>
              </div>
          </div>
      </section>
      <!-- akhir network-->

      <!-- testi quot -->
      <section class="section-testimonial-heading" id="testimonialheading">
          <div class="container">
              <div class="row">
                  <div class="col text-center">
                      <h2>They Are Loving Us</h2>
                      <p>Moments were giving them
                          <br>
                          the best experience</p>
                  </div>
              </div>
          </div>
          <!-- testi quot -->
          <section class="section-testimonial-content" id="testimonialcontent">
              <div class="container">
                  <div class="section-popular-travel row justify-content-center">
                      <div class="col-sm-6 col-md-6 col-lg-4">
                          <div class="card card-testimonial text-center">
                              <div class="testimonial-content">
                                  <img src="frontend/images/Group 3.png" alt="Lukman" class="mb-4 rounded-circle">
                                  <h3 class="mb-4">Lukman Pirmansah </h3>
                                  <p class="testimonial">
                                      " It was Glorius And I Could
                                      Not Stop To Say WOOHOO For
                                      Every Single Moment
                                      yohohohohoh "
                                  </p>
                              </div>
                              <hr>
                              <p class="trip-to mt-2">
                                  Trip To Ubud
                              </p>
                          </div>
                      </div>
                      <div class="col-sm-6 col-md-6 col-lg-4">
                          <div class="card card-testimonial text-center">
                              <div class="testimonial-content">
                                  <img src="frontend/images/nayla.png" alt="Lukman" class="mb-4 rounded-circle">
                                  <h3 class="mb-4">Nayla </h3>
                                  <p class="testimonial">
                                      " It was Glorius And I Could
                                      Not Stop To Say WOOHOO For
                                      Every Single Moment
                                      yohohohohoh "
                                  </p>
                              </div>
                              <hr>
                              <p class="trip-to mt-2">
                                  Trip To Ubud
                              </p>
                          </div>
                      </div>
                      <div class="col-sm-6 col-md-6 col-lg-4">
                          <div class="card card-testimonial text-center">
                              <div class="testimonial-content">
                                  <img src="frontend/images/putri.png" alt="Lukman" class="mb-4 rounded-circle">
                                  <h3 class="mb-4">Putri CLaudia </h3>
                                  <p class="testimonial">
                                      " It was Glorius And I Could
                                      Not Stop To Say WOOHOO For
                                      Every Single Moment
                                      yohohohohoh "
                                  </p>
                              </div>
                              <hr>
                              <p class="trip-to mt-2">
                                  Trip To Ubud
                              </p>
                          </div>
                      </div>
                  </div>
                  <div class="row">
                      <div class="col-12 text-center">
                          <a href="" class="btn btn-ned-help px-4 mt-4 mx-1">
                              I Need Help
                          </a>
                          <a href="" class="btn btn-get-started px-4 mt-4 mx-1">
                              Get Startded
                          </a>
                      </div>
                  </div>
              </div>
          </section>
          <!-- akhir testi -->

  </main>

@endsection