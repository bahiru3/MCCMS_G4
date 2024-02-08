<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
      rel="stylesheet" crossorigin="anonymous" />
    <link href="{{ asset('/css/admin.css') }}" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <title>@yield('title', 'Admin - Court Cases')</title>
</head>


<body>
    <div class="row g-0">
        <!-- sidebar -->
        <div class="p-3 vh-100 col-lg-3 fixed text-white bg-dark">
            <a href="{{ route('admin.home.index') }}" class="text-white text-decoration-none">
                <span class="fs-4">Admin Panel</span>
            </a>
            <hr />
            <ul class="nav flex-column sidebar">
                <li><a href="{{ route('admin.home.index') }}" class="nav-link text-white">- Admin - Home</a></li>
                <li><a href="{{ route('admin.case.asign') }}" class="nav-link text-white">- Admin - Asign</a></li>
                <li><a href="{{ route('admin.lawyer.asign') }}" class="nav-link text-white">- Admin - lowyer</a></li>
                {{-- <li><a href="#" class="nav-link text-white">- Admin - User</a></li> --}}
                <li><a href="{{ route('admin.role.index') }}" class="nav-link text-white">- Admin - User</a></li>
                <li> <a href="{{ route('home.index') }}" class="mt-2 btn bg-primary text-white">Go back to the home page</a></li>
            </ul>
        </div>
        <!-- sidebar -->
        <div class="col-lg-9 content-grey">
            <nav class="p-3 shadow text-end">
                <span class="profile-font">Admin</span>
                <img class="img-profile rounded-circle" src="{{ asset('/image/undraw_profile.svg') }}">
            </nav>
            <div class="g-0 m-5 page_content"> @yield('content')
            </div>
        </div>
    </div>
    <!-- footer -->
    <div class="copyright py-4 text-center text-white">
        <div class="container">
            <small>
                Copyright - <a class="text-reset fw-bold text-decoration-none" target="_blank"
                    href="https://twitter.com/user">
                    XYZ Company
                </a>
            </small>
        </div>
    </div>
    <!-- footer -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous">
    </script>
</body>


</html>
