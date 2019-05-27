Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4319B2BB65
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 22:24:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AHO1UCry9tiA84ANy50J+EfFZb6Md0OOYKieRSE0cUc=; b=ZyIQse/yoW9LPCQA+UERHvd6H
	JdrnyW1DM7PUaMSz4RvUQ2UUJdg7JKiIOESUtlplEi2oHcWU+MzGsYrTgp5ccJoYdPh1XNBJ4T5pL
	/kBe5HVaAy+5fjc15oUKZqkFC6HiK42KNCjDLZKI56pcDEGsxP88JkP7LDOMrMYd6ymPy+JSLlTRR
	tV7rDU1/BYxa82UbYzlPywO73t6fqdTnU6JeIpUZ3MDcnzKJBnoJCgQJiWnK1dM8rEz+7WKPoyvVS
	0ICuC0AmNR9FeEPvf1bB+tHhIzd+dF0C57mpzNhNAflzHgZ4luu51p5wSU2nz1WXxGSsBdyFNhp7C
	zXH0I1iww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVMAB-0002an-Hb; Mon, 27 May 2019 20:24:07 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVMA4-0002aT-4l
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 20:24:01 +0000
Received: by mail-wr1-x429.google.com with SMTP id r7so17873832wrr.13
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 May 2019 13:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mcsKEVvbP+FsCG1raokh2fABSNBx9U6WRH0ZH+W7t8Y=;
 b=bUcTedyNBxKz0N+YzF5y17hEsfrgKO5YMR04kTUIw8pcWOn4q5kla4yNmvAleb4Umr
 Sg1elid1h0QKpNepVHKFWj90AHMqZuEUA7ERhCntCvcIMXjHcB3QIKnPc/YgMT1Ng9w2
 Okqhhw/3DO/7RmcO0Rar1JYu3enpgZx9xnn9ErNaRt223yVdbmoyvBvjn6OFdFvtMmSN
 /GxCRqpZaBzAytgDojPF7r8U4FbhZS+Yr3uROhfAvFscy42X0ShfVOISoGyCx4lTI0Ng
 UX/pyebfaYtbiF0dap3bhFHV/Gvh0UC7rAWyh2DcHvO+yt+gLqdlDjf5N9XBXKuHYjD3
 iabg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mcsKEVvbP+FsCG1raokh2fABSNBx9U6WRH0ZH+W7t8Y=;
 b=ZM1lPG7TGFoW1qtNR385E+K+LjY9TvmXqF7guIV5HlRiSZtXZFea/wh8+ylsXR3hdy
 fdLnr9DML1T5BZoCzjvVq/f3Y1elt1lRcuw6LYmuU0+VZIIcvwAOowMt2aOakcr8VecC
 KOT//p4w2+SEA0XEprrSqcNAsx4OSkygvPkyY68QK3xy000svzGIILOfxI163oCBCbfO
 Q5tCzjVrCYZv/1oe/ddy/OKu4B43a0Dlw69E70shafSe69+r+2uvUuSPKcbq4QG+QAV5
 +RgqDCcp85rV57PtC4aglPJMTODV0APuzwmNnjEFeyZkvnwyb/L1jWJ462y7dGxrKJPc
 aveA==
X-Gm-Message-State: APjAAAW2LnXEbk9LtC3UZyP+ZQdTxf8vuK0ItmAMTnP3IsbhmK5Of7cC
 olfvvCvRn3WKgmhjAK2YyTtHzVJD5P1uWVoK52wThAKNX78=
X-Google-Smtp-Source: APXvYqxJOJjO0OnX8GV7Gp8KRQK/Yn7m4gTu0FucKlEUiEyyGzBxBrU+c7YTai+Oh84beUI1ksol0mRXBS1LTvxZPmo=
X-Received: by 2002:a5d:4b52:: with SMTP id w18mr16342607wrs.262.1558988637392; 
 Mon, 27 May 2019 13:23:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAC8mBSVP+Uev=H_x4actCT9g+FV1X0bVFZ=06biyBA=w-s6AkA@mail.gmail.com>
 <f30df01f-ea9d-32ae-2e7d-286fa4aab164@ironai.com>
 <CAC8mBSUYMvuwJaAftwYCL+TaYTaDs_4VT2P9Q3-j5sDOF6xO6Q@mail.gmail.com>
 <87imtvu3cl.fsf@husum.klickitat.com>
In-Reply-To: <87imtvu3cl.fsf@husum.klickitat.com>
From: =?UTF-8?Q?Denis_Peri=C5=A1a?= <darkman.hr@gmail.com>
Date: Mon, 27 May 2019 22:23:53 +0200
Message-ID: <CAC8mBSWfsK+f_8Od3FF1GtQeiZeENJnZAk89ir2Q8OABY7iJkg@mail.gmail.com>
To: Russell Senior <russell@personaltelco.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_132400_207886_7ACC6316 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:429 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (darkman.hr[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] dnsmasq not leasing after a while. Sometimes
 more than 5 times a day
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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
Content-Type: multipart/mixed; boundary="===============4966902957953754665=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4966902957953754665==
Content-Type: multipart/alternative; boundary="000000000000f0d2d00589e45372"

--000000000000f0d2d00589e45372
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

There is no other dhcp in network, it's routed connection RB435G with
multiple cards wlan.
this is config example:

interface=3Deth0
except-interface=3Deth1
interface=3Dwlan3
interface=3Dwlan0
interface=3Dwlan1
interface=3Dwlan2

dhcp-range=3D172.17.3.20,172.17.3.253,255.255.255.0,1h
dhcp-range=3D172.17.4.20,172.17.4.253,255.255.255.0,1h
dhcp-range=3D172.17.5.20,172.17.5.253,255.255.255.0,1h
dhcp-range=3D172.17.6.20,172.17.6.253,255.255.255.0,1h
dhcp-range=3D172.17.7.20,172.17.7.253,255.255.255.0,1h

On Mon, May 27, 2019 at 9:03 PM Russell Senior <russell@personaltelco.net>
wrote:

> >>>>> "Denis" =3D=3D Denis Peri=C5=A1a <darkman.hr@gmail.com> writes:
>
> Denis> Yes, dnsmasq is still running but lease is not given.. I don't
> Denis> know how to debug it more.  Configuration is simple, one subnet
> Denis> range 192.168.0.10 to 192.168.0.200 on wlan0 interface for
> Denis> example. But it's not wifi issue, local also.  It sends mail as
> Denis> soon as error is detected and restarts dnsmasq after which it
> Denis> works. Device is not rebooting.  OpenWrt 18.06-SNAPSHOT,
> Denis> r7766-e9a7344550
>
> Denis> Also my scripts checkes two times just to rule out false
> Denis> negative.  Also, more public exposure or none is pretty much
> Denis> same.. I have device which gets maybe 1-2 person and one with 50
> Denis> .. behaving same. After a while it stops responding. Any more
> Denis> debug I could use somewhere?
>
> There may be another dhcp server detected on the network. See "force"
> option here:
>
>   https://openwrt.org/docs/guide-user/base-system/dhcp#dhcp_pools
>
> And/or post the contents of /var/etc/dnsmasq.conf.cfg*
>
>
> --
> Russell Senior, President
> russell@personaltelco.net
>

--000000000000f0d2d00589e45372
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">There is no other dhcp in network, it&#39;s routed connect=
ion RB435G with multiple cards wlan.<br>this is config example:<br><br>inte=
rface=3Deth0<br>except-interface=3Deth1<br>interface=3Dwlan3<br>interface=
=3Dwlan0<br>interface=3Dwlan1<br>interface=3Dwlan2<br><br>dhcp-range=3D172.=
17.3.20,172.17.3.253,255.255.255.0,1h<br>dhcp-range=3D172.17.4.20,172.17.4.=
253,255.255.255.0,1h<br>dhcp-range=3D172.17.5.20,172.17.5.253,255.255.255.0=
,1h<br>dhcp-range=3D172.17.6.20,172.17.6.253,255.255.255.0,1h<br>dhcp-range=
=3D172.17.7.20,172.17.7.253,255.255.255.0,1h<br></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 27, 2019 at 9:0=
3 PM Russell Senior &lt;<a href=3D"mailto:russell@personaltelco.net">russel=
l@personaltelco.net</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">&gt;&gt;&gt;&gt;&gt; &quot;Denis&quot; =3D=3D Denis Peri=
=C5=A1a &lt;<a href=3D"mailto:darkman.hr@gmail.com" target=3D"_blank">darkm=
an.hr@gmail.com</a>&gt; writes:<br>
<br>
Denis&gt; Yes, dnsmasq is still running but lease is not given.. I don&#39;=
t<br>
Denis&gt; know how to debug it more.=C2=A0 Configuration is simple, one sub=
net<br>
Denis&gt; range 192.168.0.10 to 192.168.0.200 on wlan0 interface for<br>
Denis&gt; example. But it&#39;s not wifi issue, local also.=C2=A0 It sends =
mail as<br>
Denis&gt; soon as error is detected and restarts dnsmasq after which it<br>
Denis&gt; works. Device is not rebooting.=C2=A0 OpenWrt 18.06-SNAPSHOT,<br>
Denis&gt; r7766-e9a7344550<br>
<br>
Denis&gt; Also my scripts checkes two times just to rule out false<br>
Denis&gt; negative.=C2=A0 Also, more public exposure or none is pretty much=
<br>
Denis&gt; same.. I have device which gets maybe 1-2 person and one with 50<=
br>
Denis&gt; .. behaving same. After a while it stops responding. Any more<br>
Denis&gt; debug I could use somewhere?<br>
<br>
There may be another dhcp server detected on the network. See &quot;force&q=
uot;<br>
option here:<br>
<br>
=C2=A0 <a href=3D"https://openwrt.org/docs/guide-user/base-system/dhcp#dhcp=
_pools" rel=3D"noreferrer" target=3D"_blank">https://openwrt.org/docs/guide=
-user/base-system/dhcp#dhcp_pools</a><br>
<br>
And/or post the contents of /var/etc/dnsmasq.conf.cfg*<br>
<br>
<br>
-- <br>
Russell Senior, President<br>
<a href=3D"mailto:russell@personaltelco.net" target=3D"_blank">russell@pers=
onaltelco.net</a><br>
</blockquote></div>

--000000000000f0d2d00589e45372--


--===============4966902957953754665==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4966902957953754665==--

