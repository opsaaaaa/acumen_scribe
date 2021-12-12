def factory_can_create(tag, phrase = "factory can create a")
  it "#{phrase} :#{tag}" do
    object = create(tag)
    expect(object.class.find(object.id)).to eq(object)
  end
end
