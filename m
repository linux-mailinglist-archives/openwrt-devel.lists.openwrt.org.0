Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA32194F64
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Mar 2020 04:03:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sBI+cv26SGKvbU5oqT6Z/MsSqcvl5gb26Tzr0AmjDnw=; b=X/Uep+u7awpjwjrEVD6vZNcRa
	6lrVI9xCY7NzzybKBzkP2iS8dCX3b5lzP8ZCd7nR59ZqabUBOQ2tbo8jFldSUIg+YQQF9NoHe2N+v
	I+9Z8DDwJMxpmY2DgTW2HC0lZ//QurpiZat+TcBt4WXY82bmetX41YFIBvFu4LTGJpKPXW4o5E/7G
	yqkgQo6Uh/HJDfdU0Ust3QZ5lygoqkqzmmKYVKJ4rqmX8d1VYneuLljcz99OaF+gnDRmMuZxisF9P
	AgjHgzNaDJclLg2EknM5NyY3R1VUAx+somMcGCWZyvfp8IGnMK52qF/hk7af5j7kuFN49UJKbuRz8
	WTNFjDxSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHfHf-0003pw-CR; Fri, 27 Mar 2020 03:03:47 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHfHV-0003pK-43
 for openwrt-devel@lists.openwrt.org; Fri, 27 Mar 2020 03:03:42 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id a5so259204ybo.7
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Mar 2020 20:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aenertia.net; s=dkimaenertianet;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sPFj2iERirDGABkujJZ9xG3CqnVGIbqpWaV5QBxOgfw=;
 b=NqSWzNyP8yEC6/NiW90f7OppBr+p8U7+mPKs1BXwEoMD9bgP9bF54QeWoIZeHd/rtb
 Tk2z3HDJdhyJ7ZCuWgJz3swT/x6sO8gAV326GH/v/VveUPDS7oQyUI796WSCCZgaZWTx
 R/UYEbjOE0XULcK3+DvlaM3fot+DKjMzsRNVw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sPFj2iERirDGABkujJZ9xG3CqnVGIbqpWaV5QBxOgfw=;
 b=bWwFy6xhJHcTktNVZ+bwujeucKEhLZ8ONSnV5xCHelkFPxmXdMndqZwhu3DqJYCdbV
 z4q3EpT73R3MbcZcsKbwMKCS1pUIjIKU1PUry9l8nwc5rGd5KsgMKNeDib2ZNwh4Up2a
 SeWUEOho4ApeAZMtdgXF/5K6TiJpBFcVwYDDoLQ0EGJstsltl+25Aip0uzxH1Whq8W3A
 NFYBLefjnnRRIHopJu3HVbxDFnYi49Lepy+q4TMHliE0uEEOw2I2tPVa5Qz3XLr4b7BH
 mS9RgwEa1qQRAj7ClLvQRdmBNzPKV2Otyy6bI8/90GR4/P61ef3Y6ARP60Xj0fvkww1V
 /WOw==
X-Gm-Message-State: ANhLgQ0MQtQ0HqftxD4Z8b12saoXouszAh2RL1mpGRU3oxQ+SMOOs7+e
 KjyUUI7tlxAQ0urPW9TMO7jG6ArzqPJ1dhecEBCv6Q==
X-Google-Smtp-Source: ADFU+vux6l4g1KlOnGJ3UKLgvO6qwiMKQGzhcXhaNSakEWqcTCg+4GAxZsSZFq9ifvgal42edSqO8Bt03wOSrR+WcAg=
X-Received: by 2002:a25:b0a1:: with SMTP id f33mr2044486ybj.403.1585278215951; 
 Thu, 26 Mar 2020 20:03:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAKiAkGSCYNc7HjvdybDNEhq6ryz0KHk6VTppsFLayqPNyKZcWw@mail.gmail.com>
 <CAOX2RU5tXCkq=zhdi_CgP-JVdVS6hN2b1O6Q46vXSd7nGhKpNQ@mail.gmail.com>
 <CA+_ehUyRFpGPZ_wSF_5146HE3KjfC0Og_yFaWRQ=PaZy7xP4_A@mail.gmail.com>
 <CAKiAkGQ86KBsO7HEzd3FzNWxG19Yj7ROaupAAe-7pPyyyHMh9w@mail.gmail.com>
 <CAKiAkGT-R-H8uf81_Y2gxjX7=HKdEKcba1-26pnHVqnF4-P03w@mail.gmail.com>
 <CAOX2RU5pnA4Znyhe9=+9Xv0m9Kc4OO3dNr6B1-Rgi16ymaayUg@mail.gmail.com>
In-Reply-To: <CAOX2RU5pnA4Znyhe9=+9Xv0m9Kc4OO3dNr6B1-Rgi16ymaayUg@mail.gmail.com>
From: =?UTF-8?Q?Joel_Wir=C4=81mu_Pauling?= <joel@aenertia.net>
Date: Fri, 27 Mar 2020 16:03:23 +1300
Message-ID: <CAKiAkGS-O09EnhrKS377rPqf_JDWnhuPy60ZoQw5mxfEo5onbg@mail.gmail.com>
To: Robert Marko <robimarko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_200337_339581_44D915AA 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b2b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Content-Type: multipart/mixed; boundary="===============4401059046641231527=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4401059046641231527==
Content-Type: multipart/alternative; boundary="000000000000eeab6905a1cd58a8"

--000000000000eeab6905a1cd58a8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Xiaomi ax3600 has Qualcomm radios right?

On Fri, 27 Mar 2020, 11:21 Robert Marko, <robimarko@gmail.com> wrote:

>
>
> On Thu, 26 Mar 2020 at 23:11, Joel Wir=C4=81mu Pauling <joel@aenertia.net=
>
> wrote:
>
>> Considering that there are a heap of lesser boxes from the likes of
>> Cisco/Aruba/Dlink/Asus themselves that are far inferior selling well abo=
ve
>> the 1500$ mark.
>>
> I dont take Cisco and Aruba prices seriously.
>
>>
>> On Fri, 27 Mar 2020 at 11:09, Joel Wir=C4=81mu Pauling <joel@aenertia.ne=
t>
>> wrote:
>>
>>> It's 800$NZD not sure of what the conversion is.
>>>
>>> BUT
>>>
>>> It's got Dual 10Gbit ports ; so if you factor going the DIY route on x8=
6
>>> boxes (which is what I have been forced to do for 10G capable for the l=
ast
>>> few years), Power consumption, and wifi6 - it's actually not an
>>> unreasonable price point for what you get.
>>>
>> Its roughly 400EUR, a lot for a consumer device.
> Its a good device, but for development, it's too expensive since there is
> a chance of bricking it.
> I am waiting for a cheap(100-ish EUR) IPQ807x board since I don't see
> getting a test one at work for a while and I cant afford 300+ EUR myself.
>
>>
>>>
>>>
>>> On Fri, 27 Mar 2020 at 10:45, Ansuel Smith <ansuelsmth@gmail.com> wrote=
:
>>>
>>>> 400=E2=82=AC for a router... little too much for now... at least the f=
irmware
>>>> is openwrt based so ASUS should provide GPL.
>>>>
>>>> Il giorno gio 26 mar 2020 alle ore 22:42 Robert Marko
>>>> <robimarko@gmail.com> ha scritto:
>>>> >
>>>> >
>>>> >
>>>> > On Thu, 26 Mar 2020 at 22:39, Joel Wir=C4=81mu Pauling <joel@aenerti=
a.net>
>>>> wrote:
>>>> >>
>>>> >> Hi all,
>>>> >>
>>>> >> I received my ax89x yesterday and have added a stub wiki page for i=
t
>>>> here:
>>>> >>
>>>> >> https://openwrt.org/toh/asus/rt-ax89x
>>>> >>
>>>> >> There is a published build chain for the device from ASUS - I
>>>> haven't tried compiling it.
>>>> >> I've done some preliminary poking and opened the case up - dumped
>>>> the bootlog.
>>>> >>
>>>> >> Very interesting device and likely a good target for 10Gbit and
>>>> Wifi6 work.
>>>> >
>>>> >
>>>> > Looks great, just that the price tag is painful.
>>>> > Its HK01 reference board based, a lot of stuff has been upstreamed
>>>> but a whole more is missing for IPQ807x upstream.
>>>> >>
>>>> >>
>>>> >>
>>>> >> -Joel
>>>> >> _______________________________________________
>>>> >> openwrt-devel mailing list
>>>> >> openwrt-devel@lists.openwrt.org
>>>> >> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>>> >
>>>> > _______________________________________________
>>>> > openwrt-devel mailing list
>>>> > openwrt-devel@lists.openwrt.org
>>>> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>>>
>>>

--000000000000eeab6905a1cd58a8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Xiaomi ax3600 has Qualcomm radios right?</div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 27 Mar 20=
20, 11:21 Robert Marko, &lt;<a href=3D"mailto:robimarko@gmail.com">robimark=
o@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, 26 Mar 2020 at 23:11, Joel Wir=C4=81m=
u Pauling &lt;<a href=3D"mailto:joel@aenertia.net" target=3D"_blank" rel=3D=
"noreferrer">joel@aenertia.net</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><div style=3D"font-family:ve=
rdana,sans-serif">Considering that there are a heap of lesser boxes from th=
e likes of Cisco/Aruba/Dlink/Asus themselves that are far inferior selling =
well above the 1500$ mark.<span style=3D"font-family:Arial,Helvetica,sans-s=
erif">=C2=A0</span></div></div></blockquote><div>I dont take Cisco and Arub=
a prices seriously.=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr"><div style=3D"font-family:verdana,sans-serif"></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Fri, 27 Mar 2020 at 11:09, Joel Wir=C4=81mu Pauling &lt;<a href=3D"mailt=
o:joel@aenertia.net" target=3D"_blank" rel=3D"noreferrer">joel@aenertia.net=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr"><div style=3D"font-family:verdana,sans-serif">It&#39;s 800=
$NZD not sure of what the conversion is. <br></div><div style=3D"font-famil=
y:verdana,sans-serif"><br></div><div style=3D"font-family:verdana,sans-seri=
f">BUT</div><div style=3D"font-family:verdana,sans-serif"><br></div><div st=
yle=3D"font-family:verdana,sans-serif">It&#39;s got Dual 10Gbit ports ; so =
if you factor going the DIY route on x86 boxes (which is what I have been f=
orced to do for 10G capable for the last few years), Power consumption, and=
 wifi6 - it&#39;s actually not an unreasonable price point for what you get=
.</div></div></blockquote></div></blockquote><div>Its roughly 400EUR, a lot=
 for a consumer device.</div><div>Its a good device, but for development, i=
t&#39;s too expensive since there is a chance of bricking it.</div><div>I a=
m waiting for a cheap(100-ish EUR) IPQ807x board since I don&#39;t see gett=
ing a test one at work for a while and I cant afford 300+ EUR myself.</div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"gmail_quote=
"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div s=
tyle=3D"font-family:verdana,sans-serif"><br></div><div style=3D"font-family=
:verdana,sans-serif"><br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Fri, 27 Mar 2020 at 10:45, Ansuel Smith &=
lt;<a href=3D"mailto:ansuelsmth@gmail.com" target=3D"_blank" rel=3D"norefer=
rer">ansuelsmth@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">400=E2=82=AC for a router... little too much for n=
ow... at least the firmware<br>
is openwrt based so ASUS should provide GPL.<br>
<br>
Il giorno gio 26 mar 2020 alle ore 22:42 Robert Marko<br>
&lt;<a href=3D"mailto:robimarko@gmail.com" target=3D"_blank" rel=3D"norefer=
rer">robimarko@gmail.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Thu, 26 Mar 2020 at 22:39, Joel Wir=C4=81mu Pauling &lt;<a href=3D"=
mailto:joel@aenertia.net" target=3D"_blank" rel=3D"noreferrer">joel@aenerti=
a.net</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi all,<br>
&gt;&gt;<br>
&gt;&gt; I received my ax89x yesterday and have added a stub wiki page for =
it here:<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://openwrt.org/toh/asus/rt-ax89x" rel=3D"noreferre=
r noreferrer" target=3D"_blank">https://openwrt.org/toh/asus/rt-ax89x</a><b=
r>
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
k" rel=3D"noreferrer">openwrt-devel@lists.openwrt.org</a><br>
&gt;&gt; <a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-deve=
l" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.openwrt.or=
g/mailman/listinfo/openwrt-devel</a><br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; openwrt-devel mailing list<br>
&gt; <a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank" r=
el=3D"noreferrer">openwrt-devel@lists.openwrt.org</a><br>
&gt; <a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://lists.openwrt.org/ma=
ilman/listinfo/openwrt-devel</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>

--000000000000eeab6905a1cd58a8--


--===============4401059046641231527==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4401059046641231527==--

