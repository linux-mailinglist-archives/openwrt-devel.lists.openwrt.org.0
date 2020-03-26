Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 402D7194B75
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 23:21:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TdiXnBEay8cdpi/WTkfFrzeXgw2kc1inwhLlBpkbJ/A=; b=Nr5gw9KXxFGhh9IQAyG3ORMSi
	mXOk5jVnC54NpBrCBn/eqbkpbQglUZ8rUMP8Zw7RC+WO/7vAEY24pLmRAZelaAJZNNuALlYmY5M24
	rvLQcq8+msCiebTAu56R/DQUkE+eGYqCinlaXGbp5o4R7M87T94Et1fY6KwKsU9WkyWjhX1hjebhw
	omsLslB3daq8h2pWDO8L/Bed43ZphczuOKw3qvrBgRa+Clx0X33yaMyWXZ/PdtKieyY0Rljahu4u1
	q+nnLQrB3w2OFNofqFZR34YGuyG1UyeX3K6ztRPhAdrp+Xe8IzMP9kz5lBBpsTiE7LKFPR1wND4RV
	cVj2I/tkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHasc-0004A9-K1; Thu, 26 Mar 2020 22:21:38 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHasW-00049B-FX
 for openwrt-devel@lists.openwrt.org; Thu, 26 Mar 2020 22:21:34 +0000
Received: by mail-qk1-x733.google.com with SMTP id l25so8865115qki.7
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Mar 2020 15:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i/aWY75UdYUqXTpJM1hbZ/PWABOWKSc7mVL1QO/lgp8=;
 b=QOnNhoaH3DZDkgB3cmn4mxV0AVnjCo2WsPygnml4JMnwhBcTTBrC8rpjFcJLcyR60g
 Op7WUrelyjiS5iwMx5SoLZ/mecQHkAHp3G9nDY2Sb9RTxF0ToCFTLhcHR+V10oe7kNf1
 b/KpB56kpxPlqMgEt/DixQG0LyrXNtjD5Oa+8Xb54Qw5EZPMBWFVxOiyNHeEfQNA3tUb
 ZjyjukKq/428N8oGj4B/B6z8E1Y1abDob1Zy64rbTdJAGWtpHKuIxC78O1G5W+ybXKgH
 Rbdhm+BvyzL+5MNCFckPGAQsU1974LkyDsBtoiPy0aosnt6F/B9tJrzH4mEawiDWV/wL
 Xf0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i/aWY75UdYUqXTpJM1hbZ/PWABOWKSc7mVL1QO/lgp8=;
 b=kX6Kq6zGcUy5HB6U6YfxkDKmx2swDkxVSr5VGcpvJZjS/T9WXRi91PsxCImSpexSgW
 iziZVMwTmQmGUQNh8ahpfwKVU8TzQbIuOzovVnkpbs7Xb6K/oSq8ft6SNhnx/aL9hhUH
 NF5GZgEPQUorLOLuH+aocl+A2ChBCR6F49/5iK1XU3nMHJgBj6NpB6R7PPnrGn/vHE+J
 ChaQhkYGPeFzKePLnQCd0/TcXxoW9VMEw4f4D9J8oGClrE4X7+38CrAr8P38iGEnUehR
 KpbWKhN8uBcLQhcXxMZRQBSQcUEDm1WdLDHYoVkg+uDelrqGo+lxO092Z+RyntJEYm0w
 +pyg==
X-Gm-Message-State: ANhLgQ0q7S4qmehUjbYB2Tq3683ubox1D2cOvdL5c+XI6x0ZBy8PbcP0
 0kWv8JowzzvEh3gdXueRNvIpUXyVZGiQIn/t/98=
X-Google-Smtp-Source: ADFU+vtJqBz+D3h3HVJ227Vsg72dxam3d69Hx2o18N/Hf+Q7eUOG/p864CXYUM2VHoI+OUlkkjxpMQK2ZRMeTiwGvr8=
X-Received: by 2002:a37:270c:: with SMTP id n12mr10969009qkn.463.1585261290029; 
 Thu, 26 Mar 2020 15:21:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAKiAkGSCYNc7HjvdybDNEhq6ryz0KHk6VTppsFLayqPNyKZcWw@mail.gmail.com>
 <CAOX2RU5tXCkq=zhdi_CgP-JVdVS6hN2b1O6Q46vXSd7nGhKpNQ@mail.gmail.com>
 <CA+_ehUyRFpGPZ_wSF_5146HE3KjfC0Og_yFaWRQ=PaZy7xP4_A@mail.gmail.com>
 <CAKiAkGQ86KBsO7HEzd3FzNWxG19Yj7ROaupAAe-7pPyyyHMh9w@mail.gmail.com>
 <CAKiAkGT-R-H8uf81_Y2gxjX7=HKdEKcba1-26pnHVqnF4-P03w@mail.gmail.com>
In-Reply-To: <CAKiAkGT-R-H8uf81_Y2gxjX7=HKdEKcba1-26pnHVqnF4-P03w@mail.gmail.com>
From: Robert Marko <robimarko@gmail.com>
Date: Thu, 26 Mar 2020 23:21:18 +0100
Message-ID: <CAOX2RU5pnA4Znyhe9=+9Xv0m9Kc4OO3dNr6B1-Rgi16ymaayUg@mail.gmail.com>
To: =?UTF-8?Q?Joel_Wir=C4=81mu_Pauling?= <joel@aenertia.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_152132_553265_43EE6091 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:733 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robimarko[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] New target IPQ8074 / Asus-ax89x(u)
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Ansuel Smith <ansuelsmth@gmail.com>
Content-Type: multipart/mixed; boundary="===============5523857674907892593=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5523857674907892593==
Content-Type: multipart/alternative; boundary="00000000000011888405a1c9683c"

--00000000000011888405a1c9683c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 26 Mar 2020 at 23:11, Joel Wir=C4=81mu Pauling <joel@aenertia.net> =
wrote:

> Considering that there are a heap of lesser boxes from the likes of
> Cisco/Aruba/Dlink/Asus themselves that are far inferior selling well abov=
e
> the 1500$ mark.
>
I dont take Cisco and Aruba prices seriously.

>
> On Fri, 27 Mar 2020 at 11:09, Joel Wir=C4=81mu Pauling <joel@aenertia.net=
>
> wrote:
>
>> It's 800$NZD not sure of what the conversion is.
>>
>> BUT
>>
>> It's got Dual 10Gbit ports ; so if you factor going the DIY route on x86
>> boxes (which is what I have been forced to do for 10G capable for the la=
st
>> few years), Power consumption, and wifi6 - it's actually not an
>> unreasonable price point for what you get.
>>
> Its roughly 400EUR, a lot for a consumer device.
Its a good device, but for development, it's too expensive since there is a
chance of bricking it.
I am waiting for a cheap(100-ish EUR) IPQ807x board since I don't see
getting a test one at work for a while and I cant afford 300+ EUR myself.

>
>>
>>
>> On Fri, 27 Mar 2020 at 10:45, Ansuel Smith <ansuelsmth@gmail.com> wrote:
>>
>>> 400=E2=82=AC for a router... little too much for now... at least the fi=
rmware
>>> is openwrt based so ASUS should provide GPL.
>>>
>>> Il giorno gio 26 mar 2020 alle ore 22:42 Robert Marko
>>> <robimarko@gmail.com> ha scritto:
>>> >
>>> >
>>> >
>>> > On Thu, 26 Mar 2020 at 22:39, Joel Wir=C4=81mu Pauling <joel@aenertia=
.net>
>>> wrote:
>>> >>
>>> >> Hi all,
>>> >>
>>> >> I received my ax89x yesterday and have added a stub wiki page for it
>>> here:
>>> >>
>>> >> https://openwrt.org/toh/asus/rt-ax89x
>>> >>
>>> >> There is a published build chain for the device from ASUS - I haven'=
t
>>> tried compiling it.
>>> >> I've done some preliminary poking and opened the case up - dumped th=
e
>>> bootlog.
>>> >>
>>> >> Very interesting device and likely a good target for 10Gbit and Wifi=
6
>>> work.
>>> >
>>> >
>>> > Looks great, just that the price tag is painful.
>>> > Its HK01 reference board based, a lot of stuff has been upstreamed bu=
t
>>> a whole more is missing for IPQ807x upstream.
>>> >>
>>> >>
>>> >>
>>> >> -Joel
>>> >> _______________________________________________
>>> >> openwrt-devel mailing list
>>> >> openwrt-devel@lists.openwrt.org
>>> >> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>> >
>>> > _______________________________________________
>>> > openwrt-devel mailing list
>>> > openwrt-devel@lists.openwrt.org
>>> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>>
>>

--00000000000011888405a1c9683c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, 26 Mar 2020 at 23:11, Joel Wi=
r=C4=81mu Pauling &lt;<a href=3D"mailto:joel@aenertia.net">joel@aenertia.ne=
t</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div style=3D"font-family:verdana,sans-serif">Considering=
 that there are a heap of lesser boxes from the likes of Cisco/Aruba/Dlink/=
Asus themselves that are far inferior selling well above the 1500$ mark.<sp=
an style=3D"font-family:Arial,Helvetica,sans-serif">=C2=A0</span></div></di=
v></blockquote><div>I dont take Cisco and Aruba prices seriously.=C2=A0</di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div s=
tyle=3D"font-family:verdana,sans-serif"></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 27 Mar 2020 at 11:09,=
 Joel Wir=C4=81mu Pauling &lt;<a href=3D"mailto:joel@aenertia.net" target=
=3D"_blank">joel@aenertia.net</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr"><div style=3D"font-family:ver=
dana,sans-serif">It&#39;s 800$NZD not sure of what the conversion is. <br><=
/div><div style=3D"font-family:verdana,sans-serif"><br></div><div style=3D"=
font-family:verdana,sans-serif">BUT</div><div style=3D"font-family:verdana,=
sans-serif"><br></div><div style=3D"font-family:verdana,sans-serif">It&#39;=
s got Dual 10Gbit ports ; so if you factor going the DIY route on x86 boxes=
 (which is what I have been forced to do for 10G capable for the last few y=
ears), Power consumption, and wifi6 - it&#39;s actually not an unreasonable=
 price point for what you get.</div></div></blockquote></div></blockquote><=
div>Its roughly 400EUR, a lot for a consumer device.</div><div>Its a good d=
evice, but for development, it&#39;s too expensive since there is a chance =
of bricking it.</div><div>I am waiting for a cheap(100-ish EUR) IPQ807x boa=
rd since I don&#39;t see getting a test one at work for a while and I cant =
afford 300+ EUR myself.</div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr"><div style=3D"font-family:verdana,sans-serif"><br></=
div><div style=3D"font-family:verdana,sans-serif"><br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 27 Mar =
2020 at 10:45, Ansuel Smith &lt;<a href=3D"mailto:ansuelsmth@gmail.com" tar=
get=3D"_blank">ansuelsmth@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">400=E2=82=AC for a router... little too =
much for now... at least the firmware<br>
is openwrt based so ASUS should provide GPL.<br>
<br>
Il giorno gio 26 mar 2020 alle ore 22:42 Robert Marko<br>
&lt;<a href=3D"mailto:robimarko@gmail.com" target=3D"_blank">robimarko@gmai=
l.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Thu, 26 Mar 2020 at 22:39, Joel Wir=C4=81mu Pauling &lt;<a href=3D"=
mailto:joel@aenertia.net" target=3D"_blank">joel@aenertia.net</a>&gt; wrote=
:<br>
&gt;&gt;<br>
&gt;&gt; Hi all,<br>
&gt;&gt;<br>
&gt;&gt; I received my ax89x yesterday and have added a stub wiki page for =
it here:<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://openwrt.org/toh/asus/rt-ax89x" rel=3D"noreferre=
r" target=3D"_blank">https://openwrt.org/toh/asus/rt-ax89x</a><br>
&gt;&gt;<br>
&gt;&gt; There is a published build chain for the device from ASUS - I have=
n&#39;t tried compiling it.<br>
&gt;&gt; I&#39;ve done some preliminary poking and opened the case up - dum=
ped the bootlog.<br>
&gt;&gt;<br>
&gt;&gt; Very interesting device and likely a good target for 10Gbit and Wi=
fi6 work.<br>
&gt;<br>
&gt;<br>
&gt; Looks great, just that the price tag is painful.<br>
&gt; Its HK01 reference board based, a lot of stuff has been upstreamed but=
 a whole more is missing for IPQ807x upstream.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; -Joel<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; openwrt-devel mailing list<br>
&gt;&gt; <a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blan=
k">openwrt-devel@lists.openwrt.org</a><br>
&gt;&gt; <a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-deve=
l" rel=3D"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/l=
istinfo/openwrt-devel</a><br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; openwrt-devel mailing list<br>
&gt; <a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">o=
penwrt-devel@lists.openwrt.org</a><br>
&gt; <a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" r=
el=3D"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listi=
nfo/openwrt-devel</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>

--00000000000011888405a1c9683c--


--===============5523857674907892593==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5523857674907892593==--

