Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA370F5F6F
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 Nov 2019 14:46:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:In-Reply-To:References:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BPUVo3RFO2tHYvHtJG6uxKpyJF9zWfEXfwd727YMxFg=; b=uRmapzPrwzFRDomCYbP4nHtRH
	VzGlnpG90Ck+UrAhQCz/QHL0tedUFW3TtlYwEgRO03v1FWlCpt1GpFnSj7QmCCYWxvo0GXp4kghPl
	9vJYY87vciJZ2H3F+zZ8A5MKrChrShRO77uMXqlR1fDjQxNRk66mkGaAUBpI1CDEyf7L5b8A7FyVM
	9Ofk9sKMCymffzdbHMZ4d5zBInSRuDs9Kw1ZORy+4PU+Apjlp4RbKO+q6Ird6b9u6MnDox+Y4SsPU
	ECC1dG88a9QMJbhjJgxgdF+RbtletifgSNPlWCSSNj0+sTK3TWel7XJiZb/L8FfIyiytF78lyleq1
	xONF7pPAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTR4U-0002Cz-KL; Sat, 09 Nov 2019 13:46:34 +0000
References: <20191107133129.8740-1-fe@dev.tdt.de>
 <9fbb907c-6fcd-49e1-4de3-d451acd0949c@hauke-m.de>
In-Reply-To: <9fbb907c-6fcd-49e1-4de3-d451acd0949c@hauke-m.de>
Date: Sat, 9 Nov 2019 14:46:14 +0100
To: Hauke Mehrtens <hauke@hauke-m.de>
MIME-Version: 1.0
Message-ID: <mailman.10018.1573307190.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Florian Eckert via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel@lists.openwrt.org, Florian Eckert <fe@dev.tdt.de>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Florian Eckert <eckert.florian@googlemail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [PATCH v2 1/1] rpcd: add respawn param
Content-Type: multipart/mixed; boundary="===============2138185901747334444=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2138185901747334444==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============2138185901747334444==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTR4O-0002CP-As
	for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 13:46:30 +0000
Received: by mail-qt1-x843.google.com with SMTP id p20so10146334qtq.5
        for <openwrt-devel@lists.openwrt.org>; Sat, 09 Nov 2019 05:46:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ga/QSRvBB7t2z/vgMPLyKO37eUSsNNorVaW6BdOPaQw=;
        b=am+nlVKcy4EYRq3udkjmagNx9IrPYgpT5juRVNvyoe91AyFwuK44EGbXOtmVAYdmOA
         GICvvIKA4RJKM58ZeKzy8/Pz23hbaEqRe5KeubggDuljTZ+vRaLcuYcS3tOvdplITkTO
         vRVx6FRSiZXQA1XF93JZfxKFBakaRYbjXtN46MUhztFoz0bV7SGSqe8OObHlHcxV7IrQ
         lZHoMETYROaJXDIWla3cWA3kukTyWBLTFN1nrk6BwKCcV6EilnUkcW3MZlKesvVXMDp1
         aT7t6faYJ4LtO/2p7L7XQvD+03utVw/FhDr/ybvebIRkuJAy0KBIt6+7c9QtTunD9U6a
         Is+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ga/QSRvBB7t2z/vgMPLyKO37eUSsNNorVaW6BdOPaQw=;
        b=N1Zh0GkXaknvguKwtACnghQyUQcY/0JUui/kp1ODurcQxbS15121qJMgC463ptvbzK
         t101y3QlA6Iwt/6y5ZoUWcuqZbFo46q4/JM7QHKifMFJJbgYskXgXC5yPlgHK6w5IF0M
         xLcUsPEeIPttJ7ZsILFeyijNNAqpXQqTlaIpVAnPhm/9GBluFhl1elN9yasA2k7ob6w0
         vaL0pWPn05/T7vB0VOUlg6z7VIWAwRoXo9XwRTMZ8gwuiK/69k3hZSmfYIblOfGsYcBd
         haxNPYOTbD6AM9QrAS4BnQC//2/s2k34xCX1ssbhY671OdAHOS3l8QFVtqY6BY8WMfTh
         VMfA==
X-Gm-Message-State: APjAAAX6hpZUAr0wKRzeG2Gknw4QEL7BVG4OJKrRkhV/IhsU42u11AAQ
	CkeB81Pwr9QmmL6WhTKJp2Xh7PmwdMoKcgs3IkkPJg==
X-Google-Smtp-Source: APXvYqwR10CMA6dxgnQGEFgT6POoKOjxoaINObgOakBoYy0aZTNMoEUEk51Tr+V5c8TCq5WUHGbC6y8FTQrmFk5/pBQ=
X-Received: by 2002:ac8:30cd:: with SMTP id w13mr16689545qta.201.1573307186415;
 Sat, 09 Nov 2019 05:46:26 -0800 (PST)
MIME-Version: 1.0
References: <20191107133129.8740-1-fe@dev.tdt.de> <9fbb907c-6fcd-49e1-4de3-d451acd0949c@hauke-m.de>
In-Reply-To: <9fbb907c-6fcd-49e1-4de3-d451acd0949c@hauke-m.de>
From: Florian Eckert <eckert.florian@googlemail.com>
Date: Sat, 9 Nov 2019 14:46:14 +0100
Message-ID: <CALPCC5yhKk2oVvT0nHQ4Ud+DxVVtC-8dHabRUhnBEe1sQb=Rew@mail.gmail.com>
Subject: Re: [OpenWrt-Devel] [PATCH v2 1/1] rpcd: add respawn param
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: Florian Eckert <fe@dev.tdt.de>, openwrt-devel@lists.openwrt.org
Content-Type: multipart/alternative; boundary="000000000000f80bf30596ea1f47"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_054628_402404_C17817F2 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2607:f8b0:4864:20:0:0:0:843 listed in]
                             [list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             (eckert.florian[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain

--000000000000f80bf30596ea1f47
Content-Type: text/plain; charset="UTF-8"

Hauke Mehrtens <hauke@hauke-m.de> schrieb am Sa., 9. Nov. 2019, 13:53:

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

As suggested by others on the mailinglist. Settings this option to 0 means
respawn forever.

--000000000000f80bf30596ea1f47
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">Hauke Mehrtens &lt;<a href=3D"mailto:hauke@hauke-m.de"=
>hauke@hauke-m.de</a>&gt; schrieb am Sa., 9. Nov. 2019, 13:53:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">On 11/7/19 2:31 PM, Florian Eckert wrote:<br>
&gt; The rpcd service is an important service, but if the service stops<br>
&gt; working for any reason, no one will ever respawn that service. With th=
is<br>
&gt; commit, the procd service will monitor if the rpcd service<br>
&gt; is running. If the rpcd service has crashed, then<br>
&gt; procd respawns the rpcd service.<br>
&gt; <br>
&gt; Signed-off-by: Florian Eckert &lt;<a href=3D"mailto:fe@dev.tdt.de" tar=
get=3D"_blank" rel=3D"noreferrer">fe@dev.tdt.de</a>&gt;<br>
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
&gt;=C2=A0 include $(TOPDIR)/<a href=3D"http://rules.mk" rel=3D"noreferrer =
noreferrer" target=3D"_blank">rules.mk</a><br>
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
Why do you set the respawn_retry to 0 by default?<br></blockquote></div></d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto">As suggested by others on =
the mailinglist. Settings this option to 0 means respawn forever.</div></di=
v>

--000000000000f80bf30596ea1f47--


--===============2138185901747334444==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2138185901747334444==--

