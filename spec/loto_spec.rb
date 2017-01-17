require './lib/Loto.rb'

RSpec.describe Loto do
  xit 'gets grids' do
    expect(Loto.create_a_grid).not_to be_nil
    expect(Loto.create_a_grid).to be_an Array
    expect(Loto.create_a_grid.size).to equal 5
  end

  it 'grids flash' do
    expect(Loto.flash_grid).not_to be_nil
    expect(Loto.flash_grid).to be_an Array
    expect(Loto.flash_grid.size).to equal 5
    expect(Loto.flash_grid).not_to eql (Loto.flash_grid)
  end

  it 'grids validation' do
    loto = Loto.new
    expect(loto).to respond_to :grid_validation
    grid = [42,42,42,42,42]
    expect(loto.grid_validation grid).to include grid
    check_draw = false
    expect(loto.grid_validation grid).to include grid
  end

  it 'draw' do
    loto = Loto.new
    expect(loto).to respond_to :check_result
    #expect{loto.check_result}.not_to raise_error
    expect(loto.check_result).to be_an Array
    # expect(loto.check_result.size).to equal 5
    # expect(loto.check_result).not_to eql (loto.check_result)
  end

end