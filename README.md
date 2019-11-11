# ![alt text](app/assets/images/himama_logo.png)
Create a test app which can be used by Teachers on HiMama's Platform to Clock-in or Clock-out.
# 
### Run it locally
1. First clone the respository: `git clone https://github.com/gauravmali/HiMama.git`
2. Run, `cd HiMama`
3. Run, `bundle install`
4. Run, `rails server`
3. Go to, `http://localhost:3000/clocks`

### Demo
https://himama-test-app-gaurav.herokuapp.com/clocks

### Approach

I used Ruby on Rails for the backend and Bootstrap for Frontend. For development database I used SQLite3 and Postgresql 
for the production. `Clock` is one single collection that we need to perform all the actions required and data storage 
with in the scope of the task. User can go to `/clocks` and use `Clock in or Out` button to launch a modal that can be
used to create a `Clock` record. This application is hosted on Heroku and can be reached via above mentioned URL.

### Future Plans
1. Improve UI
2. Add Unit tests
3. Add Integration Tests
4. Improve backend code by using services classes and helper classes.

### Issues
1. Bug: Error messages are not displayed in case user is trying to save a clock event without mendatory fields such as
 `action`, `First Name' and `Last Name`
2. Bug: Edit action works only on the first record of the table.
 

