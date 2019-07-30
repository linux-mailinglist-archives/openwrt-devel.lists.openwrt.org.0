Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A117B374
	for <lists+openwrt-devel@lfdr.de>; Tue, 30 Jul 2019 21:40:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MRsnPZCqOxZ8zS0bnSwV3vnZz9bC+40Ja3QwMtVdzkY=; b=thnlqJzzhh9mRaB49y/dTZRfQ
	cSaD+YREvTcWOnqbaelnIafYWFkTEPQMOSJyNEvMDZooo4YYZwoVBwlGCW5MoZrQ0gsIMNA8R41PI
	hjcNTm1aJMfNBMAxnihX9JoX4yHfJpO+WW0PBDR2I81gmERiZpKbh9Y2aUAcAJW27LC9qb3MnW5N9
	7f2qbIPz05jvxmqNUfBAA6aZeFuKTkPIS9xhpYCerQfrLsqbRM5EtM32FtwCJVU7aU7u5mDiJZtkq
	WbdTHwWqPvVR/jmuyveABoLXwwzm5WOY1bWpRmRBVT/fQEd4LL39kBRMUNQNURgCioePmoMLCE59V
	6bF8U/qIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsXyu-0000bM-O1; Tue, 30 Jul 2019 19:40:20 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsXyn-0000ax-Hp
 for openwrt-devel@lists.openwrt.org; Tue, 30 Jul 2019 19:40:15 +0000
Received: by mail-lj1-x230.google.com with SMTP id v24so63341532ljg.13
 for <openwrt-devel@lists.openwrt.org>; Tue, 30 Jul 2019 12:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sWuZhqmgf5uqYgEycyV8Oqgiz6QSpu7xTgIa3j3oQ/E=;
 b=GBYE56STqURhV9HLfhvFKcTrCSjDkui0GF+nKDrwYd3sICTbpX+SVqR7O4D1BgRQWd
 Q0d7Cihahv4gn1VyoCXU1CkBhrA9cwz/rd0SaNjH7ag5ySCBv6lryNpgBcgZ4PRpLpuv
 9ZVNxx4JJks59IJ+XnlLgpnnHl5NvvePalDdy23F3p33jUCedx7G7aEBKBPiI9brBYLg
 bhdrdZgXJHzexWkfQZE+mxmzDIRnUHUVsXS8SxFm+YbJuByVZWqczBquMNkEGnMxAX9c
 Cq1NdWmFPoxws7ZL85DQVXkFANLCHOIXv2XuyLE+Wku9EyLECmlfRIhZ8wM0CqHjB8s4
 0krg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sWuZhqmgf5uqYgEycyV8Oqgiz6QSpu7xTgIa3j3oQ/E=;
 b=SxmS+gNkcLtx+7gTMLeBQ6RJGVD2hZY5t7rNDJblg8GNgzEujqGDunLNHVxujz8Q+O
 JNuDd10PNO77nHMJOt0UukvO5eqPKENNEtfZaPY1vwZMjTA+m0WyICmWVpJRqs56v7VH
 ENd19ZeL+BEvIz1Rbr3wI0Dblv6t+ip4jS3MvAmlMwCrO0V+rgK25Y80an1Ej4U/Z4/L
 5UlUrJG7EiiNvTw/5OCmA2vowBwphlZ0z9kjIh+1Zv5r/2yaPgTAyBFuVmUox2Irify5
 bBy8xjYBGTlIfmqbZxU4nbNEH0gTfd3SorRIeb3cAALmhoFpoqh+HPUhE3w4KrDDyH1t
 jhfA==
X-Gm-Message-State: APjAAAXJ4JFakL9OoX5dmYqNqqnXdRMoCR3VTUWYL5/mT80lWGQv/mnt
 HB/aE7iJNVuPzlhMf9tBcmCR/K/Zbq20pE5WVvc=
X-Google-Smtp-Source: APXvYqzefqmRHgeVc0l8I7DtbvASfTR+QDxQZSJ65bezwuF6oWPfAsPMnFWZBHmpHwDh2witSbGfxIecP/sUgNdQBcY=
X-Received: by 2002:a2e:4794:: with SMTP id
 u142mr62651626lja.222.1564515610981; 
 Tue, 30 Jul 2019 12:40:10 -0700 (PDT)
MIME-Version: 1.0
References: <CANoib0H81oGAEvhHbXLF2HBXnhUmZVcL8EZd4sKbvpwtLhvD_Q@mail.gmail.com>
 <20190730093705.GF74752@meh.true.cz>
 <CANoib0F=xguA9aAqO-AgAJ43YWWvAT36kBgsQRcTFNPGyvcP3g@mail.gmail.com>
 <2ae7cdad-254f-cb01-1474-8cbeff73638b@andreas-ziegler.de>
In-Reply-To: <2ae7cdad-254f-cb01-1474-8cbeff73638b@andreas-ziegler.de>
From: James Campbell <jscampbell.05@gmail.com>
Date: Tue, 30 Jul 2019 20:40:00 +0100
Message-ID: <CACvU4CSKSNf-bT4HaQJrKSg99=EGbf7tHR-QSGrsPN1pwAheaA@mail.gmail.com>
To: Andreas Ziegler <ml@andreas-ziegler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_124013_619251_7CD49898 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:230 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jscampbell.05[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jscampbell.05[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Why ath79 has been made source-only on 19.07?
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
Cc: Dmitry Tunin <hanipouspilot@gmail.com>,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============2909677990361818678=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2909677990361818678==
Content-Type: multipart/alternative; boundary="0000000000003cf8ee058eeb2d0f"

--0000000000003cf8ee058eeb2d0f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Can we not have a way of including unstable stuff in a way the consumers
know it=E2=80=99s un stable ?

Like a 19.07 canary

On Tue, 30 Jul 2019 at 20:22, Andreas Ziegler <ml@andreas-ziegler.de> wrote=
:

>
> Dmitry Tunin schrieb am 30.07.19 um 14:29:
> > Are you taking in account that many devices added during the last year
> > as ath79 won't be supported by a stable release.
> > Master is no good now for normal use. That will mean that for the next
> > year or so many users will require custom 19.07 builds.
> > That doesn't sound very good.
> >
> > Initially ath79 was expected in 19.07, but it appeared that not all
> > devices have been ported from ar71xx. So we are not ready to drop
> > ar71xx, but we are ready to support ath79.
>
> to me, this is the only big negative thing here.
> everyone was told, that new devices have to go into ath79 - and now we
> will have a new release, lacking binaries for many many new devices
> because new device support in ar71xx was not welcome.
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--0000000000003cf8ee058eeb2d0f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Can we not have a way of including unstable stuff in=
 a way the consumers know it=E2=80=99s un stable ?</div></div><div dir=3D"a=
uto"><br></div><div dir=3D"auto">Like a 19.07 canary=C2=A0</div><div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 30 J=
ul 2019 at 20:22, Andreas Ziegler &lt;<a href=3D"mailto:ml@andreas-ziegler.=
de">ml@andreas-ziegler.de</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><br>
Dmitry Tunin schrieb am 30.07.19 um 14:29:<br>
&gt; Are you taking in account that many devices added during the last year=
<br>
&gt; as ath79 won&#39;t be supported by a stable release.<br>
&gt; Master is no good now for normal use. That will mean that for the next=
<br>
&gt; year or so many users will require custom 19.07 builds.<br>
&gt; That doesn&#39;t sound very good.<br>
&gt; <br>
&gt; Initially ath79 was expected in 19.07, but it appeared that not all<br=
>
&gt; devices have been ported from ar71xx. So we are not ready to drop<br>
&gt; ar71xx, but we are ready to support ath79.<br>
<br>
to me, this is the only big negative thing here.<br>
everyone was told, that new devices have to go into ath79 - and now we<br>
will have a new release, lacking binaries for many many new devices<br>
because new device support in ar71xx was not welcome.<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div></div>

--0000000000003cf8ee058eeb2d0f--


--===============2909677990361818678==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2909677990361818678==--

