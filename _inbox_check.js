const base=" https://household-budget-2c6aa-default-rtdb.firebaseio.com/inbox.json\;
(async()=>{
 const r=await fetch(base);
 const d=await r.json();
 if(!d){console.log(\INBOX_EMPTY\);return;}
 const ks=Object.keys(d);
 console.log(\INBOX_COUNT=\+ks.length);
 for(const k of ks){
 const it=d[k]||{};
 const raw=(it.raw||\\).replace(/\n/g,\\\n\);
 console.log(\--- \+k);
 console.log(" hint=\+it.source_hint+\ channel=\+it.channel+\ at=\+it.received_at);
    console.log(" raw=\+raw.slice(0,140));
 }
})();
