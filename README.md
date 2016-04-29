# housewhere
Stuff organizer


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
