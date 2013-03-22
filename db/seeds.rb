Flight.delete_all
Plane.delete_all
Seat.delete_all
Seatbooking.delete_all
User.delete_all

u1 = User.create(email: 'n@gmail.com', password: 'a', password_confirmation: 'a')
u2 = User.create(email: 's@gmail.com', password: 'a', password_confirmation: 'a')
u3 = User.create(email: 'j@gmail.com', password: 'a', password_confirmation: 'a')
u4 = User.create(email: 'a@gmail.com', password: 'a', password_confirmation: 'a')
u5 = User.create(email: 'c@gmail.com', password: 'a', password_confirmation: 'a')
u1.is_admin = true
u1.save

p1 = Plane.create(name: 'Branson 1000', num_rows: 2, num_columns: 4)


f1 = Flight.create(origin: 'earth', destination: 'mars', number: '000001', date: '03/09/2013')
f2 = Flight.create(origin: 'mars', destination: 'jupiter', number: '000002', date: '03/11/2013')
f3 = Flight.create(origin: 'jupiter', destination: 'pluto', number: '000003', date: '03/13/2013')

f1.plane = p1
f2.plane = p1
f3.plane = p1
f1.save
f2.save
f3.save


s1 = Seat.create(row: 1, column: 1)
s2 = Seat.create(row: 1, column: 2)
s3 = Seat.create(row: 2, column: 3)

p1.seats << s1
p1.seats << s2
p1.seats << s3



sb1 = Seatbooking.create
sb2 = Seatbooking.create
sb3 = Seatbooking.create

sb1.user = u1
sb2.user = u2
sb3.user = u3

sb1.flight = f1
sb2.flight = f1
sb3.flight = f1

sb1.seat = s1
sb2.seat = s2
sb3.seat = s3
sb1.save
sb2.save
sb3.save








