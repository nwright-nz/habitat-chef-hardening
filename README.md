## Habitat + Chef example


This is an example of using habitat to package, deploy and update chef cookbooks using Policyfiles. Standard 'built on the shoulders of giants' disclaimer: I have used this blog post to understand how this works : <https://blog.chef.io/2018/06/21/running-chef-and-inspec-with-habitat-how-we-made-that-demo/>   
    
To build the packge, we need to supply the policyfile name we wish to use. In this example we are using the DevSec Linux OS Hardening cookbook, the details of this are in `policyfiles/os-hardening.rb`. Because we need to get this environment variable into studio in order for this to build correctly, the following command can be run :   
``` code
HAB_STUDIO_SECRET_CHEF_POLICYFILE=os-hardening hab pkg build ./habitat
```

Any environment variables prefixed with HAB_STUDIO_SECRET_ will be passed into studio and redacted. Of course this is overkill for a humble policyfile name, but it works quite nicely.

