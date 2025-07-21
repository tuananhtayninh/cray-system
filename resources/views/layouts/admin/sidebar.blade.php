<div class="sidenav-menu-heading">Menu</div>
<a class="nav-link {!! request()->routeIs('home') ? 'active' : '' !!}" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#collapseHome" aria-expanded="false" aria-controls="collapseHome">
    <div class="nav-link-icon">
        <span class="material-symbols-outlined">home</span>
    </div> <?= __('common.overview') ?> <div class="sidenav-collapse-arrow">
        <span class="material-symbols-outlined">chevron_right</span>
    </div>
</a>
<a class="nav-link {!! request()->routeIs('order') ? 'active' : '' !!}" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#collapseProduct" aria-expanded="false" aria-controls="collapseProduct">
    <div class="nav-link-icon">
        <span class="material-symbols-outlined">list_alt</span>
    </div> Daily Check<div class="sidenav-collapse-arrow">
        <span class="material-symbols-outlined">chevron_right</span>
    </div>
</a>
<div class="collapse {!! request()->routeIs('category.index') || request()->routeIs('category.create') || request()->routeIs('product.index') || request()->routeIs('product.create') || request()->routeIs('order.index') || request()->routeIs('order.create') ? 'show' : '' !!}" id="collapseProduct" data-bs-parent="#accordionProduct">
    <nav class="sidenav-menu-nested nav accordion" id="accordionProductChild">
        <a class="nav-link {!! request()->routeIs('category.index') || request()->routeIs('category.create') ? 'active' : '' !!}" href="{{ route('category.index') }}">Danh mục</a>
        <a class="nav-link {!! request()->routeIs('product.index') || request()->routeIs('product.create') ? 'active' : '' !!}" href="{{ route('product.index') }}">Báo cáo</a>
    </nav>
</div>