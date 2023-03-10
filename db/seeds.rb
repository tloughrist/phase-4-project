users = User.create([
  { name: 'Albert Camus', dob: '1913-11-07', pronouns: 'he/him', blurb: 'Man\'s existence is absurd because his contingency finds no external justification.', username: 'acamus', password_digest: User.digest('proxy'), email: 'tim.loughrist@gmail.com' },
  { name: 'Jean-Paul Sartre', dob: '1905-06-21', pronouns: 'he/him', blurb: 'There is a contingency of human existence. It is a condemnation of their being. Their being is not determined, so it is up to everyone to create their own existence, for which they are then responsible. They cannot not be free, there is a form of necessity for freedom, which can never be given up.', username: 'jpsartre', password_digest: User.digest('proxy'), email: 'tim.loughrist@gmail.com' },
  { name: 'Simone de Beauvoir', dob: '1908-01-09', pronouns: 'she/her', blurb: 'On ne naît pas femme, on le devient.', username: 'sdebeauvoir', password_digest: User.digest('proxy'), email: 'tim.loughrist@gmail.com' },
  { name: 'Herbert Marcuse', dob: '1898-07-19', pronouns: 'he/him', blurb: 'The people recognize themselves in their commodities, they find their soul in their automobile, hi-fi set, split-level home, kitchen equipment.', username: 'hmarcuse', password_digest: User.digest('proxy'), email: 'tim.loughrist@gmail.com' },
  { name: 'Maurice Merleau-Ponty', dob: '1908-03-14', pronouns: 'he/him', blurb: 'Insofar as I have hands, feet, a body, I sustain around me intentions which are not dependent on my decisions and which affect my surroundings in a way that I do not choose.', username: 'mmerleauponty', password_digest: User.digest('proxy'), email: 'tim.loughrist@gmail.com' },
  { name: 'Franz Brentano', dob: '1838-01-16', pronouns: 'he/him', blurb: 'We could, therefore, define mental phenomena by saying that they are those phenomena which contain an object intentionally within themselves.', username: 'fbrentano', password_digest: User.digest('proxy'), email: 'tim.loughrist@gmail.com' },
  { name: 'Edmund Husserl', dob: '1859-04-08', pronouns: 'he/him', blurb: 'It is my conviction that intentional phenomenology has for the first time made spirit as spirit the field of systematic scientific experience, thus effecting a total transformation of the task of knowledge.', username: 'ehusserl', password_digest: User.digest('proxy'), email: 'tim.loughrist@gmail.com' },
  { name: 'Jacques Lacan', dob: '1901-04-13', pronouns: 'he/him', blurb: 'The Other must first of all be considered a locus in which speech is constituted.', username: 'jlacan', password_digest: User.digest('proxy'), email: 'tim.loughrist@gmail.com' },
  { name: 'Avital Ronell', dob: '1952-04-15', pronouns: 'she/her', blurb: 'Always incomplete, always unreachable, forever promising at once its essence and its existence, philosophy identifies itself finally with this promise, which is to say, with its own unreachability.', username: 'aronell', password_digest: User.digest('proxy'), email: 'tim.loughrist@gmail.com' },
  { name: 'Judith Butler', dob: '1956-02-24', pronouns: 'they/them', blurb: 'If speech depends upon censorship, then the principle that one might seek to oppose is at once the formative principle of oppositional speech.', username: 'jbutler', password_digest: User.digest('proxy'), email: 'tim.loughrist@gmail.com' },
  { name: 'Martha Nussbaum', dob: '1947-05-06', pronouns: 'she/her', blurb: 'Disgust and shame are inherently hierarchical, they set up ranks and orders of human beings.', username: 'mnussbaum', password_digest: User.digest('proxy'), email: 'tim.loughrist@gmail.com' },
  { name: 'Andrea Dworkin', dob: '1946-09-26', pronouns: 'she/her', blurb: 'Feminism is hated because women are hated. Anti-feminism is a direct expression of misogyny, it is the political defense of women hating.', username: 'adworkin', password_digest: User.digest('proxy'), email: 'tim.loughrist@gmail.com' },
  { name: 'Jacques Derrida', dob: '1930-07-15', pronouns: 'he/him', blurb: 'Any text contains implicit hierarchies, by which an order is imposed on reality and by which a subtle repression is exercised, as these hierarchies exclude, subordinate, and hide the various potential meanings.', username: 'jderrida', password_digest: User.digest('proxy'), email: 'tim.loughrist@gmail.com' }
  ])

friendships = Friendship.create([
  { friender_id: 1, friendee_id: 2 },
  { friender_id: 1, friendee_id: 3 },
  { friender_id: 2, friendee_id: 3 },
  { friender_id: 2, friendee_id: 4 },
  { friender_id: 3, friendee_id: 4 },
  { friender_id: 3, friendee_id: 5 },
  { friender_id: 4, friendee_id: 5 },
  { friender_id: 4, friendee_id: 6 },
  { friender_id: 5, friendee_id: 6 },
  { friender_id: 5, friendee_id: 7 },
  { friender_id: 6, friendee_id: 7 },
  { friender_id: 6, friendee_id: 8 },
  { friender_id: 7, friendee_id: 8 },
  { friender_id: 7, friendee_id: 9 },
  { friender_id: 8, friendee_id: 9 },
  { friender_id: 8, friendee_id: 10 },
  { friender_id: 9, friendee_id: 10 },
  { friender_id: 9, friendee_id: 11 },
  { friender_id: 10, friendee_id: 11 },
  { friender_id: 10, friendee_id: 12 },
  { friender_id: 11, friendee_id: 12 },
  { friender_id: 11, friendee_id: 13 },
  { friender_id: 12, friendee_id: 13 },
  { friender_id: 12, friendee_id: 1 },
  { friender_id: 13, friendee_id: 1 },
  { friender_id: 13, friendee_id: 2 },
  { friender_id: 1, friendee_id: 6 },
  { friender_id: 2, friendee_id: 7 },
  { friender_id: 3, friendee_id: 8 },
  { friender_id: 4, friendee_id: 9 },
  { friender_id: 5, friendee_id: 10 },
  { friender_id: 6, friendee_id: 11 },
  { friender_id: 7, friendee_id: 12 }
])

GameNight.create ([
  { title: 'Weekly Meetup' , date: 'Sat, 01 Jan 2000', time: '20:30', originator_id: 1, location: 'My house' },
  { title: 'Gamefest!', date: 'Sat, 01 Jan 2000', time: '20:30', originator_id: 2, location: 'Spielbound' },
  { title: 'Doug Con', date: 'Sat, 01 Jan 2000', time: '20:30', originator_id: 3, location: 'Mana Games' },
  { title: 'Wayne Con', date: 'Sat, 01 Jan 2000', time: '20:30', originator_id: 4, location: 'My house' },
  { title: 'Weekly Meetup' , date: 'Sat, 01 Jan 2000', time: '20:30', originator_id: 5, location: 'Spielbound' },
  { title: 'Catanfest', date: 'Sat, 01 Jan 2000', time: '20:30', originator_id: 6, location: 'Mana Games' },
  { title: 'Time for Games', date: 'Sat, 01 Jan 2000', time: '20:30', originator_id: 7, location: 'My house' },
  { title: 'Casual Night', date: 'Sat, 01 Jan 2000', time: '20:30', originator_id: 8, location: 'Spielbound' },
  { title: 'Weekly Meetup' , date: 'Sat, 01 Jan 2000', time: '20:30', originator_id: 9, location: 'Mana Games' },
  { title: 'Bring a Friend', date: 'Sat, 01 Jan 2000', time: '20:30', originator_id: 10, location: 'My house' },
  { title: 'Board Games & Brews', date: 'Sat, 01 Jan 2000', time: '20:30', originator_id: 1, location: 'Spielbound' }
])

attendances = Attendance.create([
  { game_night_id: 2, attendee_id: 1, certainty: "certain" },
  { game_night_id: 1, attendee_id: 2, certainty: "certain" },
  { game_night_id: 1, attendee_id: 3, certainty: "high" },
  { game_night_id: 2, attendee_id: 3, certainty: "50/50" },
  { game_night_id: 2, attendee_id: 4, certainty: "low" },
  { game_night_id: 3, attendee_id: 4, certainty: "certain" },
  { game_night_id: 3, attendee_id: 5, certainty: "high" },
  { game_night_id: 4, attendee_id: 5, certainty: "50/50" },
  { game_night_id: 4, attendee_id: 6, certainty: "low" },
  { game_night_id: 5, attendee_id: 6, certainty: "certain" },
  { game_night_id: 5, attendee_id: 7, certainty: "high" },
  { game_night_id: 6, attendee_id: 7, certainty: "50/50" },
  { game_night_id: 6, attendee_id: 8, certainty: "low" },
  { game_night_id: 7, attendee_id: 8, certainty: "certain" },
  { game_night_id: 7, attendee_id: 9, certainty: "high" },
  { game_night_id: 8, attendee_id: 9, certainty: "50/50" },
  { game_night_id: 8, attendee_id: 10, certainty: "low" },
  { game_night_id: 9, attendee_id: 10, certainty: "certain" },
  { game_night_id: 9, attendee_id: 11, certainty: "high" },
  { game_night_id: 10, attendee_id: 11, certainty: "50/50" },
  { game_night_id: 10, attendee_id: 12, certainty: "low" },
  { game_night_id: 11, attendee_id: 2, certainty: "certain" },
  { game_night_id: 11, attendee_id: 3, certainty: "high" },
  { game_night_id: 1, attendee_id: 6, certainty: "50/50" },
  { game_night_id: 2, attendee_id: 7, certainty: "low" },
  { game_night_id: 3, attendee_id: 8, certainty: "certain" },
  { game_night_id: 4, attendee_id: 9, certainty: "high" },
  { game_night_id: 5, attendee_id: 10, certainty: "50/50" },
  { game_night_id: 6, attendee_id: 11, certainty: "low" }
])

invitations = Invitation.create([
  { game_night_id: 11, receiver_id: 6, sender_id: 1 },
  { game_night_id: 7, receiver_id: 12, sender_id: 7 },
  { game_night_id: 7, receiver_id: 1, sender_id: 7 }
])

friend_requests = FriendRequest.create([
  { sender_id: 1, receiver_id: 3 },
  { sender_id: 2, receiver_id: 8 },
  { sender_id: 3, receiver_id: 9 },
  { sender_id: 4, receiver_id: 10 },
  { sender_id: 5, receiver_id: 9 },
  { sender_id: 6, receiver_id: 9 },
  { sender_id: 7, receiver_id: 13 },
  { sender_id: 8, receiver_id: 13 },
  { sender_id: 9, receiver_id: 13 },
  { sender_id: 10, receiver_id: 13 },
  { sender_id: 11, receiver_id: 4 },
  { sender_id: 11, receiver_id: 1 }
])