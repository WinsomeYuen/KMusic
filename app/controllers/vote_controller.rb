class VoteController < ApplicationController
layout 'votestandard'
protect_from_forgery prepend: true
require 'yaml/store'

$Choices ={
		'BTS' => 'Bts',
		'EXID' => 'Exid',
		'STEEN' => 'Seventeen',
		'OMG' => 'Oh My Girl',
}
  def votes
    @title = 'Monthly Vote'
	$Choices
  end
  
  def cast
	@title = 'Thanks for casting your vote!'
	@vote  = params['vote']
	@store = YAML::Store.new 'votes.yml'
	@store.transaction do
		@store['votes'] ||= {}
		@store['votes'][@vote] ||= 0
		@store['votes'][@vote] += 1
	end
  end
  
  def results
	@title = 'Results so far:'
	@store = YAML::Store.new 'votes.yml'
	@votes = @store.transaction { @store['votes'] }
  end
  
end
