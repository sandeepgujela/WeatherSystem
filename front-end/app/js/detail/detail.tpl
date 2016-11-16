<section class="home-section" layout="column" class="border">
    <div class="header " layout="row" layout-align="space-between center" layout-align-xs="none none" layout-xs="column">
        <div class="title">Weather Forcast App</div>
        <div class="logo-container">
            <div class="logo"></div>
        </div>
    </div>
    <div class="content padding20">
    <div  layout="row" layout-align="left center" layout-align-xs="cetner center" layout-xs="column">
        <md-input-container>
            <label>Days</label>
            <md-select ng-model="detailCtrl.selectedDays" md-on-close="getWeatherForcaste()">
                <md-option ng-repeat="num in detailCtrl.days" >
                    {{num}}
                </md-option>
            </md-select>
        </md-input-container>   
    </div>

        <md-card ng-if="detailCtrl.weatherData" md-theme="{{ showDarkTheme ? 'dark-grey' : 'default' }}" md-theme-watch>
            <md-card-title>
                <md-card-title-text>
                    <span class="md-headline">{{detailCtrl.weatherData.name}}</span>
                    <span class="md-subhead">
                    {{detailCtrl.weatherData.dt | date}}
                    </span>
                </md-card-title-text>
                <md-card-title-text>
                    <span class="md-headline">{{detailCtrl.weatherData.main.temp}} K</span>
                    <span class="md-subhead">
                    Min :{{detailCtrl.weatherData.main.temp_min}} , Max :{{detailCtrl.weatherData.main.temp_max}} 
                    </span>
                </md-card-title-text>
                <md-card-title-text>
                    <span class="md-headline capitalize">{{detailCtrl.weatherData.weather[0].description}}</span>
                    <span class="md-subhead">
                          Humidity :  {{detailCtrl.weatherData.main.humidity}}                 
                    </span>
                    <span class="md-subhead">
                          Pressure:
                            {{detailCtrl.weatherData.main.pressure}}                 
                    </span>
                    <span class="md-subhead">
                          Wind :  {{detailCtrl.weatherData.wind.speed}}                 
                                            
                    </span>
                </md-card-title-text>
                <md-card-title-media>
                    <div class="md-media-lg card-media"></div>
                </md-card-title-media>
            </md-card-title>
        </md-card>

        <article ng-if="detailCtrl.weatherForcaste">

            <md-card ng-repeat="weatherForcaste in detailCtrl.weatherForcaste"  md-theme="{{ showDarkTheme ? 'dark-grey' : 'default' }}" md-theme-watch>
            <md-card-title>
                <md-card-title-text>
                    <span class="md-headline">{{detailCtrl.weatherData.name}}</span>
                    <span class="md-subhead">
                        {{weatherForcaste.dt_txt }}
                    </span>
                </md-card-title-text>

                <md-card-title-text>
                    <span class="md-headline">{{weatherForcaste.main.temp}} K</span>
                    <span class="md-subhead">
                    Min :{{weatherForcaste.main.temp_min}} , Max :{{weatherForcaste.main.temp_max}} 
                    </span>
                </md-card-title-text>
                <md-card-title-text>
                    <span class="md-headline capitalize">{{weatherForcaste.weather[0].description}}</span>
                    <span class="md-subhead">
                          Humidity :  {{weatherForcaste.main.humidity}}                 
                    </span>
                    <span class="md-subhead">
                          Pressure:
                            {{weatherForcaste.main.pressure}}                 
                    </span>
                    <span class="md-subhead">
                          Wind :  {{weatherForcaste.wind.speed}}                 
                                            
                    </span>
                </md-card-title-text>
                <md-card-title-media>
                    <div class="md-media-lg card-media"></div>
                </md-card-title-media>
            </md-card-title>
        </md-card>
        </article>


    </div>
    <div class="footer ">
    </div>
</section>
<!-- 
http://iamrohit.in/lab/php_ajax_country_state_city_dropdown/api.php?type=getCountries
http://iamrohit.in/lab/php_ajax_country_state_city_dropdown/api.php?type=getStates&countryId=101
http://iamrohit.in/lab/php_ajax_country_state_city_dropdown/api.php?type=getCities&stateId=172

http://api.openweathermap.org/data/2.5/weather?q=Delhi&APPID=2c5c539103edb7012dd64189c6a2322a

 -->
