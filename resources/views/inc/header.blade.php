<!-- main header -->
<header id="header_main">
    <div class="header_main_content">
        <nav class="uk-navbar">
            <!-- main sidebar switch -->
            <a href="#" id="sidebar_main_toggle" class="sSwitch sSwitch_left">
                <span class="sSwitchIcon"></span>
            </a>
            <!-- secondary sidebar switch -->
            <a href="#" id="sidebar_secondary_toggle" class="sSwitch sSwitch_right sidebar_secondary_check">
                <span class="sSwitchIcon"></span>
            </a>

            <div class="uk-navbar-flip">
                <ul class="uk-navbar-nav user_actions">
                    <li data-uk-dropdown="{mode:'click',pos:'bottom-right'}">

                        <a href="#" class="user_action_image">

                            {{--@if(Auth::user()->image == 'user.jpg')
                                <img class="md-user-image" src="{{ url('admin/assets/img/avatars/user-2.png') }}">
                            @else
                                <img class="md-user-image" src="{{ url('uploads/users/'.Auth::user()->image) }}" alt="">
                            @endif--}}

                            <img class="md-user-image" src="{{ url('img/user.png') }}" alt="not">
                        </a>

                        <div class="uk-dropdown uk-dropdown-small">
                            <ul class="uk-nav js-uk-prevent">
                                <ul class="uk-nav js-uk-prevent">
                                    <li><a href="{{url('settings/my-profile')}}">My profile</a></li>
                                    <li><a href="{{route('organization_profile')}}">Settings</a></li>
                                    <li><a href="{{ route('logout') }}">Logout</a></li>
                                </ul>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</header>
<!-- main header end -->

<script src="{{ asset('js/axios.min.js') }}"></script>
<script src="{{ asset('js/vue.min.js') }}"></script>
<script>


    function removereminder(id) {

        var url = id;


        swal({
            title: 'Are you sure?',
            text: "You won't be able to revert this! If you delete this invoice all record will be deleted related to this invoice",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
        }).then(function () {
             window.location.href = url;
        })
    }
    updatetodaynote();
    function updatetodaynote()
    {

    }

    function AddReminder()
    {

       var msg = document.getElementById('reminderadd');
       var reminderaddfail = document.getElementById('reminderaddfail');


        var note = document.getElementById('note').value;
        var time = document.getElementById('time').value;
        var date = document.getElementById('date').value;

         if(note.length==0){
          return false;
         }

        axios.post('{{ route('dashboard_reminder') }}', {
            note: note,
            time: time,
            date: date,
               })
                .then(function (response) {

                    if(response.data=="200"){

                        msg.innerText = "Successfully Added";
                        msg.style.display = "block";
                        msg.style.opacity = "1";
                        setTimeout(function()
                        {
                            msg.innerText = "";
                            msg.style.display = "none";
                            msg.style.opacity = "0";
                        },5000);
                    }else{

                        reminderaddfail.innerText = "Not Added";
                        reminderaddfail.style.display = "block";
                        reminderaddfail.style.opacity = "1";

                        setTimeout(function(){
                            reminderaddfail.innerText = "";
                            reminderaddfail.style.display = "none";
                            reminderaddfail.style.opacity = "0";}, 5000);
                    }


                })
                .catch(function (error) {

                    reminderaddfail.innerText = "Not Added";
                    reminderaddfail.style.display = "block";
                    reminderaddfail.style.opacity = "1";

                    setTimeout(function(){
                        reminderaddfail.innerText = "";
                        reminderaddfail.style.display = "none";
                        reminderaddfail.style.opacity = "0";
                    }, 5000);
                });

    }





</script>
<!-- secondary sidebar end -->

<!-- google web fonts -->