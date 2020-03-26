Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C203194B51
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 23:11:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TyUoL2qITQ7bokgs27WuPw53rWDoTN1ueGl8GjHaajU=; b=gSPKJ/Bmi0RFR2TV97h3IXETq
	tywxRb3I1BVg4k0ly65HomRjSxOSkr9oVAcSv2RGewutGTm5RshINiITLtlfLtzYJnpJKsW6GNVQc
	aDzhmal9wRmkCyMlUKJy204Xe/qebNDU11m4DNVZpXpwuwwoc6750GoCrco8d4ZH95s3yha9I5BCk
	99FR+dleXwvHNtFUO3LSvCeZtdeT98WEEMjGp/OMGnz6QsyrIcMcD3LRcwhiML7hmhnwykI/ZZGca
	y2Dy6SV5ahtMTwewbLkT6/yd4f11oGFfVuANYfbhC39PoGq5W8sJ8cw1BsUxnIHHg4X0nVjsG0puG
	sDrwvtbgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHaic-0000Nz-6V; Thu, 26 Mar 2020 22:11:18 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHaiR-0000NK-LU
 for openwrt-devel@lists.openwrt.org; Thu, 26 Mar 2020 22:11:13 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id c13so256905ybp.9
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Mar 2020 15:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aenertia.net; s=dkimaenertianet;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T1G+it5UBtZL6DUHRz1PcqclL46H+bsgPy2TsDcyT60=;
 b=OtLEgITqGCtGNob25Lc5mzVSgvtFBTlOQX5jvURprUGvDD7w9JrvPHWBTEHcA70wpj
 tNs8pp0jNw/25NY00NwrsBwh56ZnjOm3qw6vhp51t7eEHuIKcJ33FCXyavwtdypC2wwP
 4opGDWxOeJsaxX/nezguggn/3qWqWjBryWeBo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T1G+it5UBtZL6DUHRz1PcqclL46H+bsgPy2TsDcyT60=;
 b=G5SHEG24bjOu4a8Ir/jzJeM/aCjuBbv/OnqZop9YeBAZfb0KDexzrGLmPp+hBeallv
 7R0GWm+OqdtSWbUtZ8Ghm3czXi4y24zCDxcdWzMmbr/dPgUSV7BLyZDrR99Vz3Y8m+vp
 k/1XM/ljM7AKr1Kx4CFlya9fwJPCvPSxf/cuSxGZC47CbPfXFzDXMiVs0tBmP4pOlClY
 qkDQZNdVxJTcpME0Dy0PtFyFrbTp1kqtoH9wIs2B5IsWoM3UNGLcT1mmYW+iHE8qa96l
 x8iRqlHK6zfGc8FFpGRJgcY6UHExnM3FERFWRoyBOgyKmYa/O3qP5EaNHPmYv80mwgS1
 bQyw==
X-Gm-Message-State: ANhLgQ3ON/iCBvdhX5YEY8Ngqidexg84vbnKNi4CQ/lR+EwcMEjzKdni
 qyIF+Upm5SfceQtlrgq9WbKaVkWNWPT39OcLpCk2fL/A
X-Google-Smtp-Source: ADFU+vsB2HaLqpKG8u3AmSJpcuRzuD2a9bxOOyRIpZofDkGElSwQVEM4XruJeaHZrsyJjTsBEe88Auev9+CQoLlzb0w=
X-Received: by 2002:a25:2d41:: with SMTP id s1mr328841ybe.61.1585260666611;
 Thu, 26 Mar 2020 15:11:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAKiAkGSCYNc7HjvdybDNEhq6ryz0KHk6VTppsFLayqPNyKZcWw@mail.gmail.com>
 <CAOX2RU5tXCkq=zhdi_CgP-JVdVS6hN2b1O6Q46vXSd7nGhKpNQ@mail.gmail.com>
 <CA+_ehUyRFpGPZ_wSF_5146HE3KjfC0Og_yFaWRQ=PaZy7xP4_A@mail.gmail.com>
 <CAKiAkGQ86KBsO7HEzd3FzNWxG19Yj7ROaupAAe-7pPyyyHMh9w@mail.gmail.com>
In-Reply-To: <CAKiAkGQ86KBsO7HEzd3FzNWxG19Yj7ROaupAAe-7pPyyyHMh9w@mail.gmail.com>
From: =?UTF-8?Q?Joel_Wir=C4=81mu_Pauling?= <joel@aenertia.net>
Date: Fri, 27 Mar 2020 11:10:55 +1300
Message-ID: <CAKiAkGT-R-H8uf81_Y2gxjX7=HKdEKcba1-26pnHVqnF4-P03w@mail.gmail.com>
To: Ansuel Smith <ansuelsmth@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_151107_709087_2AE9EC9C 
X-CRM114-Status: GOOD (  13.19  )
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
 Robert Marko <robimarko@gmail.com>
Content-Type: multipart/mixed; boundary="===============8985510705759902305=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8985510705759902305==
Content-Type: multipart/alternative; boundary="000000000000e8fdc605a1c942ad"

--000000000000e8fdc605a1c942ad
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Considering that there are a heap of lesser boxes from the likes of
Cisco/Aruba/Dlink/Asus themselves that are far inferior selling well above
the 1500$ mark.

On Fri, 27 Mar 2020 at 11:09, Joel Wir=C4=81mu Pauling <joel@aenertia.net> =
wrote:

> It's 800$NZD not sure of what the conversion is.
>
> BUT
>
> It's got Dual 10Gbit ports ; so if you factor going the DIY route on x86
> boxes (which is what I have been forced to do for 10G capable for the las=
t
> few years), Power consumption, and wifi6 - it's actually not an
> unreasonable price point for what you get.
>
>
>
> On Fri, 27 Mar 2020 at 10:45, Ansuel Smith <ansuelsmth@gmail.com> wrote:
>
>> 400=E2=82=AC for a router... little too much for now... at least the fir=
mware
>> is openwrt based so ASUS should provide GPL.
>>
>> Il giorno gio 26 mar 2020 alle ore 22:42 Robert Marko
>> <robimarko@gmail.com> ha scritto:
>> >
>> >
>> >
>> > On Thu, 26 Mar 2020 at 22:39, Joel Wir=C4=81mu Pauling <joel@aenertia.=
net>
>> wrote:
>> >>
>> >> Hi all,
>> >>
>> >> I received my ax89x yesterday and have added a stub wiki page for it
>> here:
>> >>
>> >> https://openwrt.org/toh/asus/rt-ax89x
>> >>
>> >> There is a published build chain for the device from ASUS - I haven't
>> tried compiling it.
>> >> I've done some preliminary poking and opened the case up - dumped the
>> bootlog.
>> >>
>> >> Very interesting device and likely a good target for 10Gbit and Wifi6
>> work.
>> >
>> >
>> > Looks great, just that the price tag is painful.
>> > Its HK01 reference board based, a lot of stuff has been upstreamed but
>> a whole more is missing for IPQ807x upstream.
>> >>
>> >>
>> >>
>> >> -Joel
>> >> _______________________________________________
>> >> openwrt-devel mailing list
>> >> openwrt-devel@lists.openwrt.org
>> >> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>> >
>> > _______________________________________________
>> > openwrt-devel mailing list
>> > openwrt-devel@lists.openwrt.org
>> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>
>

--000000000000e8fdc605a1c942ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Considering that there are a heap of lesser boxes from the like=
s of Cisco/Aruba/Dlink/Asus themselves that are far inferior selling well a=
bove the 1500$ mark.<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, 27 Mar 2020 at 11:09, Joel Wir=C4=81m=
u Pauling &lt;<a href=3D"mailto:joel@aenertia.net">joel@aenertia.net</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif">It&#39;s 800$NZD not sure of what the conversion is. <br></div><div cl=
ass=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><d=
iv class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">BUT</di=
v><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br=
></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif=
">It&#39;s got Dual 10Gbit ports ; so if you factor going the DIY route on =
x86 boxes (which is what I have been forced to do for 10G capable for the l=
ast few years), Power consumption, and wifi6 - it&#39;s actually not an unr=
easonable price point for what you get.</div><div class=3D"gmail_default" s=
tyle=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_defau=
lt" style=3D"font-family:verdana,sans-serif"><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 27 Mar 2020 =
at 10:45, Ansuel Smith &lt;<a href=3D"mailto:ansuelsmth@gmail.com" target=
=3D"_blank">ansuelsmth@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">400=E2=82=AC for a router... little too mu=
ch for now... at least the firmware<br>
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

--000000000000e8fdc605a1c942ad--


--===============8985510705759902305==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8985510705759902305==--

