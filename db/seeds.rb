UpdateCollection.destroy_all
Wine.destroy_all
User.destroy_all

jpv08insig = Wine.create({ variety: "Blend", producer: "Joseph Phelps Vineyards", region: "Napa Valley", vintage: 2008, notes: "Insignia" })
jpv08backus = Wine.create({ variety: "Cabernet Sauvignon", producer: "Joseph Phelps Vineyards", region: "Napa Valley", vintage: 2008, notes: "Backus Vineyard" })
dv03merlot = Wine.create({ variety: "Merlot", producer: "Duckhorn Vineyards", region: "Napa Valley", vintage: 2003, notes: ""})

lynn = User.create(name: "Lynn", username: "lynn123", password: "LynnsPassword", email: "Lynn@mail.com")
matt = User.create(name: "Matt", username: "matt456", password: "MattsPassword", email: "Matt@mail.com")
jon = User.create(name: "Jon", username: "jon789", password: "JonsPassword", email: "Jon@mail.com")

UpdateCollection.create(wine: jpv08insig, user: lynn)
UpdateCollection.create(wine: jpv08backus, user: lynn)
UpdateCollection.create(wine: dv03merlot, user: lynn)
UpdateCollection.create(wine: jpv08insig, user: matt)
UpdateCollection.create(wine: jpv08backus, user: matt)
UpdateCollection.create(wine: jpv08backus, user: jon)
UpdateCollection.create(wine: dv03merlot, user: jon)