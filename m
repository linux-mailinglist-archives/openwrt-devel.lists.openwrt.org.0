Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F154319E80B
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Apr 2020 01:58:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y0uxAd77p5gNk+jLRt2seNMPdcLLmqPL/JtRkNHHjXY=; b=GdWlX7irl0Vgy9X8qbBlSCcWu
	82XhLV5QNr+X7z4ONa3TtE7CxshNHg43/dz4RxWlt88CkO1p97DZ/fT5MnAbQY+KIN0TPlTZH3OTZ
	F2N85lX1aorIL8mCrC5g2xDxPcGtw799csYq/+C7/xSXFjXNlHFAknmU7MuC9gDAa6oYtPLV8a8wv
	19RmAqyKIqWrQDjHQnNoEG7KlaqBQXGau3wwfIWLmHwk6sAndMZ1JDFfra/iZmaJIvue3UfVMy9+z
	LV3DeoGmOeOUEIJOFc2tEna9Z7qIw1ZcW3cif8KyFtRNVzR3njR9nYx889w/TQ9SLYwS4ea3jZEFa
	Jtm1rcc3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKsfh-0006pj-15; Sat, 04 Apr 2020 23:57:53 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKsfT-0006oq-Gt
 for openwrt-devel@lists.openwrt.org; Sat, 04 Apr 2020 23:57:45 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id i2so1023320ybk.2
 for <openwrt-devel@lists.openwrt.org>; Sat, 04 Apr 2020 16:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aenertia.net; s=dkimaenertianet;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wuy57412y7Ia76jrxVpY/o8zX1mr8VOtYcCMORCOfD8=;
 b=Qty95idJz4TDKP3iLS2wAnQW5WeMyLiAenNxkjyDjJxQH36RuXB+zCBq04rVOL4K3U
 Nf9aEXni/kbBvTsd+VJNv/WK5RbbYbP9NR2k8g5Tn5RJVkU//zBV6wAhQ8kRwoHCuwKg
 +Oix2iFO4lydwTeNOPQ6HwN6PVbbY0qwA6eJ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wuy57412y7Ia76jrxVpY/o8zX1mr8VOtYcCMORCOfD8=;
 b=j/KIff+I+ayPF1BZ51RHrkN+b3PTshV3NP7qr33sCPRo+D6gxREAsZC57+0ZfCOMiZ
 JfApGiBLvB9rNSCBnVvbb+vKrGb4sG3EMeVB6ASas20eJs8qZFXlaDQlQ+AP5uzBbQJg
 5SUrSeuQgWX9LJAXyF/b7lP/Nh+4gEYd+x2yiWBWG4/deus9t+BmsKj2vSVoW7K/KAYY
 e2kIasOscPOaumdcJqmqbyHAuaHUx1oY7MXEx8vynrxdrCxphqksa4dPIIFgySKW8bsb
 0QFz5+jXLTodNSML4KAd1Xg7ykoZDM5EMhzclJhD9Tr46O6TixxWlZX6qvurPXn5nKo8
 gUEA==
X-Gm-Message-State: AGi0PuYufAKeC+NHy1vRPXzA/N1hEcN9TorwjIbBKkL6Qa7yP3Kygnwy
 3owwDgMGDBVDa13WVLVQwCS8lNYIF2AchyuJifal8A==
X-Google-Smtp-Source: APiQypKzwkFcPFBS5HvK3GM2Nk2G83d9ANEL2MoxQAdRriQl4F+yX/Y7Dv7Au+5EBPZXSkjrgkhkJtRj/10564H3eG4=
X-Received: by 2002:a25:dc08:: with SMTP id y8mr25383182ybe.163.1586044655904; 
 Sat, 04 Apr 2020 16:57:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAKiAkGSCYNc7HjvdybDNEhq6ryz0KHk6VTppsFLayqPNyKZcWw@mail.gmail.com>
 <CAOX2RU5tXCkq=zhdi_CgP-JVdVS6hN2b1O6Q46vXSd7nGhKpNQ@mail.gmail.com>
 <CA+_ehUyRFpGPZ_wSF_5146HE3KjfC0Og_yFaWRQ=PaZy7xP4_A@mail.gmail.com>
 <CAKiAkGQ86KBsO7HEzd3FzNWxG19Yj7ROaupAAe-7pPyyyHMh9w@mail.gmail.com>
 <CAKiAkGT-R-H8uf81_Y2gxjX7=HKdEKcba1-26pnHVqnF4-P03w@mail.gmail.com>
 <CAOX2RU5pnA4Znyhe9=+9Xv0m9Kc4OO3dNr6B1-Rgi16ymaayUg@mail.gmail.com>
 <CAKiAkGS-O09EnhrKS377rPqf_JDWnhuPy60ZoQw5mxfEo5onbg@mail.gmail.com>
 <CAOX2RU5dsN-W1h87ekzmYMVv0+d57ogxSeKhBz9rnheiQVBjGQ@mail.gmail.com>
In-Reply-To: <CAOX2RU5dsN-W1h87ekzmYMVv0+d57ogxSeKhBz9rnheiQVBjGQ@mail.gmail.com>
From: =?UTF-8?Q?Joel_Wir=C4=81mu_Pauling?= <joel@aenertia.net>
Date: Sun, 5 Apr 2020 11:57:11 +1200
Message-ID: <CAKiAkGQMwtWtiR9GJ-961isQPbWwCX7DrDCWLktZwGaQ5qb8Xw@mail.gmail.com>
To: Robert Marko <robimarko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_165739_818761_327EE057 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b2f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: multipart/mixed; boundary="===============4362969791067210908=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4362969791067210908==
Content-Type: multipart/alternative; boundary="000000000000503d6805a27fcc07"

--000000000000503d6805a27fcc07
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

So update on the rt-ax89x;

I have successfully managed to compile using the ASUSwrt build chain and
load a usable firmware (well if you can call asuswrt usable; it's horrific
when it comes to how service construct flow is setup, i can't believe the
junk being shipped on otherwise nice platforms...)

I have also figured out the debrick procedure ; uboot on the device DOES
accept tftp in recovery mode. Have added notes to the wiki; reposted here:

Method:

   1. Setup interface on Host PC with ip 192.168.50.75/24 (not the Router
   will ONLY accept tftp put over this IP) ; $ip a a 192.168.50.75/24 dev
   <NICDEV>
   2. The HostNIC and recovery is performed ONLY over the 1G WAN port NIC
   (this is the 'blue') NIC port next to the 10G Copper port.
   3. Find valid recovery .trx
   4. Run tftp to 192.168.50.1 ; $tftp 192.168.50.1
   5. Unplug DC barrel jack whilst holding down the reset switch with a
   pointy thing
   6. Leave Power Button Depressed(on)
   7. Replug DC barrel jack whilst still holding reset switch with a pointy
   thing ; release after first LED indication
   8. Power LED will flash slowly
   9. Use TFTP client to put target firmware in bin mode; set trace to show
   progess; $tftp>trace ; $tftp>bin; $tftp>put <validfile>.trx
   10. Trace will show transfer ; wait for router to reboot.


-Joel

On Sat, 28 Mar 2020 at 00:20, Robert Marko <robimarko@gmail.com> wrote:

>
>
> On Fri, 27 Mar 2020 at 04:03, Joel Wir=C4=81mu Pauling <joel@aenertia.net=
>
> wrote:
>
>> Xiaomi ax3600 has Qualcomm radios right?
>>
> Yeah, its QCA8071A based.
> But I can't find anywhere to get one in EU and there is no GPL released.
> Xiaomi really doesn't care about respecting GPL on their routers.
>
>>
>> On Fri, 27 Mar 2020, 11:21 Robert Marko, <robimarko@gmail.com> wrote:
>>
>>>
>>>
>>> On Thu, 26 Mar 2020 at 23:11, Joel Wir=C4=81mu Pauling <joel@aenertia.n=
et>
>>> wrote:
>>>
>>>> Considering that there are a heap of lesser boxes from the likes of
>>>> Cisco/Aruba/Dlink/Asus themselves that are far inferior selling well a=
bove
>>>> the 1500$ mark.
>>>>
>>> I dont take Cisco and Aruba prices seriously.
>>>
>>>>
>>>> On Fri, 27 Mar 2020 at 11:09, Joel Wir=C4=81mu Pauling <joel@aenertia.=
net>
>>>> wrote:
>>>>
>>>>> It's 800$NZD not sure of what the conversion is.
>>>>>
>>>>> BUT
>>>>>
>>>>> It's got Dual 10Gbit ports ; so if you factor going the DIY route on
>>>>> x86 boxes (which is what I have been forced to do for 10G capable for=
 the
>>>>> last few years), Power consumption, and wifi6 - it's actually not an
>>>>> unreasonable price point for what you get.
>>>>>
>>>> Its roughly 400EUR, a lot for a consumer device.
>>> Its a good device, but for development, it's too expensive since there
>>> is a chance of bricking it.
>>> I am waiting for a cheap(100-ish EUR) IPQ807x board since I don't see
>>> getting a test one at work for a while and I cant afford 300+ EUR mysel=
f.
>>>
>>>>
>>>>>
>>>>>
>>>>> On Fri, 27 Mar 2020 at 10:45, Ansuel Smith <ansuelsmth@gmail.com>
>>>>> wrote:
>>>>>
>>>>>> 400=E2=82=AC for a router... little too much for now... at least the=
 firmware
>>>>>> is openwrt based so ASUS should provide GPL.
>>>>>>
>>>>>> Il giorno gio 26 mar 2020 alle ore 22:42 Robert Marko
>>>>>> <robimarko@gmail.com> ha scritto:
>>>>>> >
>>>>>> >
>>>>>> >
>>>>>> > On Thu, 26 Mar 2020 at 22:39, Joel Wir=C4=81mu Pauling <
>>>>>> joel@aenertia.net> wrote:
>>>>>> >>
>>>>>> >> Hi all,
>>>>>> >>
>>>>>> >> I received my ax89x yesterday and have added a stub wiki page for
>>>>>> it here:
>>>>>> >>
>>>>>> >> https://openwrt.org/toh/asus/rt-ax89x
>>>>>> >>
>>>>>> >> There is a published build chain for the device from ASUS - I
>>>>>> haven't tried compiling it.
>>>>>> >> I've done some preliminary poking and opened the case up - dumped
>>>>>> the bootlog.
>>>>>> >>
>>>>>> >> Very interesting device and likely a good target for 10Gbit and
>>>>>> Wifi6 work.
>>>>>> >
>>>>>> >
>>>>>> > Looks great, just that the price tag is painful.
>>>>>> > Its HK01 reference board based, a lot of stuff has been upstreamed
>>>>>> but a whole more is missing for IPQ807x upstream.
>>>>>> >>
>>>>>> >>
>>>>>> >>
>>>>>> >> -Joel
>>>>>> >> _______________________________________________
>>>>>> >> openwrt-devel mailing list
>>>>>> >> openwrt-devel@lists.openwrt.org
>>>>>> >> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>>>>> >
>>>>>> > _______________________________________________
>>>>>> > openwrt-devel mailing list
>>>>>> > openwrt-devel@lists.openwrt.org
>>>>>> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>>>>>
>>>>>

--000000000000503d6805a27fcc07
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">So update on the rt-ax89x;</div><div class=3D"gmail_default" st=
yle=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_defaul=
t" style=3D"font-family:verdana,sans-serif">I have successfully managed to =
compile using the ASUSwrt build chain and load a usable firmware (well if y=
ou can call asuswrt usable; it&#39;s horrific when it comes to how service =
construct flow is setup, i can&#39;t believe the junk being shipped on othe=
rwise nice platforms...)</div><div class=3D"gmail_default" style=3D"font-fa=
mily:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"fo=
nt-family:verdana,sans-serif">I have also figured out the debrick procedure=
 ; uboot on the device DOES accept tftp in recovery mode. Have added notes =
to the wiki; reposted here:</div><div class=3D"gmail_default" style=3D"font=
-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D=
"font-family:verdana,sans-serif"><p>
Method:
</p>
<ol><li class=3D"gmail-level1"><div class=3D"gmail-li"> Setup interface on =
Host PC with ip <a href=3D"http://192.168.50.75/24">192.168.50.75/24</a> (n=
ot the Router will ONLY accept tftp put over this <abbr title=3D"Internet P=
rotocol">IP</abbr>) ; $ip a a <a href=3D"http://192.168.50.75/24">192.168.5=
0.75/24</a> dev &lt;NICDEV&gt;</div>
</li><li class=3D"gmail-level1"><div class=3D"gmail-li"> The HostNIC and re=
covery is performed ONLY over the 1G <abbr title=3D"Wide Area Network">WAN<=
/abbr> port NIC (this is the &#39;blue&#39;) NIC port next to the 10G Coppe=
r port.</div>
</li><li class=3D"gmail-level1"><div class=3D"gmail-li"> Find valid recover=
y .trx </div>
</li><li class=3D"gmail-level1"><div class=3D"gmail-li"> Run tftp to 192.16=
8.50.1 ; $tftp 192.168.50.1</div>
</li><li class=3D"gmail-level1"><div class=3D"gmail-li"> Unplug DC barrel j=
ack whilst holding down the reset switch with a pointy thing</div>
</li><li class=3D"gmail-level1"><div class=3D"gmail-li"> Leave Power Button=
 Depressed(on)</div>
</li><li class=3D"gmail-level1"><div class=3D"gmail-li"> Replug DC barrel j=
ack whilst still holding reset switch with a pointy thing ; release after f=
irst LED indication</div>
</li><li class=3D"gmail-level1"><div class=3D"gmail-li"> Power LED will fla=
sh slowly</div>
</li><li class=3D"gmail-level1"><div class=3D"gmail-li"> Use <abbr title=3D=
"Trivial File Transfer Protocol">TFTP</abbr>
 client to put target firmware in bin mode; set trace to show progess;=20
$tftp&gt;trace ; $tftp&gt;bin; $tftp&gt;put &lt;validfile&gt;.trx</div>
</li><li class=3D"gmail-level1"><div class=3D"gmail-li"> Trace will show tr=
ansfer ; wait for router to reboot.</div></li></ol><div><br></div><div>-Joe=
l<br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Sat, 28 Mar 2020 at 00:20, Robert Marko &lt;<a href=3D"=
mailto:robimarko@gmail.com">robimarko@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D=
"ltr"><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Fri, 27 Mar 2020 at 04:03, Joel Wir=C4=81mu Pauling &lt;<a hre=
f=3D"mailto:joel@aenertia.net" target=3D"_blank">joel@aenertia.net</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"auto">Xiaomi ax3600 has Qualcomm radios right?</div></blockquote><div>Y=
eah, its QCA8071A based.</div><div>But I can&#39;t find anywhere to get one=
 in EU and there is no GPL released.</div><div>Xiaomi really doesn&#39;t ca=
re about respecting GPL on their routers.</div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, 27 Mar 2020, 11:21 Robert Marko, &lt;<a href=3D"mai=
lto:robimarko@gmail.com" target=3D"_blank">robimarko@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Thu, 26 Mar 2020 at 23:11, Joel Wir=C4=81mu Pau=
ling &lt;<a href=3D"mailto:joel@aenertia.net" rel=3D"noreferrer" target=3D"=
_blank">joel@aenertia.net</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr"><div style=3D"font-family:verdana=
,sans-serif">Considering that there are a heap of lesser boxes from the lik=
es of Cisco/Aruba/Dlink/Asus themselves that are far inferior selling well =
above the 1500$ mark.<span style=3D"font-family:Arial,Helvetica,sans-serif"=
>=C2=A0</span></div></div></blockquote><div>I dont take Cisco and Aruba pri=
ces seriously.=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div style=3D"font-family:verdana,sans-serif"></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fr=
i, 27 Mar 2020 at 11:09, Joel Wir=C4=81mu Pauling &lt;<a href=3D"mailto:joe=
l@aenertia.net" rel=3D"noreferrer" target=3D"_blank">joel@aenertia.net</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div style=3D"font-family:verdana,sans-serif">It&#39;s 800$NZD =
not sure of what the conversion is. <br></div><div style=3D"font-family:ver=
dana,sans-serif"><br></div><div style=3D"font-family:verdana,sans-serif">BU=
T</div><div style=3D"font-family:verdana,sans-serif"><br></div><div style=
=3D"font-family:verdana,sans-serif">It&#39;s got Dual 10Gbit ports ; so if =
you factor going the DIY route on x86 boxes (which is what I have been forc=
ed to do for 10G capable for the last few years), Power consumption, and wi=
fi6 - it&#39;s actually not an unreasonable price point for what you get.</=
div></div></blockquote></div></blockquote><div>Its roughly 400EUR, a lot fo=
r a consumer device.</div><div>Its a good device, but for development, it&#=
39;s too expensive since there is a chance of bricking it.</div><div>I am w=
aiting for a cheap(100-ish EUR) IPQ807x board since I don&#39;t see getting=
 a test one at work for a while and I cant afford 300+ EUR myself.</div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"gmail_quote"><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div styl=
e=3D"font-family:verdana,sans-serif"><br></div><div style=3D"font-family:ve=
rdana,sans-serif"><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, 27 Mar 2020 at 10:45, Ansuel Smith &l=
t;<a href=3D"mailto:ansuelsmth@gmail.com" rel=3D"noreferrer" target=3D"_bla=
nk">ansuelsmth@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">400=E2=82=AC for a router... little too much for no=
w... at least the firmware<br>
is openwrt based so ASUS should provide GPL.<br>
<br>
Il giorno gio 26 mar 2020 alle ore 22:42 Robert Marko<br>
&lt;<a href=3D"mailto:robimarko@gmail.com" rel=3D"noreferrer" target=3D"_bl=
ank">robimarko@gmail.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Thu, 26 Mar 2020 at 22:39, Joel Wir=C4=81mu Pauling &lt;<a href=3D"=
mailto:joel@aenertia.net" rel=3D"noreferrer" target=3D"_blank">joel@aenerti=
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
&gt;&gt; <a href=3D"mailto:openwrt-devel@lists.openwrt.org" rel=3D"noreferr=
er" target=3D"_blank">openwrt-devel@lists.openwrt.org</a><br>
&gt;&gt; <a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-deve=
l" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.openwrt.or=
g/mailman/listinfo/openwrt-devel</a><br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; openwrt-devel mailing list<br>
&gt; <a href=3D"mailto:openwrt-devel@lists.openwrt.org" rel=3D"noreferrer" =
target=3D"_blank">openwrt-devel@lists.openwrt.org</a><br>
&gt; <a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://lists.openwrt.org/ma=
ilman/listinfo/openwrt-devel</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>

--000000000000503d6805a27fcc07--


--===============4362969791067210908==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4362969791067210908==--

