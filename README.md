# housewhere
Stuff organizer

# Feature Ideas

- [ ] Keep track of the things in your home
- [ ] CRUD homes, floors, rooms, containers, things
- [ ] User creation and sign in, homes can be shared
- [ ] See a sortable list of things in a home or room or container
- [ ] Search for a thing
- [ ] Add visual elements: 
  - [ ] Pictures of items
  - [ ] Floor plans
  - [ ] Container images

# Database

### User
- id
- email
- password_digest
- first_name
- last_name

### Home
- street_address
- unit_number
- city
- state
- country

### Floor
- number
- home_id

### Room
- name
- floor_id
- room_type

### Container
- container_type
- location
- description
- room_id

### Thing
- name
- description
- quantity
- category
- container_id
- location
