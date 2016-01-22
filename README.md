# jirapicker

A small utility for listing and searching JIRA issues in a dmenu window.

# installing

you will first need dmenu (http://tools.suckless.org/dmenu/) -- after installing
that you can install the gem using your systems gem executable.

```
gem install jira-picker
```

# running

create a rc file in your home directory named .jirapickerrc, and
put the following contents in it:

```json
{
    "username": "uname", 
    "password": "pword",
    "url": "http(s)://my-jira-instance/",
    "my_issues": false, // optional - set to true to only list issues assigned to you
    "project": null // optional - set to the name of a project to get issues from there
}
```

now you can launch the jira_picker executable and it should be working out of the box

# notes:

* if using, please don't use it over an unencrypted connection. it uses http basic
  auth for now.

# todo:

* customizations for dmenu params
* more options for the JIRA client
* caching API return values
