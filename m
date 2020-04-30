Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D6C1BFFBC
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 Apr 2020 17:10:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7ZmTCJqcR+QBcJ08PS8C6He3m+Zz2JweUmKqaalZ9fI=; b=dnEqmqVtgurSGd4TP1A04+hn1
	/Wlrl4aicxrqNhG4RyZj2eb5O/GtNhOmqEuwoCx/yhC3OES+tzrmV63XHrAYDffr2Jty5C87z2bYj
	lSwt+BBawT99IHo3GdzloLV4lYkpJJtaWX0Edg2S3XnbLRVdpCja18ks4+ptz5k2pmLExHZMj7xYA
	0dAQ4WZr0ks3ZwGgsl/HsAcAQ8Bh5RF0mB/p3v8IAfuxgdgq+Be+DXPF7BXbrKa/CSUu1/Jyb7qfO
	Y5BtTTL1FNz54PmfLOHcrmwQf18Vr8/Qew3lAlJS59XSjzH4WQhGirsYOIZBRVXPEqylOEWXUwMcc
	d/uV17glw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUApl-0002xB-2l; Thu, 30 Apr 2020 15:10:41 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUApf-0002wm-5a
 for openwrt-devel@lists.openwrt.org; Thu, 30 Apr 2020 15:10:36 +0000
Received: by mail-lj1-x235.google.com with SMTP id w20so6918788ljj.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 30 Apr 2020 08:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BHUt5LDxUmplM8yzyz0ghqaIIWxOtC1LAkB1vJ+qPjw=;
 b=cf2XlYHjWfSOge8xNM6TwlYkprEjcPGQnJ4Z5PgAG3EVmXEMW05ArivMjHJDZoca6d
 2LjvFwBXHaPvd+h/u0L6tgvuwPLztfThyIiJigeH91RYrfU08BiR1IJjZIbHO2aRzZd+
 oENCu5xJ/u1wS0YRVBlYuRjsufylXKdrDaMAFBdZ8MBLzNF5vBxiXO+BCGPuHPdKVZqW
 HtHGzZLMKgKyduPlt0HKS2ZnCMmE+N+Yr9lkIBdrgabtJrS5UppxK3T5oqJWe/1ytYaH
 n2E8vqvV9cY6VOPRFPgTwnKb5wheF1hb4MuYYpcQUgdOFBGUFD1EWBEEOkCv8wlx7B1N
 rOlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BHUt5LDxUmplM8yzyz0ghqaIIWxOtC1LAkB1vJ+qPjw=;
 b=nu/lPErv1BKdOzY+brAKOfgFo9feeOVYqD/A7xkt8PP3IoAc6wbilxIZ0AmsvRYSIP
 U9MIlA50MKdt+CFP8eH/Hvgl+1q+nsbhOBw5MeynMnKLbtkIu7tW9NZ4Adld7oIOWvhF
 OUzLnOhtz/Z7r189V3ZKWyvp4cPpT0jtWEcvqojsl+gLVJROIcakLiqAxDpBI2L6DIF6
 4bJkoqEsjlJ2QLs67jazPfotZg9f4PjSWDXmzpliqum8ovjHIiTgppKrbsXyApFO8KSK
 F9uYSKq/Pg1rk2J+iMbawm117DBMhuUPCvl9Ovr622VNGdiEldozhY1appOxGNnCDqzM
 gGgA==
X-Gm-Message-State: AGi0PuaGoPwedP471l8ddhFW6kVYsmiGxYYhtUKAIPz0249lFwKmX8+P
 yYkcYNSZc8VOJv4ovzqbZn15IvHkX3lN3lOnoL+4HA==
X-Google-Smtp-Source: APiQypJuxtzEm8vzznbvESEihzzdioGHqxPTAGxJZIs5YIYrblj9K75IEQch4ue/GT+Lfu31D4HWydbYnZVwz1b+n0M=
X-Received: by 2002:a2e:8e98:: with SMTP id z24mr2605400ljk.134.1588259431529; 
 Thu, 30 Apr 2020 08:10:31 -0700 (PDT)
MIME-Version: 1.0
References: <CALYKT1jbVZ_YkHVZzJ2-CFb=8RxzjmtZM9R1CRhM86=AjC6jFw@mail.gmail.com>
 <877dy1xfq3.fsf@miraculix.mork.no>
 <CAJQUmm7-tfDJ32BAjpTu9ygG4xO-K1BfpBxRS61inO+qZC_V8g@mail.gmail.com>
 <CALYKT1hUcHTnm3s9KuNJ7E04hrqBxKX9DbH=9euzpc7ZyTCwxA@mail.gmail.com>
In-Reply-To: <CALYKT1hUcHTnm3s9KuNJ7E04hrqBxKX9DbH=9euzpc7ZyTCwxA@mail.gmail.com>
From: Michael Jones <mike@meshplusplus.com>
Date: Thu, 30 Apr 2020 10:10:20 -0500
Message-ID: <CAJQUmm5qx-kBWtHpMjVS4tD0ipe=Oo5GtabJjVQOOF-xWq5YSg@mail.gmail.com>
To: Jeonghum Joh <oosaprogrammer@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_081035_272439_74AAD2B1 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:235 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Advice needed - Proper approach to port 5G/LTE
 modem into OpenWRT
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
Content-Type: multipart/mixed; boundary="===============2330447309786108040=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2330447309786108040==
Content-Type: multipart/alternative; boundary="0000000000003a667905a4837745"

--0000000000003a667905a4837745
Content-Type: text/plain; charset="UTF-8"

On Mon, Apr 27, 2020 at 9:45 PM Jeonghum Joh <oosaprogrammer@gmail.com>
wrote:

> Hello Michael,
>
> Thank you for sharing the helpful url. I guess mwan3[1] would deal such
> daemons - netifd and hotplug.d. Isn't it? If mwan3 deals with those, I
> guess I only need to utilize mwan3. Am I right?
>
> Thank you for answering my questions.
> Jeonghum
>
> [1] https://openwrt.org/docs/guide-user/network/wan/multiwan/mwan3
>

I've never heard of mwan3 before.

That being said, looking at the documentation page you provided a link to,
it does not appear that it will help you with getting your cellphone modem
to cooperate with the openwrt network stack.

The mwan3 program appears to only care about routing decisions that are
made on top of existing interfaces that are already working, and would not
be useful for getting those interfaces to work in the first place.

--0000000000003a667905a4837745
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 27, 2020 at 9:45 PM Jeonghum =
Joh &lt;<a href=3D"mailto:oosaprogrammer@gmail.com">oosaprogrammer@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr">Hello Michael,<div><br></div><div>Thank you for sharing t=
he helpful url. I guess mwan3[1] would deal such daemons - netifd and hotpl=
ug.d. Isn&#39;t it? If mwan3 deals with those, I guess I only need to utili=
ze mwan3. Am I right?</div><div><br></div><div>Thank you for answering my q=
uestions.</div><div>Jeonghum</div><div><br></div><div>[1]=C2=A0<a href=3D"h=
ttps://openwrt.org/docs/guide-user/network/wan/multiwan/mwan3" target=3D"_b=
lank">https://openwrt.org/docs/guide-user/network/wan/multiwan/mwan3</a>=C2=
=A0</div></div></blockquote><div><br></div><div>I&#39;ve never heard of mwa=
n3 before.</div><div><br></div><div>That being said, looking at the documen=
tation page you provided a link to, it does not appear that it will help yo=
u with getting your cellphone modem to cooperate with the openwrt network s=
tack.</div><div><br></div><div>The mwan3 program appears to only care about=
 routing decisions that are made on top of existing interfaces that are alr=
eady working, and would not be useful for getting those interfaces to work =
in the first place.</div></div></div>

--0000000000003a667905a4837745--


--===============2330447309786108040==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2330447309786108040==--

