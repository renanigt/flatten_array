class FlattenArray
  def initialize(array)
    @old_array = array
    @flatten_array = []
  end

  def call
    iterate(old_array)
    flatten_array
  end

  private

    attr_reader :old_array, :flatten_array

    def iterate(array)
      array.each do |element|
        if element.kind_of?(Array)
          iterate(element)
        else
          @flatten_array << element
        end
      end
    end
end
