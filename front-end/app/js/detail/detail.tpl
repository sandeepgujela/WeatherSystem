
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
            </md-card-title>
        </md-card>
        </article>


    </div>

