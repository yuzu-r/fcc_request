class Api::V1::RequestsController < ApplicationController
  def saywho
    @ip = request.remote_ip
    language = request.env["HTTP_ACCEPT_LANGUAGE"]
    @language = language.split(';')[0] # parse if there is a q score
    raw_os = request.env["HTTP_USER_AGENT"]
    l = raw_os.index('(')
    r = l ? raw_os.index(')') : nil
    @os = r ? raw_os[l+1..r-1] : 'unknown' # return unknown if can't find () in header
  end
end