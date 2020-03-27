Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0BE3195629
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Mar 2020 12:20:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y8zNnzRHuWME8DtHlVxIt8kzAACwceOSsWdVDDsvitc=; b=YQu6FgCR4HcqMFakTDjxUXVVr
	r+tub4nB1Mr5ReaybQcnq7yOXmr1JPrkzwUNek5km0HTxfNTgmXY1+dpLyPvrz0z/KZa65hWaLUGi
	XiMLzL67mAoeWpAX59i7Iu9jtKI5lheTMjgi35rx2SpdVvmFb9565oZXsCHbI2RNRnA1XxREY8XHW
	3gxK45m6VhmhlqUNSREQ++ecwoFh6P9nR7vIoN/SRBjvfmGkV8UM7Uy92wWSOIs9CGVarLTwVEAjL
	xR59O2Y9jlQSZEMMkhc5yMiWvIVyhBOXet0Vgk099LRi5LZyESpekQdDJ23YHjsvi3ewX7dUY+rl1
	205duPkfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHn2k-0000Yq-5H; Fri, 27 Mar 2020 11:20:54 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHn2e-0000XC-10
 for openwrt-devel@lists.openwrt.org; Fri, 27 Mar 2020 11:20:49 +0000
Received: by mail-qk1-x72d.google.com with SMTP id x3so10322078qki.4
 for <openwrt-devel@lists.openwrt.org>; Fri, 27 Mar 2020 04:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mKnilx7thRbbJnzUlr2qfhEfoIXm5BGJKD70i7w0wOY=;
 b=WDcFvshLqs2YbiPtn8RiwcKcpbmErd7xvlWk1J8nyeXMrzkqzRCSOMCkxcCkVPm3UD
 5K1eXZz/OgWXAh7ugxfWyCkcwbJBRrhWymApoxgj2qHoX7DAR49/mik9xRGWrwz1tQ1W
 quoZjo02mCoEA4LB+j4+sr18kTPqmbTojX5VFfCkjTfWfMsJz/KZNdWF1N6X9ZFk3klz
 IXbc7ZRqUJQgMa5KWH8YKfujMVoHXoFF3wcDG/8iDReemya0maIKsDqm8bdQ0H/6Rc1l
 jRA7n8kT4v6kguO+DEltmBeRkYTIrV6VH6UhhUcoTDtqKDlF+E5hzm2u8uDuLfyk232b
 WdNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mKnilx7thRbbJnzUlr2qfhEfoIXm5BGJKD70i7w0wOY=;
 b=aLytUTafwxpy4TTe4Y2dWnivwywbRpT7cU4qrTQpLone0pbHmhkxuD0RE8TE0WO8/r
 r0rlBR71Kb7VSyRcd7OPyne/ZXWYhy4JQ3RReOBXlzW+lfSkOOltNVLZ8dXDJlgjbjKT
 9jILKa2/HmOSVzVxbOI5ZveenO+w5Ktdksj4Tx9Ry6BMfk3EXtCenPIAf9fwPEVoWMgB
 DyDmAlJlEtAiuOeTbKSRDoLlLTLRp26Jvf0wSoSQQKcl3JbcnAT68EjDTi11wtJ4upwO
 l5ff4+rFBg1LT8TQc7XTx/QLF+Y3VvbpW761V50BHcyHzZ2larh98ShDfJXQc9AMdZdZ
 kA2A==
X-Gm-Message-State: ANhLgQ0xX1Qs2t+7AyVm7TlICPoT1i9Nr/dMa2Hpe1GGb0ezep+SA0tV
 DTsd3B/Wld6Tkv3sZtKvoZ7H5Wn9RntC7TFsdZM=
X-Google-Smtp-Source: ADFU+vvwAgc3zSKI7wLdNGKFyg3jQhCuPegx9vlkKLBDfiaCn22QpEdcJJ24n7iS6wZZENj0f4vgWeJpOSSd0BhXqoE=
X-Received: by 2002:a37:b17:: with SMTP id 23mr12693892qkl.136.1585308046563; 
 Fri, 27 Mar 2020 04:20:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAKiAkGSCYNc7HjvdybDNEhq6ryz0KHk6VTppsFLayqPNyKZcWw@mail.gmail.com>
 <CAOX2RU5tXCkq=zhdi_CgP-JVdVS6hN2b1O6Q46vXSd7nGhKpNQ@mail.gmail.com>
 <CA+_ehUyRFpGPZ_wSF_5146HE3KjfC0Og_yFaWRQ=PaZy7xP4_A@mail.gmail.com>
 <CAKiAkGQ86KBsO7HEzd3FzNWxG19Yj7ROaupAAe-7pPyyyHMh9w@mail.gmail.com>
 <CAKiAkGT-R-H8uf81_Y2gxjX7=HKdEKcba1-26pnHVqnF4-P03w@mail.gmail.com>
 <CAOX2RU5pnA4Znyhe9=+9Xv0m9Kc4OO3dNr6B1-Rgi16ymaayUg@mail.gmail.com>
 <CAKiAkGS-O09EnhrKS377rPqf_JDWnhuPy60ZoQw5mxfEo5onbg@mail.gmail.com>
In-Reply-To: <CAKiAkGS-O09EnhrKS377rPqf_JDWnhuPy60ZoQw5mxfEo5onbg@mail.gmail.com>
From: Robert Marko <robimarko@gmail.com>
Date: Fri, 27 Mar 2020 12:20:35 +0100
Message-ID: <CAOX2RU5dsN-W1h87ekzmYMVv0+d57ogxSeKhBz9rnheiQVBjGQ@mail.gmail.com>
To: =?UTF-8?Q?Joel_Wir=C4=81mu_Pauling?= <joel@aenertia.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_042048_100680_3B8F1BCA 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:72d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robimarko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: multipart/mixed; boundary="===============7647044510408782111=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7647044510408782111==
Content-Type: multipart/alternative; boundary="000000000000f99f3505a1d44a37"

--000000000000f99f3505a1d44a37
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 27 Mar 2020 at 04:03, Joel Wir=C4=81mu Pauling <joel@aenertia.net> =
wrote:

> Xiaomi ax3600 has Qualcomm radios right?
>
Yeah, its QCA8071A based.
But I can't find anywhere to get one in EU and there is no GPL released.
Xiaomi really doesn't care about respecting GPL on their routers.

>
> On Fri, 27 Mar 2020, 11:21 Robert Marko, <robimarko@gmail.com> wrote:
>
>>
>>
>> On Thu, 26 Mar 2020 at 23:11, Joel Wir=C4=81mu Pauling <joel@aenertia.ne=
t>
>> wrote:
>>
>>> Considering that there are a heap of lesser boxes from the likes of
>>> Cisco/Aruba/Dlink/Asus themselves that are far inferior selling well ab=
ove
>>> the 1500$ mark.
>>>
>> I dont take Cisco and Aruba prices seriously.
>>
>>>
>>> On Fri, 27 Mar 2020 at 11:09, Joel Wir=C4=81mu Pauling <joel@aenertia.n=
et>
>>> wrote:
>>>
>>>> It's 800$NZD not sure of what the conversion is.
>>>>
>>>> BUT
>>>>
>>>> It's got Dual 10Gbit ports ; so if you factor going the DIY route on
>>>> x86 boxes (which is what I have been forced to do for 10G capable for =
the
>>>> last few years), Power consumption, and wifi6 - it's actually not an
>>>> unreasonable price point for what you get.
>>>>
>>> Its roughly 400EUR, a lot for a consumer device.
>> Its a good device, but for development, it's too expensive since there i=
s
>> a chance of bricking it.
>> I am waiting for a cheap(100-ish EUR) IPQ807x board since I don't see
>> getting a test one at work for a while and I cant afford 300+ EUR myself=
.
>>
>>>
>>>>
>>>>
>>>> On Fri, 27 Mar 2020 at 10:45, Ansuel Smith <ansuelsmth@gmail.com>
>>>> wrote:
>>>>
>>>>> 400=E2=82=AC for a router... little too much for now... at least the =
firmware
>>>>> is openwrt based so ASUS should provide GPL.
>>>>>
>>>>> Il giorno gio 26 mar 2020 alle ore 22:42 Robert Marko
>>>>> <robimarko@gmail.com> ha scritto:
>>>>> >
>>>>> >
>>>>> >
>>>>> > On Thu, 26 Mar 2020 at 22:39, Joel Wir=C4=81mu Pauling <joel@aenert=
ia.net>
>>>>> wrote:
>>>>> >>
>>>>> >> Hi all,
>>>>> >>
>>>>> >> I received my ax89x yesterday and have added a stub wiki page for
>>>>> it here:
>>>>> >>
>>>>> >> https://openwrt.org/toh/asus/rt-ax89x
>>>>> >>
>>>>> >> There is a published build chain for the device from ASUS - I
>>>>> haven't tried compiling it.
>>>>> >> I've done some preliminary poking and opened the case up - dumped
>>>>> the bootlog.
>>>>> >>
>>>>> >> Very interesting device and likely a good target for 10Gbit and
>>>>> Wifi6 work.
>>>>> >
>>>>> >
>>>>> > Looks great, just that the price tag is painful.
>>>>> > Its HK01 reference board based, a lot of stuff has been upstreamed
>>>>> but a whole more is missing for IPQ807x upstream.
>>>>> >>
>>>>> >>
>>>>> >>
>>>>> >> -Joel
>>>>> >> _______________________________________________
>>>>> >> openwrt-devel mailing list
>>>>> >> openwrt-devel@lists.openwrt.org
>>>>> >> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>>>> >
>>>>> > _______________________________________________
>>>>> > openwrt-devel mailing list
>>>>> > openwrt-devel@lists.openwrt.org
>>>>> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>>>>
>>>>

--000000000000f99f3505a1d44a37
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, 27 Mar 2020 at 04:03, Joel Wi=
r=C4=81mu Pauling &lt;<a href=3D"mailto:joel@aenertia.net">joel@aenertia.ne=
t</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"auto">Xiaomi ax3600 has Qualcomm radios right?</div></blockquo=
te><div>Yeah, its QCA8071A based.</div><div>But I can&#39;t find anywhere t=
o get one in EU and there is no GPL released.</div><div>Xiaomi really doesn=
&#39;t care about respecting GPL on their routers.</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Fri, 27 Mar 2020, 11:21 Robert Marko, &lt;<a =
href=3D"mailto:robimarko@gmail.com" target=3D"_blank">robimarko@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Thu, 26 Mar 2020 at 23:11, Joel Wir=
=C4=81mu Pauling &lt;<a href=3D"mailto:joel@aenertia.net" rel=3D"noreferrer=
" target=3D"_blank">joel@aenertia.net</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div style=3D"font-fa=
mily:verdana,sans-serif">Considering that there are a heap of lesser boxes =
from the likes of Cisco/Aruba/Dlink/Asus themselves that are far inferior s=
elling well above the 1500$ mark.<span style=3D"font-family:Arial,Helvetica=
,sans-serif">=C2=A0</span></div></div></blockquote><div>I dont take Cisco a=
nd Aruba prices seriously.=C2=A0</div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><div style=3D"font-family:verdana,sans-serif"=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Fri, 27 Mar 2020 at 11:09, Joel Wir=C4=81mu Pauling &lt;<a href=
=3D"mailto:joel@aenertia.net" rel=3D"noreferrer" target=3D"_blank">joel@aen=
ertia.net</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div style=3D"font-family:verdana,sans-serif">I=
t&#39;s 800$NZD not sure of what the conversion is. <br></div><div style=3D=
"font-family:verdana,sans-serif"><br></div><div style=3D"font-family:verdan=
a,sans-serif">BUT</div><div style=3D"font-family:verdana,sans-serif"><br></=
div><div style=3D"font-family:verdana,sans-serif">It&#39;s got Dual 10Gbit =
ports ; so if you factor going the DIY route on x86 boxes (which is what I =
have been forced to do for 10G capable for the last few years), Power consu=
mption, and wifi6 - it&#39;s actually not an unreasonable price point for w=
hat you get.</div></div></blockquote></div></blockquote><div>Its roughly 40=
0EUR, a lot for a consumer device.</div><div>Its a good device, but for dev=
elopment, it&#39;s too expensive since there is a chance of bricking it.</d=
iv><div>I am waiting for a cheap(100-ish EUR) IPQ807x board since I don&#39=
;t see getting a test one at work for a while and I cant afford 300+ EUR my=
self.</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"=
gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div style=3D"font-family:verdana,sans-serif"><br></div><div style=3D"=
font-family:verdana,sans-serif"><br></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 27 Mar 2020 at 10:45, Ans=
uel Smith &lt;<a href=3D"mailto:ansuelsmth@gmail.com" rel=3D"noreferrer" ta=
rget=3D"_blank">ansuelsmth@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">400=E2=82=AC for a router... little too=
 much for now... at least the firmware<br>
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

--000000000000f99f3505a1d44a37--


--===============7647044510408782111==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7647044510408782111==--

