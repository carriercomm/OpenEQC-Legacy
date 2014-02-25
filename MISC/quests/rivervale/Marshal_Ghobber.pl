sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings!  Allow me to introduce myself.  I am Marshal Ghobber Truppack.  Marshal of the Great Wall Patrol.  Are you [new to the squad]?");
}
if($text=~/I am new to the squad/i){
quest::say("You are in good standing with the Guardians of the Vale. Continue with your good work and then we may speak.");
quest::say("Great!!!   We require more deputies in this squad.   We are suffering great losses to the [new threat].   Welcome to the Great Wall Patrol where our motto is. 'United we shall defend.'   It will be some time before you can earn your squad ring - first you must prove your strength in battle.  Report to the squad leader.  He is Deputy Budo.  You can find him at the Great Wall of Serilis in the Misty Thicket.  Go to him at once and tell him you are reporting for duty.");
}
if($text=~/Am I one with the wall/i){
quest::say("You are in good standing with the Guardians of the Vale. Continue with your good work and then we may speak.");
}
if($text=~/what new threat/i){
quest::say("The new threat I refer to is the community of goblins which was found beyond the Great Wall of Serilis.  They are called Clan Runnyeye.  They have begun to sneak over the wall.  The deputies have reported seeing them launch themselves up the wall in a matter of seconds using ornate grappling hooks.  We have attempted to obtain one of these devices for further inspection. but we have yet to find one on any of the dead goblins.  If you should ever find one. be sure to bring it to me immediately."); }
}

sub EVENT_ITEM {
 #do all other handins first, then let it do disciplines
 #if($itemcount{} == 1) {
 #} else {
	if($class ne 'Warrior') {
		quest::say("You are not a member of my guild. I will not train you!");
		quest::summonitem($item1) if($item1);
		quest::summonitem($item2) if($item2);
		quest::summonitem($item3) if($item3);
		quest::summonitem($item4) if($item4);
		return;
	}
	#assume it is a discipline tome...
	quest::traindisc($item1) if(quest::isdisctome($item1));
	quest::traindisc($item2) if(quest::isdisctome($item2));
	quest::traindisc($item3) if(quest::isdisctome($item3));
	quest::traindisc($item4) if(quest::isdisctome($item4));
 #}
}
#END of FILE Zone:rivervale  ID:19060 -- Marshal_Ghobber 