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
	            <md-select ng-model="homeCtrl.selectedCountry" md-on-close="changeCountry()">
	                <md-option ng-repeat="country in homeCtrl.countries">
	                    {{country}}
	                </md-option>
	            </md-select>
	        </md-input-container>

	        <md-input-container>
	            <label>State</label>
	            <md-select ng-model="ctrl.userState">
	                <md-option ng-repeat="country in homeCtrl.countries">
	                    {{country}}
	                </md-option>
	            </md-select>
	        </md-input-container>

	        <md-input-container>
	            <label>City</label>
	            <md-select ng-model="ctrl.userState">
	                <md-option ng-repeat="country in homeCtrl.countries">
	                    {{country}}
	                </md-option>
	            </md-select>
	        </md-input-container>

	    </article>
    </div>

    <div class="footer border">
    </div>
</section>
<!-- 
http://iamrohit.in/lab/php_ajax_country_state_city_dropdown/api.php?type=getCountries
http://iamrohit.in/lab/php_ajax_country_state_city_dropdown/api.php?type=getStates&countryId=101
http://iamrohit.in/lab/php_ajax_country_state_city_dropdown/api.php?type=getCities&stateId=172
 -->
