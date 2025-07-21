<div class="sidenav-menu-heading">Menu</div>
<a class="nav-link {!! request()->routeIs('customer.overview') ? 'active' : '' !!}" href="{{ route('customer.overview') }}">
    <div class="nav-link-icon">
        <span class="material-symbols-outlined">home</span>
    </div> <?= __('menu.overview') ?>
</a>
<a class="nav-link {!! request()->routeIs('notification') ? 'active' : '' !!}" href="{{ route('notification') }}">
    <div class="nav-link-icon">
        <span class="material-symbols-outlined">notifications_active</span>
    </div> <?= __('menu.notifications') ?>
</a>