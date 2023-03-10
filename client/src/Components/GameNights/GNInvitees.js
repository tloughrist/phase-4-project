import './GameNights.css';
import React from "react";

function InviteeCard({ invitee, invitees, night, setInvitees }) {

  async function handleDelete(inviteeId, gameNightId) {
    if (window.confirm(`Are you sure you want to uninvite ${invitee.name}?`)) {
      await fetch(`/uninvite/${inviteeId}/${gameNightId}`, {
          method: "DELETE"
      });
      const inviteesSans = invitees.filter((invite) => invite.id !== invitee.id);
      setInvitees(inviteesSans);
    };
  };

  return(
    <div>
      <p>{invitee.name} / {invitee.username}</p>
      <button className="navlink card_button" onClick={e => handleDelete(invitee.id, night.id)}>uninvite</button>
    </div>
  );
}

export default InviteeCard;