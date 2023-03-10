import './GameNights.css';
import React, { useState } from 'react';
import Popup from 'reactjs-popup';
import 'reactjs-popup/dist/index.css';

function GameNightEditPopup({ night, originatedNights, setOriginatedNights }){
  
  const [title, setTitle] = useState(night.title);
  const [date, setDate] = useState(night.date);
  const [time, setTime] = useState(night.time);
  const [location, setLocation] = useState(night.location);

  async function handleEditGameNight(e, nightId) {
    e.preventDefault();
    const res = await fetch(`/game_nights/${nightId}`, {
        method: "PATCH",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify({ 
            title: title,
            date: date,
            time: time,
            location: location
            }),
        });
    if (res.ok) {
      const gameNight = await res.json();
      const gameNightsSans = originatedNights.filter((night) => night.id !== nightId);
      setOriginatedNights([...gameNightsSans, gameNight]);
    } else {
      alert(res.errors);
    }
  };

  async function handleDelete(nightId) {
    if (window.confirm("Are you sure you want to cancel this game night?")) {
      await fetch(`/game_nights/${nightId}`, {
        method: "DELETE"
      });
    const nightsSans = originatedNights.filter((night) => night.id !== nightId);
    setOriginatedNights(nightsSans);
    }
  };

  return( 
    <Popup
      trigger={<button className="navlink card_button center_contents">edit event</button>}
      position="right center"
      contentStyle={{width: "250px"}}
    >
      <div>
        <form onSubmit={(e) => handleEditGameNight(e, night.id)}>
          <label htmlFor="title">
              title
          </label>
          <input
              type="text"
              name="title"
              autoComplete="title"
              value={title}
              onChange={(e) => setTitle(e.target.value)}
          />
          <label htmlFor="date">
              date
          </label>
          <input
              type="date"
              name="date"
              autoComplete="date"
              value={date}
              onChange={(e) => setDate(e.target.value)}
          />
          <label htmlFor="time">
              time  
          </label>
          <input
              type="time"
              name="time"
              autoComplete="time"
              value={time}
              onChange={(e) => setTime(e.target.value)}
          />
          <label htmlFor="location">
              location  
          </label>
          <input
              type="text"
              name="location"
              autoComplete="location"
              value={location}
              onChange={(e) => setLocation(e.target.value)}
          />
          <button className="navlink card_button" id="popup_button1" type="submit">submit</button>
        </form>
        <button className="navlink card_button" id="popup_button2" onClick={e => handleDelete(night.id)}>cancel night</button>
      </div>
    </Popup>
  );
};

export default GameNightEditPopup;