var
	ty,tx:array[1..8] of longint;
	map:array[0..150,0..150] of string;
	my,mx,msk,iy,ix,dummy,cek,i,j,tes:longint;
	brs,kata:string;
begin
	//reading
	readln(my,mx);
	for iy:=1 to my do
		begin
		readln(brs);
		for ix:=1 to mx do
			begin
			map[iy,ix]:=brs[ix*2-1];
			end;
		end;
	//setting
	ty[1]:=0;
	tx[1]:=1;
	ty[2]:=1;
	tx[2]:=1;
	ty[3]:=1;
	tx[3]:=0;
	ty[4]:=1;
	tx[4]:=-1;
	ty[5]:=0;
	tx[5]:=-1;
	ty[6]:=-1;
	tx[6]:=-1;
	ty[7]:=-1;
	tx[7]:=0;
	ty[8]:=-1;
	tx[8]:=1;
	readln(msk);
	for dummy:=1 to msk do
		begin
		readln(kata);
		cek:=0;
		tes:=0;
		for iy:=1 to my do
			begin
			for ix:=1 to mx do
				begin
				if map[iy,ix]=kata[1] then
					begin
					//writeln(iy,' ',ix);
					for i:=1 to 8 do
						begin
						if ((iy+(ty[i]*(length(kata)-1)))>=1) and ((iy+(ty[i]*(length(kata)-1)))<=my) 
						and ((ix+(tx[i]*(length(kata)-1)))>=1) and ((ix+(tx[i]*(length(kata)-1)))<=mx) then
							begin
							cek:=1;	
							for j:=1 to length(kata)-1 do
								begin
								{writeln(i);
								writeln(j);
								writeln(iy+(ty[i]*j),' ',ix+(tx[i]*j));
								writeln(map[iy+(ty[i]*j),ix+(tx[i]*j)]);
								writeln(kata[j+1]);
								writeln;}
								
								if map[iy+(ty[i]*j),ix+(tx[i]*j)]=kata[j+1] then
									begin
									end
								else
									begin
									cek:=0;
									break;
									end;
								end;
							if cek=1 then
								begin
								tes:=1;
								writeln(kata,' Y');
								break;
								end;
							end;
						if tes=1 then
							begin
							break;
							end;
						end;
					end;
				if tes=1 then
					begin
					break;
					end;
				end;
			if tes=1 then
				begin
				break;
				end;
			end;
		if tes=0 then
			begin
			writeln(kata,' T');
			end;
		end;
end.