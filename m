Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0D31AF648
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Apr 2020 04:22:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tUb6BZPH1e+T+klsTqdrE5RxlLziDD5CB0qsq6kbROQ=; b=Uh3GHfuaVWD1VwhaEE1xfjzkL
	x4TVhN0S+HRgS7Vdpq7sQnOO1/tmj/Lfitecv+F/m2bikxTP6p7SsX292RtJigD7PFPsegmUmsWiw
	AgQ2uKGSeGXXIZoqFnplzCS5H541c4XIaWtnOKexJgrx0UoTdeh/uCOLlEUo6EkqcVlqQtoxn3SIp
	QxfqVOyy3OuqRwAQcm8E9jsuo20K7AlezfDh8Xp1geloDioCeThpf8NfWVWMgpsS5tZb5sXQ1dYSc
	5Dq0toc6mM5eSPintSMjUxLLPY9tv4Nt9HzAhQRzoKAiUKQDPv5a5tcggSpsUWyVNTa/qE2qQZfUR
	Bek81NfTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPzbK-0008LI-Ld; Sun, 19 Apr 2020 02:22:30 +0000
Received: from mail-vs1-xe31.google.com ([2607:f8b0:4864:20::e31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPzb5-0008Kr-M3
 for openwrt-devel@lists.openwrt.org; Sun, 19 Apr 2020 02:22:23 +0000
Received: by mail-vs1-xe31.google.com with SMTP id 184so3763764vsu.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 18 Apr 2020 19:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aenertia.net; s=dkimaenertianet;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N9sj1SUZvEyPOkKAPheObnq8M/+DlPj+mp3C9dybeCY=;
 b=XWeLQ4I+nRjXchgtFwRo6ioKUItXgb78Ho4vE2OKX8nAs0BtNEAdtt0Lt0/jrtA4/C
 zhJ90rzhiv6NS3kH/+cnaKE0GBuw4UxUHvK1L43XbLUxUdl/jUvreyLcf5h1VKJJmut7
 ocmtekwPDtX8j9rtqdb/KXmIVJfghyBbYtxdM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N9sj1SUZvEyPOkKAPheObnq8M/+DlPj+mp3C9dybeCY=;
 b=C2g2D1vBWsnMXLELw3tvAZCorMEzA9Ax3HFLuCJp8WsMEG4t1LR5d0dY/rG0kGHBT2
 fZYrQUwKZ/TNstIkAF7WGEzmMuSFxxHlEAQm42Ik5FfSSh6Y1yegFW1HEothLuk8HZ9r
 mUcnLxHcilGoM7+jw+LVkujo3uZYPxsgbq+ELg38UvYx6BofjVXKgpgjYXW0SDLc/+f5
 s82bvRm4sRLBBbtUz+nsP71rcTGMl4XZk4ZaAn2TaGa5VvGzcR2m3hpm8e2cxY7WM1dH
 XycoqokEnJN4pm8JxGG3u0aYPeK8bkDjrvlh4YtIaoCz6tHJbW/h11XXwMkym69FI18s
 hAyg==
X-Gm-Message-State: AGi0PubeFPuKIfU64pwKuJvDapMXOH3VgPhunkbZoMbzK/oxTXdQOGLb
 +bbqzw1MrIp2jYM1Hix+hO+oedaQF5JNUFIgLUIY1Q==
X-Google-Smtp-Source: APiQypIR+oob3xMvVrvA+j/MO8cf7T3qeckI/BplLhL1b5FGDgEf93r1ETZCRGlfDIq62JBjyD7RaehDenVcx9xONtU=
X-Received: by 2002:a67:ee83:: with SMTP id n3mr7478114vsp.0.1587262932555;
 Sat, 18 Apr 2020 19:22:12 -0700 (PDT)
MIME-Version: 1.0
References: <22123491-a7af-9ece-5340-a522580c67e0@gmail.com>
 <CAKiAkGTf01YsVToW=twNFDZzXSbxxuU4mOr=_9YYjZ1u3MHFqQ@mail.gmail.com>
 <CACfEFw_sz8C_bWig8cj79EAcpSoaK+yNcq+GfrA19+Hf8t6_Dw@mail.gmail.com>
In-Reply-To: <CACfEFw_sz8C_bWig8cj79EAcpSoaK+yNcq+GfrA19+Hf8t6_Dw@mail.gmail.com>
From: =?UTF-8?Q?Joel_Wir=C4=81mu_Pauling?= <joel@aenertia.net>
Date: Sun, 19 Apr 2020 14:22:01 +1200
Message-ID: <CAKiAkGSP7S2RHPi3jPPnffhgY9o9fThik4uBhBqSQfMRGKkdrA@mail.gmail.com>
To: Wes Turner <wes.turner@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_192216_106075_BADF319A 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e31 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Possible security issue
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
Cc: e9hack <e9hack@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============5337182584347936532=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5337182584347936532==
Content-Type: multipart/alternative; boundary="00000000000042adc805a39b73f7"

--00000000000042adc805a39b73f7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm sorry for wading into this. As with any security related discussion
strawpeople can be made to support any particular thread pulling into
infinity.

Would I love to see namespaces used as part of the base Openwrt
architecture; absolutely. It's been discussed in the past; routing in
particular would benefit immensely from this ; use of different routing
table ID's is a step towards that, but complications like passing device
id's in and out of namespaces however for the switch side of things is
problematic and adds additional overhead as will it introduce issues at the
expense of separation and flexibility.

That potentially could mitigate some of your concerns, but I feel the
preposition for me is openwrt is not multi-user by default OOTB for most
(if not all) targets; and if you want it to be you can.

So fiddling inode bitmasks is not addressing anything IMNSHO because of
that fact.






On Sat, 18 Apr 2020 at 00:50, Wes Turner <wes.turner@gmail.com> wrote:

> From a least privileges perspective:
>
> - chmod o-rwx /var/run/hostapd-phyX.conf
> - chmod o-x uci # setfacl?
>
> Compromise of a service running as a different user should not result in
> disclosure of sensitive keys only necessary for different services.
>
> https://openwrt.org/docs/guide-user/security/security-features mentions
> procd jail / chroot?
>
> AFAIU, LXC is not available in the default kernel builds in any router?
> LXC would be an additional layer of defenses over and above chroot, which
> isn't seccomp
>
> On Fri, Apr 17, 2020, 5:13 AM Joel Wir=C4=81mu Pauling <joel@aenertia.net=
>
> wrote:
>
>> No. If you have physical access to the node and/or a valid login as Admi=
n
>> then any form of PSK is vulnerable.
>>
>> If you are concerned about PSK's being exposed then you have the option
>> to run 802.1x auth and issue issues tokens out of radius/IDM that is
>> secured elsewhere than on the AP itself.
>>
>> On Fri, 17 Apr 2020 at 20:16, e9hack <e9hack@gmail.com> wrote:
>>
>>> Hi,
>>>
>>> the configuration files for hostapd (/var/run/hostapd-phyX.conf) are
>>> readable for everyone. This means everyone can read the wifi passwords.=
 If
>>> a non privileged user calls 'uci show wireless', he will also get all w=
ifi
>>> passwords. This possible e.g. for user nobody and dnsmasq.
>>>
>>> Is this a a security issue?
>>>
>>> Regards,
>>> Hartmut
>>>
>>> _______________________________________________
>>> openwrt-devel mailing list
>>> openwrt-devel@lists.openwrt.org
>>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>
>

--00000000000042adc805a39b73f7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">I&#39;m sorry for wading into this. As with any security relate=
d discussion strawpeople can be made to support any particular thread pulli=
ng into infinity. <br></div><div class=3D"gmail_default" style=3D"font-fami=
ly:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font=
-family:verdana,sans-serif">Would I love to see namespaces used as part of =
the base Openwrt architecture; absolutely. It&#39;s been discussed in the p=
ast; routing in particular would benefit immensely from this ; use of diffe=
rent routing table ID&#39;s is a step towards that, but complications like =
passing device id&#39;s in and out of namespaces however for the switch sid=
e of things is problematic and adds additional overhead as will it introduc=
e issues at the expense of separation and flexibility.<br></div><div class=
=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><div =
class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">That poten=
tially could mitigate some of your concerns, but I feel the preposition for=
 me is openwrt is not multi-user by default OOTB for most (if not all) targ=
ets; and if you want it to be you can.<br></div><div class=3D"gmail_default=
" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_de=
fault" style=3D"font-family:verdana,sans-serif">So fiddling inode bitmasks =
is not addressing anything IMNSHO because of that fact.<br></div><div class=
=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><div =
class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div>=
<div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br><=
/div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">=
<br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, 18 Apr 2020 at 00:50, Wes Turner &lt;<a href=3D"mai=
lto:wes.turner@gmail.com">wes.turner@gmail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto"><div>From a=
 least privileges perspective:</div><div dir=3D"auto"><br></div><div dir=3D=
"auto">- chmod o-rwx /var/run/hostapd-phyX.conf</div><div dir=3D"auto">- ch=
mod o-x uci # setfacl?=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">Compromise of a service running as a different user should not result =
in disclosure of sensitive keys only necessary for different services.=C2=
=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto"><a href=3D"https://o=
penwrt.org/docs/guide-user/security/security-features" target=3D"_blank">ht=
tps://openwrt.org/docs/guide-user/security/security-features</a> mentions p=
rocd jail / chroot?<br></div><div dir=3D"auto"><br></div><div dir=3D"auto">=
AFAIU, LXC is not available in the default kernel builds in any router? LXC=
 would be an additional layer of defenses over and above chroot, which isn&=
#39;t seccomp</div><div dir=3D"auto"><br><div class=3D"gmail_quote" dir=3D"=
auto"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 17, 2020, 5:13 AM J=
oel Wir=C4=81mu Pauling &lt;<a href=3D"mailto:joel@aenertia.net" target=3D"=
_blank">joel@aenertia.net</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" styl=
e=3D"font-family:verdana,sans-serif">No. If you have physical access to the=
 node and/or a valid login as Admin then any form of PSK is vulnerable. <br=
></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif=
"><br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-=
serif">If you are concerned about PSK&#39;s being exposed then you have the=
 option to run 802.1x auth and issue issues tokens out of radius/IDM that i=
s secured elsewhere than on the AP itself.=C2=A0<br></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 17 Apr 20=
20 at 20:16, e9hack &lt;<a href=3D"mailto:e9hack@gmail.com" rel=3D"noreferr=
er" target=3D"_blank">e9hack@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
the configuration files for hostapd (/var/run/hostapd-phyX.conf) are readab=
le for everyone. This means everyone can read the wifi passwords. If a non =
privileged user calls &#39;uci show wireless&#39;, he will also get all wif=
i passwords. This possible e.g. for user nobody and dnsmasq.<br>
<br>
Is this a a security issue?<br>
<br>
Regards,<br>
Hartmut<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" rel=3D"noreferrer" targe=
t=3D"_blank">openwrt-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman=
/listinfo/openwrt-devel</a><br>
</blockquote></div>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" rel=3D"noreferrer" targe=
t=3D"_blank">openwrt-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman=
/listinfo/openwrt-devel</a><br>
</blockquote></div></div></div>
</blockquote></div>

--00000000000042adc805a39b73f7--


--===============5337182584347936532==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5337182584347936532==--

