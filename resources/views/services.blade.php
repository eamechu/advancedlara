@extends('layouts.master')

@section('content')

  <div class="row">
      
      <h2 id=thumbnails-custom-content>Services</h2> 
      <p>With a bit of extra markup, it's possible to add any kind of HTML content like headings, paragraphs, or buttons into thumbnails.</p> 

      <div class=bs-example data-example-id=thumbnails-with-custom-content> 
        <div class=row> 
          <div class="col-sm-6 col-md-4"> 
            <div class=thumbnail> 
              <img alt="Generic placeholder thumbnail" data-src=holder.js/100%x200> 
              <div class=caption> 
                <h3>Thumbnail label</h3> 
                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                </p> 
                <p>
                  <a href=# class="btn btn-primary" role=button>Button</a> 
                  <a href=# class="btn btn-default" role=button>Button</a>
                </p> 
              </div>
            </div>
          </div>

          <div class="col-sm-6 col-md-4"> 
            <div class=thumbnail> 
              <img alt="Generic placeholder thumbnail" data-src=holder.js/100%x200> 
              <div class=caption> 
                <h3>Thumbnail label</h3> 
                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                </p> 
                <p>
                  <a href=# class="btn btn-primary" role=button>Button</a> 
                  <a href=# class="btn btn-default" role=button>Button</a>
                </p> 
              </div>
            </div>
          </div>

          <div class="col-sm-6 col-md-4"> 
            <div class=thumbnail> 
              <img alt="Generic placeholder thumbnail" data-src=holder.js/100%x200> 
              <div class=caption> 
                <h3>Thumbnail label</h3> 
                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                </p> 
                <p>
                  <a href=# class="btn btn-primary" role=button>Button</a> 
                  <a href=# class="btn btn-default" role=button>Button</a>
                </p> 
              </div>
            </div>
          </div>
        </div>
      </div>

      <br>
      <br>
      <hr>

      <section id="featured-services">
      <div class="container">
        <div class="row">

          <div class="col-lg-4 box">
            <i class="glyphicon glyphicon-cloud"></i>
            <h4 class="title"><a href="">Lorem Ipsum Delino</a></h4>
            <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident</p>
          </div>

          <div class="col-lg-4 box box-bg">
            <i class="glyphicon glyphicon-th-list"></i>
            <h4 class="title"><a href="">Dolor Sitema</a></h4>
            <p class="description">Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata</p>
          </div>

          <div class="col-lg-4 box">
            <i class="glyphicon glyphicon-road"></i>
            <h4 class="title"><a href="">Sed ut perspiciatis</a></h4>
            <p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>
          </div>

        </div>
      </div>
    </section><!-- #featured-services -->

        <section id="featured-services">
      <div class="container">
        <div class="row">

          <div class="col-lg-4 box">
            <i class="glyphicon glyphicon-cloud"></i>
            <h4 class="title"><a href="">Lorem Ipsum Delino</a></h4>
            <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident</p>
          </div>

          <div class="col-lg-4 box box-bg">
            <i class="glyphicon glyphicon-th-list"></i>
            <h4 class="title"><a href="">Dolor Sitema</a></h4>
            <p class="description">Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata</p>
          </div>

          <div class="col-lg-4 box">
            <i class="glyphicon glyphicon-road"></i>
            <h4 class="title"><a href="">Sed ut perspiciatis</a></h4>
            <p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>
          </div>

        </div>
      </div>
    </section><!-- #featured-services -->

  </div>
    
@endsection