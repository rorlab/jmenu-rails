# Jmenu::Rails

Gemified the jMenu jquery plugin to use with assets pipeline in Rails(~>4.0.0.beta1) projects.

Original source : https://github.com/alpixel/jMenu

## Installation

Add this line to your application's Gemfile:

    gem 'jmenu-rails', github: 'rorlab/jmenu-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jmenu-rails

## Usage

To require jMenu UI modules, add the following to your application.js:

```
//= require jMenu.jquery
```

Also add the jMenu UI CSS to your application.css:

```
/*
 *= require jMenu.jquery
 */
 ```
 
Finally, you can make coffeescript as like:

```
jQuery ->
  $("#jMenu").jMenu
    openClick: false
    ulWidth: "auto"
    effects:
      effectSpeedOpen: 150
      effectSpeedClose: 150
      effectTypeOpen: "slide"
      effectTypeClose: "hide"
      effectOpen: "linear"
      effectClose: "linear"

    TimeBeforeOpening: 100
    TimeBeforeClosing: 11
    animatedText: false
    paddingLeft: 1 
```
 
## Notes

Renamed jMenu.jquery.css to jMenu.jquery.css.erb and inserted ERB code to the url source of background-image tags. 

```
.jMenu li ul li.arrow {
    background-color: #322f32;
    background-image: url(<%= image_path('arrow_down.png') %>);
    background-repeat: no-repeat;
    background-position: center center;
    height: 6px;
    padding: 0;
    border-bottom: none;
    padding-bottom: 10px
}

.jMenu li ul li a.isParent {
    background-color: #3a3a3a;
    background-image: url(<%= image_path('arrow_right.png') %>);
    background-repeat: no-repeat;
    background-position: right center;
}
```

Default theme color is darkgray and so, if you want the light theme color, added the followings to your custom stylesheet:

```
.jMenu li {
  background-color: #eaeaea !important;
}
.jMenu li a {
  color:gray !important;
}
.jMenu li ul li {
    background-color: #eaeaea !important;
    border-bottom: 1px solid #eaeaea !important;
}
.jMenu li ul li.arrow {
    background-color: #eaeaea !important;
}
.jMenu li ul li a.isParent {
    background-color: #eaeaea !important;
}
.jMenu li ul li a:hover {
    background-color: #c4c4c4 !important;
    border-top: 1px solid #eaeaea !important;
    border-bottom: 1px solid #eaeaea !important;
}
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
