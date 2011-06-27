# -*- encoding : utf-8 -*-
class FvcalcController < ApplicationController
  def fvcalc
  end
  def fvcalcres
    @result = (params[:pv].to_f * ((1 + ((params[:per].to_f / params[:m].to_f) / 100))**(params[:m].to_f * params[:n].to_f))).to_f.round(2)
    @pv = params[:pv]
    @per = params[:per]
    @m = params[:m]
    @n = params[:n]
    render :action => :fvcalcres
  
  end

end
