
    <div class="content ">
	    <md-whiteframe class="location-container md-whiteframe-1dp" layout="row" layout-align="space-around center" layout-align-xs="none none" layout-xs="column">

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

	    <div layout="row" layout-align="center center"> 
	       <md-button class="md-raised md-primary" ng-click="showWeather()">Weather</md-button>	
	    </div>
    </md-whiteframe>

</section>

