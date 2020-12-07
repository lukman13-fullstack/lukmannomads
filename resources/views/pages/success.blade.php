@extends('layouts.success')
@section('title', 'Succes Checkout')


@section('content')
<main>
  <div class="section-success d-flex align-items-center">
    <div class="col text-center">
      <img src="{{ url ('frontend/images/ic_mail.png ') }}" alt="">
      <h1>Yayyy Success</h1>
      <p>
        We've sent you mail for trips Instruction
        <br>
        please Read it as well
      </p>
      <a href="{{ url ('/')}}" class="btn btn-home-page mt-3 px-5">
        Home Page
      </a>
    </div>
  </div>
</main>

@endsection

