ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: "Dashboard"

  content title: "Customer Relation Manager" do
    panel "Customer Statistics" do
      para "Total Customers: #{Customer.count}"
    end

    panel "Customer Management" do
      para "Use the Customers menu to manage your customers."
    end
  end
end