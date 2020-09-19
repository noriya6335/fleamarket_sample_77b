require 'rails_helper'
describe Item do

  before do
    @item = FactoryBot.create(:item)
    @item_image = FactoryBot.create(:item_image)
  end

  describe '商品出品機能' do

    it "全ての情報が記載されていれば出品できること" do
      expect(@item).to be_valid
    end

    it "商品名がないと出品できないこと" do
      @item.name = ""
      @item.valid?
      expect(@item.errors[:name]).to include("can't be blank")
    end

    it "商品の説明がないと出品できないこと" do
      @item.description = ""
      @item.valid?
      expect(@item.errors[:description]).to include("can't be blank")
    end

    it "カテゴリー情報がないと出品できないこと" do
      @item.category_id = ""
      @item.valid?
      expect(@item.errors[:category_id]).to include("can't be blank")
    end

    it "ブランド名がなくても出品できること" do
      @item.brand = ""
      expect(@item).to be_valid
    end

    it "商品の状態についての情報がないと出品できないこと" do
      @item.condition_id = ""
      @item.valid?
      expect(@item.errors[:condition_id]).to include("can't be blank")
    end

    it "配送料の負担についての情報がないと出品できないこと" do
      @item.delivery_fee_id = ""
      @item.valid?
      expect(@item.errors[:delivery_fee_id]).to include("can't be blank")
    end

    it "発送元の地域についての情報がないと出品できないこと" do
      @item.sending_area_id = ""
      @item.valid?
      expect(@item.errors[:sending_area_id]).to include("can't be blank")
    end

    it "発送までの日数についての情報がないと出品できないこと" do
      @item.sending_days_id = ""
      @item.valid?
      expect(@item.errors[:sending_days_id]).to include("can't be blank")
    end

    it "価格がないと出品できないこと" do
      @item.price = ""
      @item.valid?
      expect(@item.errors[:price]).to include("can't be blank")
    end

  end
end