    <!-- Fixed navbar -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/">Advanced Laravel</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            @if(Sentinel::check())
            <ul class="nav navbar-nav">
              <li class="active"><a href="/home">Home</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="/services">Services</a></li>
              <li><a href="/reports">Reports</a></li>
              <li><a href="/dashboard">Dashboard</a></li>
              <li><a href="#contact">Contact</a></li>
             </ul>
             <ul class="nav navbar-nav">
              <li>
                <a href="#" onclick="document.getElementById('logout-form').submit()">
                  <form action="/logout" method="POST" id="logout-form">
                  {{csrf_field()}}
                  </form>
                Logout
                </a>
              </li>
            </ul>
            @else
            <ul class="nav navbar-nav">
              <li class="active"><a href="/home">Home</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="/services">Services</a></li>
              <li><a href="/reports">Reports</a></li>
              <li><a href="/dashboard">Dashboard</a></li>
              <li><a href="#contact">Contact</a></li>
              <li><a href="/login">Login</a></li>
              <li><a href="/register">Register</a></li>
            </ul>
            @endif
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    