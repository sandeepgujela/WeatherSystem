
    <div class="content padding20">
    <div  layout="row" layout-align="left center" layout-align-xs="cetner center" layout-xs="column">
        <md-input-container>
            <label>Days</label>
            <md-select ng-model="detailCtrl.selectedDays" md-on-close="getWeatherForecast()">
                <md-option ng-repeat="num in detailCtrl.days" >
                    {{num}}
                </md-option>
            </md-select>
        </md-input-container>   
    </div>

        <article ng-if="detailCtrl.weatherForecast">

            <md-card ng-repeat="weatherForecast in detailCtrl.weatherForecast"  md-theme="{{ showDarkTheme ? 'dark-grey' : 'default' }}" md-theme-watch>
            <md-card-title>
                <md-card-title-text>
                    <span class="md-headline">{{detailCtrl.location.name}},{{detailCtrl.location.country}}</span>
                    <span class="md-subhead">
                        {{weatherForecast.dt_txt }}
                    </span>
                </md-card-title-text>

                <md-card-title-text>
                    <span class="md-headline">{{weatherForecast.main.temp}} K</span>
                    <span class="md-subhead">
                    Min :{{weatherForecast.main.temp_min}} , Max :{{weatherForecast.main.temp_max}} 
                    </span>
                </md-card-title-text>
                <md-card-title-text>
                    <span class="md-headline capitalize">{{weatherForecast.weather[0].description}}</span>
                    <span class="md-subhead">
                          Humidity :  {{weatherForecast.main.humidity}}                 
                    </span>
                    <span class="md-subhead">
                          Pressure:
                            {{weatherForecast.main.pressure}}                 
                    </span>
                    <span class="md-subhead">
                          Wind :  {{weatherForecast.wind.speed}}                 
                                            
                    </span>
                </md-card-title-text>
            </md-card-title>
        </md-card>
        </article>


    </div>

