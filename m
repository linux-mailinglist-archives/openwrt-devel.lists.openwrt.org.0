Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2494617AE8D
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 19:54:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KRBK4TnifE+0tkEZ5Kwb1sZhvHXK9+hJlplliv+ooc4=; b=jYvb+RP7K2SsRXKeXnYFZBnNU
	pr0FMd8H3yLNHt2M5mNcIh0JcxLBwGsve+v3behzmI0rfN8XZdeqmlqkQZYRWxkRZdvBnhlE33g8m
	OUGOe9uNfRRzbtH+73m9lWukPBYatr9rNF1UDvkicqNDaFTf6ZBp5ynTG2VvP0/CyAIcAr+gFGeRj
	3PuGDDohO9vp7mbkc/msUFH9NTy5y7tFvk22KEJ8IcUr2649TCizT+DBFhABxX1V2d5Klg7BW8Rl9
	KdFhoK3uCRC7NROt1AF+YdNd+ad84kFhxfxbv4gAck/TarAQK/i6grUbNCwzUqRIgAD/E56Aej90b
	6agNWaBnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9vdl-0005l3-Gz; Thu, 05 Mar 2020 18:54:37 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9vdb-0005kj-2Q
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 18:54:28 +0000
Received: by mail-lf1-x144.google.com with SMTP id w27so5541959lfc.1
 for <openwrt-devel@lists.openwrt.org>; Thu, 05 Mar 2020 10:54:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QFoJgqbvrtCOQ/RUy7XzMtGT8Uh33WVPKlADbf9Lsew=;
 b=WdKMRR4tFH32sbJlocchNylVBtUFA+fMmJnklggYmBJPPbR+yNVSeiBIRuQFXKH4ZL
 eixp/pUfIUDOa0RRUYdO99PIfuFewZa7diMFQAj7KpHBS7qZYsrYbP3LOlMMzk2P4MmX
 kVZ3H9a0dJAWGlmE45C6D/YzOCDe5dkbgCxGP25dokQJzEu13r7XBSdGAVvxKcasc0Al
 xzF4qO8nji+2H//KUbbuGnih3SPhCNjPdSd5cmApcg4bFVhnEK/LDBqJjyJasNn48+z1
 TGc9xxq5z8ES/LuOP1coyePxDGnFGWb2Z7dm1RF04mt7nvQfA7BopQ8lk0+5lYavh847
 GOcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QFoJgqbvrtCOQ/RUy7XzMtGT8Uh33WVPKlADbf9Lsew=;
 b=KQf5gjq2EpH/zc2QSAZ1FBqsYiJG/+yE1mzYBnhJ5VFYtnhTlpztdn80gEGJK3JQp3
 xa4joUzDYAScLd6QSo65JP8tJnTblhewwMlV1CYi84txuin19wRCslDReZaA6bLqSCmL
 Sm+/yeuzyxg4XKrKNjuQZM85026CDxa4ZLcMhiYjeLTN+hmXSc6ZTLYD+zUApOhDfWlB
 HfAdBn9gf7rmTVQedReDGZrBfJwa6zbaK1LFfPyRW0UjBs13ToJ/4Yne8e6Fr+5hE7h7
 iq37HFS0AwmJuyElIh7oSCziVV0BOP1FX+l33TWJyYSgmmHpQI0aFqtrbIPA13L7GSQy
 NDoA==
X-Gm-Message-State: ANhLgQ3auQ/0cdYjoCyofcl7O/s5kyBJVOGKDP9Dt7xHWXrkH8yieNit
 8B72tdu/NFzTk6qIrjR1UYqwCWlIVnWMz/ZojAxfEg==
X-Google-Smtp-Source: ADFU+vsJNpA173u2bn9BvnAD8Cb46yM1wr/WEuzHRalw/yV0gkadWj10lImPCbSqTiew//uIgD1P/80NToPaacJI2Fg=
X-Received: by 2002:ac2:4c39:: with SMTP id u25mr6177257lfq.195.1583434464254; 
 Thu, 05 Mar 2020 10:54:24 -0800 (PST)
MIME-Version: 1.0
References: <20200305084912.14659-1-ynezz@true.cz>
 <px9v7VGUzQWVsQG8LA985yU7sHqErVFNEMj8VRtq23cb@mailpile>
 <20200305113526.GB86312@meh.true.cz>
In-Reply-To: <20200305113526.GB86312@meh.true.cz>
From: Michael Jones <mike@meshplusplus.com>
Date: Thu, 5 Mar 2020 12:54:13 -0600
Message-ID: <CAJQUmm4Jp1jWkR7OMdUvn4KEo9CQM0UuWxZqYyhjQ=X-ZzQ0jQ@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_105427_257518_3BDA48F4 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] rpcd: fix respawn settings
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>, Jo-Philip Wich <jow@mein.io>,
 Karl Palsson <karlp@tweak.net.au>, Florian Eckert <fe@dev.tdt.de>
Content-Type: multipart/mixed; boundary="===============7793657275036951419=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7793657275036951419==
Content-Type: multipart/alternative; boundary="000000000000c46f2b05a020103e"

--000000000000c46f2b05a020103e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 5, 2020 at 5:35 AM Petr =C5=A0tetiar <ynezz@true.cz> wrote:

> Karl Palsson <karlp@tweak.net.au> [2020-03-05 11:18:02]:
>
> > > Commit 432ec292ccc8 ("rpcd: add respawn param") has introduced
> > > infinite restarting of the service which could be reached over
> > > network.
> >
> > Didn't we already decide that this wasn't the case?
>
> < jow> ubus itself has no network transport
> < jow> it is reachable via http://.../ubus in case uhttpd-mod-ubus is
> installed (not the default) or via http://.../cgi-bin/luci/admin/ubus
> (default)
> < jow> the latter emulates uhttpd-mob-ubus in Lua code
> < jow> it takes incoming http requests, parses the body json and invokes
> ubus via libubus
>
> I understand this as Yes, it is available over network.
>
> > Sure, now it's a DoS instead :) It's always a tradeoff, but I
> > think you're glossing over the tradeoff here.
>
> Secure by default.
>
> -- ynezz
>
>
The flip side here is that rpcd likes to crash a lot.

By preventing automatic restarts, you're all but ensuring that users will
experience denial-of-service, even in the absence of malicious traffic.

Is rpcd subject to fuzz testing, to discover potential security issues that
makes limiting the restarts attractive?

--000000000000c46f2b05a020103e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 5, 2020 at 5:35 AM Petr =C5=
=A0tetiar &lt;<a href=3D"mailto:ynezz@true.cz">ynezz@true.cz</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Karl Palsson &l=
t;<a href=3D"mailto:karlp@tweak.net.au" target=3D"_blank">karlp@tweak.net.a=
u</a>&gt; [2020-03-05 11:18:02]:<br>
<br>
&gt; &gt; Commit 432ec292ccc8 (&quot;rpcd: add respawn param&quot;) has int=
roduced<br>
&gt; &gt; infinite restarting of the service which could be reached over<br=
>
&gt; &gt; network. <br>
&gt; <br>
&gt; Didn&#39;t we already decide that this wasn&#39;t the case?<br>
<br>
&lt; jow&gt; ubus itself has no network transport<br>
&lt; jow&gt; it is reachable via http://.../ubus in case uhttpd-mod-ubus is=
 installed (not the default) or via http://.../cgi-bin/luci/admin/ubus (def=
ault)<br>
&lt; jow&gt; the latter emulates uhttpd-mob-ubus in Lua code<br>
&lt; jow&gt; it takes incoming http requests, parses the body json and invo=
kes ubus via libubus<br>
<br>
I understand this as Yes, it is available over network.<br>
<br>
&gt; Sure, now it&#39;s a DoS instead :) It&#39;s always a tradeoff, but I<=
br>
&gt; think you&#39;re glossing over the tradeoff here.<br>
<br>
Secure by default.<br>
<br>
-- ynezz<br><br></blockquote><div><br></div><div>The flip side here is that=
 rpcd likes to crash a lot.</div><div><br></div><div>By preventing automati=
c restarts, you&#39;re all but ensuring that users will experience denial-o=
f-service, even in the absence of malicious traffic.</div><div><br></div><d=
iv>Is rpcd subject to fuzz testing, to discover potential security issues t=
hat makes limiting the restarts attractive?</div><div>=C2=A0<br></div></div=
></div>

--000000000000c46f2b05a020103e--


--===============7793657275036951419==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7793657275036951419==--

