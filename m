Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8B7F7FAE
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 20:20:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zVfnmNErf7nOLPQw4uWRQmEBVwwQpF6KyWWhwd4AZRI=; b=r30Jn7njhdz/BgqnlrJRdgfFg
	aGindllIeEexvG6DO0/TtSdERV2vR7bVFb1/sJbzl1YC7lIAWGFhwIO04ikQEtZ+/somJVMdSEsUl
	1vg6yptU22fg0vBrcXea39zGzpeozqCEN4GikCJpZ12v5/peACCmix55lYb3UGdE8xA0rANquohdj
	1t8AgN4j24JwDghdFL9G4mqCLFYXQn4u9XKVlm1a4uu+pOj9ZHik3rrtJP0viSvGTr3pCXh4iredA
	msboi+jtgjwBWrIueiYjg3g2rTjFKIiMFPUxLN8OV/oxsK5NUiqHwhjBhlknSExqI8HJKU2uXDCUT
	A7xoELIQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUFEV-0004oa-1O; Mon, 11 Nov 2019 19:20:15 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUFEN-0004Pd-Hx
 for openwrt-devel@lists.openwrt.org; Mon, 11 Nov 2019 19:20:09 +0000
Received: by mail-io1-xd41.google.com with SMTP id j13so15871145ioe.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 11 Nov 2019 11:20:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jJfGByEtdvDNucbikXbU2f74PvoVMPjmp/Mp0YNV8dg=;
 b=s2KA2xPdI0S4J588MZqxO7mlQ21I6aJmOFFnGnfZNw2qi8JLSxnD9+BEm2Y1xVBCzg
 iQ9Avp4LodDJMHJQeoaU03v+ihgKyDlHFozGVuQ3mf1flj8XTHplK2VPPDeMCJiOsS6G
 Ou4hE/SMz9ODxUVp3rP91fIqywNIWIZbT2yBbHp6EcGVTxvF32JnbSgwqEuwhfD0vWD+
 UzVYmCOvSCif0GzKCiG6CKUQd8TPiYbgc+XOLJevCI0Z8256iIdRdCvDPhREwgA4diTY
 4L09qbdttDrd6Airywi9Q4Ef8LgUFYqDVCy7tn0YmbABl0rl0wm7yOELmCaVau5im1NH
 Txew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jJfGByEtdvDNucbikXbU2f74PvoVMPjmp/Mp0YNV8dg=;
 b=CczyDXlvvq1mwactxPRnZ8L/Xd3jZiRBRMKOjZ1HpJzmcUbyeVMyNM0kqyNBlIR5+X
 XjXP3Y7sUomxIXSztJWHcIS7pzAu0FsoVOdGAqaT1IyoPnXZ+vXwiLOFORqBk1zMhscS
 H6pqMVBh8Pzu4SU3ip+WClbY3cL1kK5+BHwZMpNcDdOgWEjx+panX2CKbrapPRb6ZcHO
 ouSv9u8uzM1m2L01AB73l0Jl0CIoYLgb+rexudwHTqf9tn59hZmSUK1cjPYrK1hs+XAS
 VvY8DKbetyKMXtluFhsZaDhXDCRZSXI1XyLaQ6vOgw9eCMFprLp5xCWJhID28Xeyew3N
 8Xmw==
X-Gm-Message-State: APjAAAXwNLtaFuRm4G9CIbriHLTOcd2b/jvM6kMIVbU0ZS8KWwcYPGSr
 /sRh1Xe9ZiLNVCYvgDp6FRhxS9KJvKJI+tiZn7q4yg==
X-Google-Smtp-Source: APXvYqyp7boNz3OlyAS763srP6FS2i9A0yPRf7Im44NNSDA3z5mTldALyEZeTdGqFKWcnDHzfXmg8BKPDWW6gVFrJRk=
X-Received: by 2002:a05:6638:73a:: with SMTP id
 j26mr26956824jad.116.1573500005591; 
 Mon, 11 Nov 2019 11:20:05 -0800 (PST)
MIME-Version: 1.0
References: <20191107133129.8740-1-fe@dev.tdt.de>
 <9fbb907c-6fcd-49e1-4de3-d451acd0949c@hauke-m.de>
In-Reply-To: <9fbb907c-6fcd-49e1-4de3-d451acd0949c@hauke-m.de>
From: Michael Jones <mike@meshplusplus.com>
Date: Mon, 11 Nov 2019 13:20:46 -0600
Message-ID: <CAJQUmm4PmdaymTAeF9A6aU38Cf3tYAq+UnNLX8e45pCCGLAkfA@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_112007_662794_BA113F10 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2 1/1] rpcd: add respawn param
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
Cc: openwrt-devel@lists.openwrt.org, Eckert.Florian@googlemail.com,
 Florian Eckert <fe@dev.tdt.de>
Content-Type: multipart/mixed; boundary="===============8925233072045491936=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8925233072045491936==
Content-Type: multipart/alternative; boundary="000000000000e33f280597170426"

--000000000000e33f280597170426
Content-Type: text/plain; charset="UTF-8"

On Sat, Nov 9, 2019 at 6:53 AM Hauke Mehrtens <hauke@hauke-m.de> wrote:

> On 11/7/19 2:31 PM, Florian Eckert wrote:
> > The rpcd service is an important service, but if the service stops
> > working for any reason, no one will ever respawn that service. With this
> > commit, the procd service will monitor if the rpcd service
> > is running. If the rpcd service has crashed, then
> > procd respawns the rpcd service.
> >
> > Signed-off-by: Florian Eckert <fe@dev.tdt.de>
> > ---
> >  package/system/rpcd/Makefile        | 2 +-
> >  package/system/rpcd/files/rpcd.init | 1 +
> >  2 files changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/package/system/rpcd/Makefile b/package/system/rpcd/Makefile
> > index 6f23bbe96e..fcbcc613a6 100644
> > --- a/package/system/rpcd/Makefile
> > +++ b/package/system/rpcd/Makefile
> > @@ -8,7 +8,7 @@
> >  include $(TOPDIR)/rules.mk
> >
> >  PKG_NAME:=rpcd
> > -PKG_RELEASE:=1
> > +PKG_RELEASE:=2
> >
> >  PKG_SOURCE_PROTO:=git
> >  PKG_SOURCE_URL=$(PROJECT_GIT)/project/rpcd.git
> > diff --git a/package/system/rpcd/files/rpcd.init
> b/package/system/rpcd/files/rpcd.init
> > index 447133c67a..3e9ea5bbf3 100755
> > --- a/package/system/rpcd/files/rpcd.init
> > +++ b/package/system/rpcd/files/rpcd.init
> > @@ -12,6 +12,7 @@ start_service() {
> >
> >       procd_open_instance
> >       procd_set_param command "$PROG" ${socket:+-s "$socket"}
> ${timeout:+-t "$timeout"}
> > +     procd_set_param respawn ${respawn_retry:-0}
>
> Why do you set the respawn_retry to 0 by default?
>
> >       procd_close_instance
> >  }
> >
>

(Resending to include the list itself. Apologies if anyone receives a
duplicate.)

How would procd determine that rpcd is stuck, instead of crashed?

Is there support for some kind of heartbeating behavior, similar to what
systemd offers?

One would imagine that procd's close integration with ubus would allow for
this functionality to exist without a lot of additional code.

http://0pointer.de/blog/projects/watchdog.html
> This service will automatically be restarted if it hasn't pinged the
system manager for longer than 30s or if it fails otherwise. If it is
restarted this way more often than 4 times in 5min action is taken and the
system quickly rebooted, with all file systems being clean when it comes up
again.

--000000000000e33f280597170426
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Sat, Nov 9, 2019 at 6:53 AM Hauke Mehr=
tens &lt;<a href=3D"mailto:hauke@hauke-m.de">hauke@hauke-m.de</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 11/7/19 2:3=
1 PM, Florian Eckert wrote:<br>
&gt; The rpcd service is an important service, but if the service stops<br>
&gt; working for any reason, no one will ever respawn that service. With th=
is<br>
&gt; commit, the procd service will monitor if the rpcd service<br>
&gt; is running. If the rpcd service has crashed, then<br>
&gt; procd respawns the rpcd service.<br>
&gt; <br>
&gt; Signed-off-by: Florian Eckert &lt;<a href=3D"mailto:fe@dev.tdt.de" tar=
get=3D"_blank">fe@dev.tdt.de</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 package/system/rpcd/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-<b=
r>
&gt;=C2=A0 package/system/rpcd/files/rpcd.init | 1 +<br>
&gt;=C2=A0 2 files changed, 2 insertions(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/package/system/rpcd/Makefile b/package/system/rpcd/Makefi=
le<br>
&gt; index 6f23bbe96e..fcbcc613a6 100644<br>
&gt; --- a/package/system/rpcd/Makefile<br>
&gt; +++ b/package/system/rpcd/Makefile<br>
&gt; @@ -8,7 +8,7 @@<br>
&gt;=C2=A0 include $(TOPDIR)/<a href=3D"http://rules.mk" rel=3D"noreferrer"=
 target=3D"_blank">rules.mk</a><br>
&gt;=C2=A0 <br>
&gt;=C2=A0 PKG_NAME:=3Drpcd<br>
&gt; -PKG_RELEASE:=3D1<br>
&gt; +PKG_RELEASE:=3D2<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 PKG_SOURCE_PROTO:=3Dgit<br>
&gt;=C2=A0 PKG_SOURCE_URL=3D$(PROJECT_GIT)/project/rpcd.git<br>
&gt; diff --git a/package/system/rpcd/files/rpcd.init b/package/system/rpcd=
/files/rpcd.init<br>
&gt; index 447133c67a..3e9ea5bbf3 100755<br>
&gt; --- a/package/system/rpcd/files/rpcd.init<br>
&gt; +++ b/package/system/rpcd/files/rpcd.init<br>
&gt; @@ -12,6 +12,7 @@ start_service() {<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0procd_open_instance<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0procd_set_param command &quot;$PROG&quot; ${=
socket:+-s &quot;$socket&quot;} ${timeout:+-t &quot;$timeout&quot;}<br>
&gt; +=C2=A0 =C2=A0 =C2=A0procd_set_param respawn ${respawn_retry:-0}<br>
<br>
Why do you set the respawn_retry to 0 by default?<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0procd_close_instance<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0<br></blockquote><div><br></div><div>(Resending to include the li=
st itself. Apologies=C2=A0if anyone receives a duplicate.)</div><div><br></=
div>How would procd determine that rpcd is stuck, instead of crashed?<div><=
br></div><div>Is there support for some kind of heartbeating behavior, simi=
lar to what systemd offers?</div><div><br></div><div>One would imagine that=
 procd&#39;s=C2=A0close integration=C2=A0with ubus would allow for this fun=
ctionality to exist without a lot of additional code.</div><div><br></div><=
div><a href=3D"http://0pointer.de/blog/projects/watchdog.html" target=3D"_b=
lank">http://0pointer.de/blog/projects/watchdog.html</a><br></div><div>&gt;=
 This service will automatically be restarted if it hasn&#39;t pinged the s=
ystem manager for longer than 30s or if it fails otherwise. If it is restar=
ted this way more often than 4 times in 5min action is taken and the system=
 quickly rebooted, with all file systems being clean when it comes up again=
.=C2=A0=C2=A0</div></div></div>

--000000000000e33f280597170426--


--===============8925233072045491936==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8925233072045491936==--

