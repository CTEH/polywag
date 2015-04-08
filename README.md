Installation
============
Just add the following to your Gemfile:

```ruby
gem 'polywag', git: 'git@github.com:CTEH/polywag.git'
```

You can lock it to a specific release of polywag by using tags. Then, bundle install.

Polywag
=========

Polywag adds methods supporting the following style of controller code:


```
#!ruby
class LocationsController < ApplicationController
  def index
    @nester = find_and_authorize_nester(nesters)
    @locations = load_authorized_collection(@nester)
  end

  def show
    @nester = find_and_authorize_nester(nesters)
    @location = load_and_authorize_member(@nester)
  end

  def new
    @nester = find_and_authorize_nester(nesters)
    @location = build_and_authorize_member(@nester)
  end

  def edit
    @nester = find_and_authorize_nester(nesters)
    @location = load_and_authorize_member(@nester)
  end

  def create
    @nester = find_and_authorize_nester(nesters)
    @location = build_and_authorize_member(@nester, location_params)

    if @location.save
      redirect_to (@nester || @location), notice: 'Location was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    @nester = find_and_authorize_nester(nesters)
    @location = load_and_authorize_member(@nester, location_params)

    if @location.save
      redirect_to (@nester || @location), notice: 'Location was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @nester = find_and_authorize_nester(nesters)
    @location = load_and_authorize_member(@nester)

    @location.deleted = true
    if @location.save
      redirect_to (@nester || locations_path), notice: 'Deleted location'
    else
      render action: 'show', notice: 'Failed to delete'
    end
  end

  protected

  def nesters
    [:organization, :project]
  end

  def location_params
    params.require(:location).permit(:name, :lat, :lng)
  end
end
```
