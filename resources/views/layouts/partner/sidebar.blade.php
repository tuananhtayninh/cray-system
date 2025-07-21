<div id="layoutSidenav_nav">
    <nav class="sidenav shadow-right sidenav-light">
        <div class="sidenav-menu">
            <div class="nav accordion" id="accordionSidenav">
                <!-- Sidenav Menu Heading (Core)-->
                <div class="sidenav-menu-heading">Menu</div>
                <!-- Sidenav Accordion (Dashboard)-->
                <a class="nav-link {!! request()->routeIs('partner.overview') ? 'active' : '' !!}" href="{{ route('partner.overview') }}">
                    <div class="nav-link-icon">
                        <span class="material-symbols-outlined">home</span>
                    </div> Tổng quan
                </a>
                <!-- Sidenav Link (Alerts)-->
                <a class="nav-link {!! request()->routeIs('notification') ? 'active' : '' !!}" href="{{ route('notification') }}">
                    <div class="nav-link-icon">
                        <span class="material-symbols-outlined">notifications_active</span>
                    </div> Thông báo
                </a>
                <!-- Sidenav Heading (Khac)-->
                <a class="nav-link" href="{{ route('partner.support') }}/">
                    <div class="nav-link-icon">
                        <span class="material-symbols-outlined">support_agent</span>
                    </div> Yêu cầu hỗ trợ
                </a>
                <a class="nav-link" href="{{ route('faq') }}">
                    <div class="nav-link-icon">
                        <span class="material-symbols-outlined">quiz</span>
                    </div> FAQ
                </a>
                <a class="nav-link link-danger" href="{{ route('logout') }}">
                    <div class="nav-link-icon">
                        <span class="material-symbols-outlined">logout</span>
                    </div> Đăng xuất
                </a>
            </div>
        </div>
    </nav>
</div>

<!-- Check captcha -->
@if(Auth::user()->getRoleNames()->first() == 'partner')
<script>
    $(document).ready(function(){
        let checkCaptcha = localStorage.getItem('captchaChecked');
        if(checkCaptcha){
            $('#btn-get-mission, #btn-get-mission2').removeAttr('data-bs-target');
            $('#btn-get-mission, #btn-get-mission2').attr('href','{{route("mission.index")}}');
        }
    })
</script>
@endif