Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 171031A2B0C
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 23:23:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NRhQgh0eZbmagbBIqr6s95oqQ7jn6KuAY9areINToHg=; b=EP7aTwl5bM5HneDOGOijKYcA9
	0t3SgBhv3Cp8moDBJiWGyJylfLaFzfMQ9/noUd1Q3wdjNyCthjFtBIE7NeO6RK9bufCNSep56A+V+
	HuQlZtlKbfaZrqhNjOwwISPWduVvafE7+qFbPzboa1Zn/Byc+O9i1XheZpKvHFGMSl55zEFuBh6yZ
	FPmW2nWNGlgO2+7IA3cEIgDAueXxh1ZSLIdSnRinvdKtPE0R85UCR8nS2qXSU253MdP0pK7Pmh52i
	viWRvo20l4f/LVL6TNypVjZp+z50QbJ4DMMJbUsMI7vLtMRw/N9FDLbxb4c6aZQPGKAefjCKmsH+Z
	5KOwtrJ8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMIAM-0006kL-Nt; Wed, 08 Apr 2020 21:23:22 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMIAD-0006jh-HM
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 21:23:18 +0000
Received: by mail-yb1-xb36.google.com with SMTP id o70so4528658ybg.10
 for <openwrt-devel@lists.openwrt.org>; Wed, 08 Apr 2020 14:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aenertia.net; s=dkimaenertianet;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=81rT6OM3EHGfv/gZpFhiNRU1TcHgHmgV3Df2TOZWnTs=;
 b=Rhidp+I3KQrNrwO5n34jP1NX+flXGMO+5TEXymy7b+Y3XVBo+Zs8UA76hm35zWEp5I
 iZYbyEOOBtZg2b+MK5lvQVoK1sTewr//0ekLcWRWZTEUPWhWov+Qc9fQcX/tgVz61sTI
 +l7igJK1cpr1vtdhhZ6hoa/Tk3nk7VdMDamtE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=81rT6OM3EHGfv/gZpFhiNRU1TcHgHmgV3Df2TOZWnTs=;
 b=ObZ5CeNMa/yFdT5HHIPwCtSaO2ixQLEW4Ip6aS6+cT12FXUDSMVT5eSrqTvYIzdVp2
 Hf1WqzhInZ2fGbx8Wu3fiEBR+L8dDOE6IatKYQdWU1FLpD8bwVnm81yi52Gu2v/oncQU
 L0IfmnWe7iqmyfiRHXexfcLNKrgth7N9KH65JiNEfd45CZCq7AEqRXphCrxCf+JYi0gn
 sFqodnRYDIBZaftGqGh3DQZXaRPulJLE1IubPeivvIWdzSYl7aGiQud61Njo1muVoKQR
 26QRn81RhJLxDCoZLMJbQO7iSMF/4m7QbQOnVuytS9QmUCe7bHPaVDmTYfXoLsDSTh7J
 HKkw==
X-Gm-Message-State: AGi0PuZA4LIahA9BxigF/EAxziTwbLb5v5lMrbWZkwsQqx6SjsL4inJL
 EPCl6oynjpaFkwiJc0S1R4TRNFmUwfI3aXYw5GPKE6SCyaU=
X-Google-Smtp-Source: APiQypJXaOeesR8ZdAq49kuUYLcnKmUB0912v906eX89IPJ/Rf6dA8KiQtg9GPO36Y1TGaamMH49n9YyFgC03eXhKpw=
X-Received: by 2002:a25:5f0c:: with SMTP id t12mr14384339ybb.254.1586380990634; 
 Wed, 08 Apr 2020 14:23:10 -0700 (PDT)
MIME-Version: 1.0
References: <0953c8498417154e5590c80b3c6a29f4c4280de1.camel@aparcar.org>
In-Reply-To: <0953c8498417154e5590c80b3c6a29f4c4280de1.camel@aparcar.org>
From: =?UTF-8?Q?Joel_Wir=C4=81mu_Pauling?= <joel@aenertia.net>
Date: Thu, 9 Apr 2020 09:22:58 +1200
Message-ID: <CAKiAkGQf2b4CyP90oGPVxf0X7dP6aPgt5rZm-1nTYEstu9iXUA@mail.gmail.com>
To: Paul Spooren <mail@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_142313_709876_F4621999 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b36 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Configuration management for OpenWrt
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============6670101778429156370=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6670101778429156370==
Content-Type: multipart/alternative; boundary="0000000000006cf11c05a2ce1bbc"

--0000000000006cf11c05a2ce1bbc
Content-Type: text/plain; charset="UTF-8"

Ansible doesn't require or need python on targets. In fact it's one of it's
biggest selling points and why over a 3rd of modules are network device
centric.

There is a UCI module for openwrt:

https://github.com/lefant/ansible-openwrt-uci

I tend to redeploy images/snapshots to VM's and then run opkg via ansible
or scripts and copy over config files.

-Joel




On Thu, 9 Apr 2020 at 09:08, Paul Spooren <mail@aparcar.org> wrote:

> Hi all,
>
> I was wondering if there are some best practices for configuration
> management of OpenWrt devices. I understand that it is fairly easy to
> get/restore a backup of the etc/config folder, but though maybe there
> are some smarter ways.
>
> Ideally a local state (e.g. git repository) would deploy multiple
> devices and automatically update them via a command (or even cron).
>
> Other projects came up with solutions which seem to heavy for common
> WiFi routers. Ansible[0] is great and all, however requires plenty of
> Python to work conveniently. Then cloud-init[1] is Python as well, I
> think even heavier on the client side than Ansible and also doesn't
> seem to be the right use case.
>
> Some time ago I came up with a MAC based init system[2] but that's not
> really to keep things up to date.
>
> Last thing I know of is the approach to convert folders into opkg
> install-able packages[3], so whenever there is a new configuration all
> pre-configured routers would install it via opkg. However this would
> require an opkg cron on client device and building the config-packages
> appear to be quite some overhead. On the other side it handles
> authentication via usign keys.
>
> Anyway, please recommend me a better way which I'm not aware of!
>
> Best,
> Paul
>
> [0]: https://www.ansible.com/
> [1]: https://cloud-init.io/
> [2]: https://github.com/openwrt/packages/pull/6071
> [3]: https://github.com/libremesh/network-profiles-builder
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--0000000000006cf11c05a2ce1bbc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Ansible doesn&#39;t require or need python on targets. In fact =
it&#39;s one of it&#39;s biggest selling points and why over a 3rd of modul=
es are network device centric.</div><div class=3D"gmail_default" style=3D"f=
ont-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif">There is a UCI module for openwrt:</div=
><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br>=
</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"=
><a href=3D"https://github.com/lefant/ansible-openwrt-uci">https://github.c=
om/lefant/ansible-openwrt-uci</a></div><div class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" =
style=3D"font-family:verdana,sans-serif">I tend to redeploy images/snapshot=
s to VM&#39;s and then run opkg via ansible or scripts and copy over config=
 files.</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans=
-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:verdana=
,sans-serif">-Joel</div><div class=3D"gmail_default" style=3D"font-family:v=
erdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fam=
ily:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"fon=
t-family:verdana,sans-serif"><br></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 9 Apr 2020 at 09:08, Paul Sp=
ooren &lt;<a href=3D"mailto:mail@aparcar.org">mail@aparcar.org</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi all,<br>
<br>
I was wondering if there are some best practices for configuration<br>
management of OpenWrt devices. I understand that it is fairly easy to<br>
get/restore a backup of the etc/config folder, but though maybe there<br>
are some smarter ways.<br>
<br>
Ideally a local state (e.g. git repository) would deploy multiple<br>
devices and automatically update them via a command (or even cron).<br>
<br>
Other projects came up with solutions which seem to heavy for common<br>
WiFi routers. Ansible[0] is great and all, however requires plenty of<br>
Python to work conveniently. Then cloud-init[1] is Python as well, I<br>
think even heavier on the client side than Ansible and also doesn&#39;t<br>
seem to be the right use case.<br>
<br>
Some time ago I came up with a MAC based init system[2] but that&#39;s not<=
br>
really to keep things up to date.<br>
<br>
Last thing I know of is the approach to convert folders into opkg<br>
install-able packages[3], so whenever there is a new configuration all<br>
pre-configured routers would install it via opkg. However this would<br>
require an opkg cron on client device and building the config-packages<br>
appear to be quite some overhead. On the other side it handles<br>
authentication via usign keys.<br>
<br>
Anyway, please recommend me a better way which I&#39;m not aware of!<br>
<br>
Best,<br>
Paul<br>
<br>
[0]: <a href=3D"https://www.ansible.com/" rel=3D"noreferrer" target=3D"_bla=
nk">https://www.ansible.com/</a><br>
[1]: <a href=3D"https://cloud-init.io/" rel=3D"noreferrer" target=3D"_blank=
">https://cloud-init.io/</a><br>
[2]: <a href=3D"https://github.com/openwrt/packages/pull/6071" rel=3D"noref=
errer" target=3D"_blank">https://github.com/openwrt/packages/pull/6071</a><=
br>
[3]: <a href=3D"https://github.com/libremesh/network-profiles-builder" rel=
=3D"noreferrer" target=3D"_blank">https://github.com/libremesh/network-prof=
iles-builder</a><br>
<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div>

--0000000000006cf11c05a2ce1bbc--


--===============6670101778429156370==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6670101778429156370==--

