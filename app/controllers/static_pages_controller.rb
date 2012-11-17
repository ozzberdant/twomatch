class StaticPagesController < ApplicationController
  caches_page :home, :help, :about, :contact
  def home
    @canchas = Rubro.find(1)
    @salasDeEnsayo = Rubro.find(2)
    @hostales = Rubro.find(3)
  end

  def help
  end

def about
end

def contact
end

end
