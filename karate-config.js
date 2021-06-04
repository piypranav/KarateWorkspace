function fn(){
    var config=
        {
            baseUrl: "https://reqres.in",
            listUsers: "/api/users?page=2"
        }
    karate.log("From karate-config file");
    karate.configure("ssl",false);
    karate.configure("afterScenario",function(){karate.log('after scenario inside config');});
    karate.configure('connectTimeout', 5000);
    karate.configure('readTimeout', 5000);
    // to call karate-config only one time to run multiple scenario/featurefiles
    // karate.callSingle("karate-config.js");
    return config;
}