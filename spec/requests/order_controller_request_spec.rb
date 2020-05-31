require 'rails_helper'

RSpec.describe "OrderControllers", type: :request do
    describe "get orders_path" do
        it "renders the index view" do
          FactoryBot.create_list(:order, 10)
          get orders_path
          expect(response.status).to eq(200)
        end
    end
    describe "get order_path" do
          it "renders the :show template" do
            order = FactoryBot.create(:order)
            get order_path(id: order.id)
            expect(response.status).to eq(200)
          end
    end
    describe "get new_order_path" do
       it "renders the :new template" do
       get new_order_path
       expect(response.status).to eq(200)
      end
   end
   describe "get edit_order_path" do
    it "renders the :edit template" do
      order = FactoryBot.create(:order)
      get edit_order_path(:order)
      expect(response.status).to eq(302)
    end
  end
  describe "post order_path with valid data" do
    it "saves a new entry and redirects to the show path for the entry" do
      order_attributes = FactoryBot.attributes_for(:order)
      expect { post orders_path, params: {order: order_attributes}}.to change(Order, :count)
      expect(response).to redirect_to order_path(id: Order.last.id)
    end
  end
  describe "post orders_path with invalid data" do
    it "does not save a new entry or redirect" do
      order_attributes = FactoryBot.attributes_for(:order)
      order_attributes.delete(:doc_name)
      expect { post orders_path, params: {order: order_attributes}
    }.to_not change(Order, :count)
      expect(response.status).to eq(200)
    end
  end
  describe "put order_path with valid data" do
    it "updates an entry and redirects to the show path for the order" do
      order = FactoryBot.create(:order, doc_name: "Parking Permit")
      expect(order.doc_name).to eq("Parking Permit")
      put order_path(order), params:{order: {doc_name: "Construction Permit"}}
      order.reload
      expect(order.doc_name).to eq("Construction Permit")
    end
  end
  describe "put order_path with invalid data" do
    it "does not update the order record or redirect" do
      order = FactoryBot.create(:order)
      put order_path(id: order.id),params:{order:{doc_name: "nil"}}
      order.reload
      expect(order.doc_name).to_not eq(nil)
      expect(response.status).to eq(302)
    end
  end
  describe "delete an order record" do
    it "deletes an order record" do
      order = FactoryBot.create(:order)
      delete order_path(order.id)
    end
  end
end
