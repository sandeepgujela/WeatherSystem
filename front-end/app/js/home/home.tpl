<section class="home-section" layout="column" class="border">
    <div class="header border" layout="row" layout-align="space-between center" layout-align-xs="none none" layout-xs="column">
        <div class="title">Weather Forcast App</div>
        <div class="logo-container">
            <div class="logo"></div>
        </div>
    </div>
    <div class="content border">
	    <article class="location-container" layout="row" layout-align="space-around center" layout-align-xs="none none" layout-xs="column">

	        <md-input-container>
	            <label>Country</label>
	            <md-select ng-model="homeCtrl.selectedCountry">
	                <md-option ng-repeat="country in homeCtrl.countries" ng-click="changeCountry($index)">
	                    {{country}}
	                </md-option>
	            </md-select>
	        </md-input-container>

	        <md-input-container>
	            <label>State</label>
	            <md-select ng-model="homeCtrl.selectedState">
	                <md-option ng-repeat="(key, value) in homeCtrl.states" ng-click="changeState(key)">
	                    {{value}} 
	                </md-option>
	            </md-select>
	        </md-input-container>

	        <md-input-container>
	            <label>City</label>
	            <md-select ng-model="homeCtrl.selectedCity">
	                <md-option ng-repeat="city in homeCtrl.cities">
	                    {{city}}
	                </md-option>
	            </md-select>
	        </md-input-container>

	    </article>

	    <div>
	       <md-button class="md-raised md-primary" ng-click="showWeather()">Weather</md-button>	
	    </div>
    </div>

    <div class="footer border">
    </div>
</section>

<!-- 
http://iamrohit.in/lab/php_ajax_country_state_city_dropdown/api.php?type=getCountries
http://iamrohit.in/lab/php_ajax_country_state_city_dropdown/api.php?type=getStates&countryId=101
http://iamrohit.in/lab/php_ajax_country_state_city_dropdown/api.php?type=getCities&stateId=172

http://api.openweathermap.org/data/2.5/weather?q=Delhi&APPID=2c5c539103edb7012dd64189c6a2322a

 -->

