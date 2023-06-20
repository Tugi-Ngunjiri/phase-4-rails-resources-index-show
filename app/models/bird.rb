class Bird < ApplicationRecord
# GET/birds
def index
    birds = Bird.all 
    render json: birds

end

# GET /birds/:id
   


def show

    bird = bird.find_by(id: params[:id])

    if bird
       render json: bird
    else
        render json:  {error: "bird not found"}, status: : not_found
       end
   end

end