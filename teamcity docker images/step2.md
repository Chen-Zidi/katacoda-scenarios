
After initialization, we just proceed to create administrator account. For this toturial, we enter name `admin` and password `admin`. 

Now, we can add a project and create build steps for it. 

To add a project, click on the `Administration` mark on the upper right corner, and click on create project.

For this toturial, we create the project from a repository URL. I use a java simple hello world program from my github repository: https://github.com/Chen-Zidi/HelloWorld.git. Since it is a public repository, the username and password can be left empty. We just proceed. In the next page, we keep everything as they like and proceed. 

We want TeamCity can automatically compile `HelloWorld.java` for us when building the project. So, in the next page for configureing build steps, we select `configure build steps manually`. We select runner type as `Command Line`. Step name could be `compile`. Custom script could be `javac HelloWorld.java`. Remember to set the artifact path as `./`. Let's save this step. 

