@inject('option' , 'App\Lib\RouteOption')
<!-- main sidebar -->
<aside id="sidebar_main">
    <div style="background-color: #fff; text-align: center;" class="sidebar_main_header">
        <div class="sidebar_logo">
            <a style="margin-left: 0px;" href="{{url('dashboard')}}" class="sSidebar_hide sidebar_logo_large">
                <img class="logo_regular" src="{{ url('uploads/op-logo/logo.png') }}" alt="" height="15" width="71"/>
            </a>
        </div>
    </div>
    <div class="menu_section">
        <ul>

            <li id="sidebar_main_account" class="" title="Account">
                <a id="tiktok_account" href="#">
                    <span class="menu_icon"><i class="material-icons">&#x2100;</i></span>
                    <span class="menu_title">HMS</span>
                </a>
                <ul>

                    <li id="sidebar_dashboard" class="" title="Dashboard">
                        <a href="{{ route('dashboard') }}">
                            <span class="menu_icon"><i class="material-icons">&#xE871;</i></span>
                            <span class="menu_title">Dashboard</span>
                        </a>
                    </li>

                    <li id="sidebar_patient_setting" title="Setting">
                        <a href="#" id="tiktok2">
                            <span class="menu_icon">
                                <i class="material-icons">supervisor_account</i>
                            </span>
                            <span class="menu_title">Patients</span>
                        </a>
                        <ul>
                            <li id="sidebar_patient">
                                <a href="{{ route('patient_index') }}">Patient</a>
                            </li>
                        </ul>
                    </li>

                    <li id="sidebar_prescription_setting" title="Prescription">
                        <a href="#" id="tiktok3">
                            <span class="menu_icon">
                                <i class="material-icons">bookmarks</i>
                            </span>
                            <span class="menu_title">Prescriptions</span>
                        </a>
                        <ul>
                            <li id="sidebar_prescription">
                                <a href="{{ route('prescription_index') }}">Prescription</a>
                            </li>
                        </ul>
                    </li>

                    <li id="sidebar_test_setting" title="Test">
                        <a href="#" id="tiktok1">
                            <span class="menu_icon">
                                <i class="material-icons">X</i>
                            </span>
                            <span class="menu_title">Test</span>
                        </a>
                        <ul>
                            <li id="sidebar_test_category">
                                <a href="{{ route('test_category_index') }}">Test Category</a>
                            </li>
                            {{--<li id="sidebar_test">
                                <a href="{{ route('test_index') }}">Test</a>
                            </li>--}}
                            <li id="sidebar_test_report">
                                <a href="{{ route('lab_test_report') }}">Test Report</a>
                            </li>
                        </ul>
                    </li>


                    <li id="sidebar_lab_setting" title="Test">
                        <a href="#" id="tiktok1">
                            <span class="menu_icon">
                                <i class="material-icons">L</i>
                            </span>
                            <span class="menu_title">Lab</span>
                        </a>
                        <ul>
                            <li id="sidebar_lab_take_test">
                                <a href="{{ route('lab_index') }}">Take Test</a>
                            </li>
                            <li id="sidebar_lab_complete_test">
                                <a href="{{ route('lab_complete_test') }}">Complete Test</a>
                            </li>
                            <li id="sidebar_lab_test_report">
                                <a href="{{ route('lab_test_report') }}">Lab Report</a>
                            </li>
                        </ul>
                    </li>

                    <li id="sidebar_bill" title="Bill">
                        <a href="{{ route("bil_index") }}">
                            <span class="menu_icon"><i class="material-icons">list</i></span>
                            <span class="menu_title">Bills</span>
                        </a>
                    </li>

                    <li id="sidebar_doctor" title="Doctor">
                        <a href="{{ route("doctor_index") }}">
                            <span class="menu_icon"><i class="material-icons">add_circle_outline</i></span>
                            <span class="menu_title">Doctor</span>
                        </a>
                    </li>

                    <li id="sidebar_stuff" title="Stuff">
                        <a href="{{ route("stuff_index") }}">
                            <span class="menu_icon"><i class="material-icons">person</i></span>
                            <span class="menu_title">Staff</span>
                        </a>
                    </li>

                </ul>
            </li>

        </ul>
    </div>
</aside>
<!-- main sidebar end -->