String[] sub = {"We’ve been through much thinking to", 
"see each other when we wake up in the morning", 
"the wind lingers on the lips", 
"sometimes I still have doubts", 
"yesterday seems like a dream",
"when I let go it slips like the wind that day",
"we turn away and walk through time",
"life is not always exciting",
"we still exist in each other’s thoughts",
"then why did we walk away so quickly?",
"that now we have to hold on to the broken love",
"that now we have to live in the uneasiness that comes late",
"because the sun blinded our eyes (when we realize)",
"we walk through much uneasy thinking",
"where we go, our steps still",
"miss the fragrance of someone’s hair", 
"that seems to linger still in time",

"because the sun blinded our eyes (when we realize)",

"I want to open the rain curtain to go back",
"I miss the oath we take on that crooked street",
"I miss our love, gentle and translucent",
"I miss it when I felt down, you’d rush to chase after me",
"I miss it when I wrote the lyrics, and you sang the melody",
"I miss our promises, our hands linked together", 
"our sweet, lustful whispers",
"I miss our yesterday and our today",
"we wait for one another behind the rain curtain",
"filled with promises on that crooked street",
"wlong with the flow, our shadows quietly sway",
"wandering on to forget all regrets",
"we wait for each other behind the rain curtain"};

String[] lyrics = {"ta di qua bao nghi suy de", 
"sang thuc giac trong thay nhau", "mien man lan gio qua moi mem", 
"doi khi em van thay nghi ngo", 
"hom qua nhu mot giac mo",
"buong tay lai vut bay nhu lan gio ngay hom ay",
"ta quay di roi buoc qua thang nam",
"cuoc doi chang co may khi la vui day",
"trong suy tu luon co nhau",
"vay ma chang hieu sao ta lai buoc ra di voi vang",
"niu bao yeu thuong vo tan",
"de roi day ta lai song trong uu tu muon mang",
"de anh duong che doi mat ai (khi ta chot nhan ra rang)",

"ta di qua bao nhiu muon phien nghi suy",
"noi ta qua buoc chan lai nhu van vuong",
"miu huong toc ai",
"ngay xuy van day con trong phut giay",

"vi anh duong che doi mat ai (khi ta nhan ra)",

"anh muon ven rem mua, ve lai ngay xua",
"nho loi ta hua noi con pho xieu veo",
"nho tinh yeu dep nhe nhang that trong veo", 
"nho luc anh buon em voi vang chay theo",
"nho anh viet loi con em thi hat Mel",
"nho nhung loi hua, nho tay trong tay",
"nho nhung ngot ngao ta thi tham dam say",
"nho ngay hom ay va ca ngay hom nay",

"ta cho nhau phia sau man mua ngay xua",
"chat chua nhung loi hua noi con pho cong veo",
"theo nhip troi bong ta nga nghieng lang yen",
"rong choi quen di het uu phien",

"ta cho nhau phia sau man mua ngay xua"};

void subs(){
  float curSec = frameCount/frameRate;
  fill(#94FCBE);
  textAlign(CENTER); 
  textSize(20);  
  float x = width/2;
  float l= height-40;  
  
  if (curSec>32 && curSec<37){
  text(sub[0],x,l);
  }
  
  if (curSec>37 && curSec<38){
  text(sub[1],x,l);
  }
  if (curSec>38 && curSec<41){
  text(sub[2],x,l);
  }
  
  if (curSec>41 && curSec<46){
  text(sub[3],x,l);
  }
  if (curSec>46 && curSec<48){
  text(sub[4],x,l);
  }
  if (curSec>48 && curSec<53){
  text(sub[5],x,l);
  }
  if (curSec>54 && curSec<58){
  text(sub[6],x,l);
  }
  if (curSec>58 && curSec<64){
  text(sub[7],x,l);
  }
  if (curSec>64 && curSec<66){
  text(sub[8],x,l);
  }
  if (curSec>66 && curSec<72){
  text(sub[9],x,l);
  }
  if (curSec>72 && curSec<76){
  text(sub[10],x,l);
  }
  if (curSec>76 && curSec<81){
  text(sub[11],x,l);
  }
  if (curSec>82 && curSec<86){
  text(sub[12],x,l);
  }
  if (curSec>86 && curSec<88){
  text(sub[13],x,l);
  }
  if (curSec>88 && curSec<90){
  text(sub[14],x,l);
  }
  if (curSec>90 && curSec<92){
  text(sub[15],x,l);
  }
  if (curSec>92 && curSec<96){
  text(sub[16],x,l);
  }
    
  if (curSec>109 && curSec<114){
  text(sub[17],x,l);
  }
  
  if (curSec>114 && curSec<116){
  text(sub[18],x,l);
  }
  if (curSec>116 && curSec<118){
  text(sub[19],x,l);
  }
  if (curSec>118 && curSec<120){
  text(sub[20],x,l);
  }
  if (curSec>120 && curSec<123){
  text(sub[21],x,l);
  }
  if (curSec>123 && curSec<125){
  text(sub[22],x,l);
  }
  if (curSec>125 && curSec<126){
  text(sub[23],x,l);
  }  
  if (curSec>126 && curSec<129){
  text(sub[24],x,l);
  }
  if (curSec>129 && curSec<132){
  text(sub[25],x,l);
  }
  
  
  if (curSec>152 && curSec<154){
  text(sub[26],x,l);
  }
  if (curSec>154 && curSec<158){
  text(sub[27],x,l);
  }
  if (curSec>159 && curSec<163){
  text(sub[28],x,l);
  }
  if (curSec>164 && curSec<167){
  text(sub[29],x,l);
  }
  if (curSec>168 && curSec<253){
  text(sub[30],x,l);
  }
}

void words(){
  float barwidth = 15;
  float barheight =300;
  float l= height/2-barheight/2+(frameCount+1)/(mv.duration()*frameRate/barheight);
    constrain(l, 1, barheight);  
  float curSec = frameCount/frameRate;
  //println(frameCount, frameRate, curSec);
  textAlign(LEFT); 
  fill(#94FCBE,177);
  textSize(22);  
  float x = barwidth*5/2+5;
  
  //line(barwidth*3/2, height/2-barheight/2, barwidth*3/2, l);
  if(mouseX<barwidth*2 && mouseX>barwidth && mouseY<(height/2+barheight/2) && mouseY>(height/2-barheight/2)){
  if (curSec>32 && curSec<=36){
  text(lyrics[0],x,l);
  }
  
  if (curSec>36 && curSec<=38){
  text(lyrics[1],x,l);
  }
  if (curSec>38 && curSec<=41){
  text(lyrics[2],x,l);
  }
  
  if (curSec>41 && curSec<=46){
  text(lyrics[3],x,l);
  }
  if (curSec>46 && curSec<=48){
  text(lyrics[4],x,l);
  }
  if (curSec>48 && curSec<=53){
  text(lyrics[5],x,l);
  }
  if (curSec>54 && curSec<=58){
  text(lyrics[6],x,l);
  }
  if (curSec>58 && curSec<=64){
  text(lyrics[7],x,l);
  }
  if (curSec>64 && curSec<=66){
  text(lyrics[8],x,l);
  }
  if (curSec>66 && curSec<=72){
  text(lyrics[9],x,l);
  }
  if (curSec>72 && curSec<=76){
  text(lyrics[10],x,l);
  }
  if (curSec>76 && curSec<=81){
  text(lyrics[11],x,l);
  }
  if (curSec>82 && curSec<=86){
  text(lyrics[12],x,l);
  }
  if (curSec>86 && curSec<=88){
  text(lyrics[13],x,l);
  }
  if (curSec>88 && curSec<=90){
  text(lyrics[14],x,l);
  }
  if (curSec>90 && curSec<=92){
  text(lyrics[15],x,l);
  }
  if (curSec>92 && curSec<=96){
  text(lyrics[16],x,l);
  }
    
  if (curSec>109 && curSec<=114){
  text(lyrics[17],x,l);
  }
  
  if (curSec>114 && curSec<116){
  text(lyrics[18],x,l);
  }
  if (curSec>116 && curSec<118){
  text(lyrics[19],x,l);
  }
  if (curSec>118 && curSec<120){
  text(lyrics[20],x,l);
  }
  if (curSec>120 && curSec<123){
  text(lyrics[21],x,l);
  }
  if (curSec>123 && curSec<125){
  text(lyrics[22],x,l);
  }
  if (curSec>125 && curSec<126){
  text(lyrics[23],x,l);
  }  
  if (curSec>126 && curSec<129){
  text(lyrics[24],x,l);
  }
  if (curSec>129 && curSec<132){
  text(lyrics[25],x,l);
  }
  
  
  if (curSec>152 && curSec<=154){
  text(lyrics[26],x,l);
  }
  if (curSec>154 && curSec<=158){
  text(lyrics[27],x,l);
  }
  if (curSec>159 && curSec<=163){
  text(lyrics[28],x,l);
  }
  if (curSec>164 && curSec<=167){
  text(lyrics[29],x,l);
  }
  if (curSec>168 && curSec<=253){
  text(lyrics[30],x,l);
  }
  }
  
  
}