({
    
    doInit : function(component, event, helper) {
        var url = $A.get('$Resource.bg2');
        component.set('v.backgroundImageURL', url);
    },
    
    
    
	signIn : function(c, e, h) {
        try{
            var un   = c.get('v.usernameLabel');
            var pswd = c.find("password").get("v.value");
             var action = c.get("c.validateUser");
       
        action.setParams({
            un : un,
            pswd : pswd
        }); 
        action.setCallback(this, function(response) {
            console.log('Response-> '+JSON.stringify(response.getReturnValue()));
             var state = response.getState();
            if (state === "SUCCESS" && response.getReturnValue() === true) {
                var storeResponse = response.getReturnValue();
                 c.set('v.successMsg', 'Welcome to the world');
                 c.set('v.loginSuccess', true);
                 c.set('v.isSignUp', false);
                 c.set('v.isSignIn', false);
                c.set('v.isError', false);
                 c.set('v.userCreatedSuccess', false);
            }
            else{
                 c.set('v.isError', true);
                c.set('v.loginSuccess', false);
                c.set('v.errorMsg', 'Invalid UserName or Password');
            }
            
        });
        $A.enqueueAction(action);
            
        }
        catch(err){
            console.log('Error in JS: ');
        }
		
	},
    
    signUp: function(c,e,h){
        try{
            var un   = c.get('v.usernameLabel');
            var pswd = c.find("passwordInput").get("v.value");
            if(pswd===undefined ||pswd===null || pswd===''){
                console.log('----> inside pswd');
                document.getElementById("abc").innerHTML = "fill the password";
            }
            else document.getElementById("abc").innerHTML = "";
            var name = c.get("v.name");
            var email = c.get("v.usersEmail");
            var pwsd1 = c.get("v.passwordLabel");
            console.log('un-> '+un);
            console.log('pswd-> '+pswd);
            console.log('name-> '+name);
            console.log('email-> '+email);
            console.log('pwsd1-> '+pwsd1);
             var action = c.get("c.createUser");
       
        action.setParams({
            un : un,
            pswd : pswd,
            name : name,
            email : email
        }); 
        action.setCallback(this, function(response) {
            console.log('Response-> '+JSON.stringify(response.getReturnValue()));
             var state = response.getState();
            if (state === "SUCCESS" && response.getReturnValue() === true) {
                var storeResponse = response.getReturnValue();
                 c.set('v.successMsg', 'User created successfully');
                // c.set('v.loginSuccess', true);
                 c.set('v.userCreatedSuccess', true);
                 c.set('v.isSignUp', false);
                 c.set('v.isSignIn', false);
                c.set('v.isError', false);
            }
            else if (response.getReturnValue() === false){
                console.log('inside else sign up');
                c.set('v.isError', true);
                c.set('v.errorMsg', 'Error occured : Please Input all of the below fields');
            }
                else{
                    c.set('v.isError', true);
                c.set('v.errorMsg', 'Error occured : Invalid credentials');
                }
            
        });
        $A.enqueueAction(action);
            
        }
        catch(err){
            console.log('Error in JS: ');
        }
        
    },
    
    
    signUpButtonClicked: function(c,e,h){
        try{
            c.set('v.isSignUp', true);
             c.set('v.isSignIn', false);
        }
        
        catch(err){
            
        }
    },
    
    signInTextClicked : function(c,e,h){
        try{
             c.set('v.isSignUp', false);
             c.set('v.isSignIn', true);
            
        }
        catch(err){
            
        }
        
    }
})