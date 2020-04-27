Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E571B9ACE
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 10:52:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=or9WxnoC8FJsVyM1nTovyhElBUXn/RPTOAaio3ttjWY=; b=dsY
	jPJE03SFbwtVRW32bF8aI+jK+8/bEkNRItkxbA5wL48fLx15a36/3foagWhyVBzhPfX7l0TbH7TK6
	tCfpwb2D8769NOUmES51408zNmb+wJX7pSpfceLYcxQ5ErrimWDUTvWHvTSOXccPfpqWl2n0BIj/v
	QgFM+n8kA7E3MD2txPNleFPatOUzJthsepRNCoPTwjsqPt5DIqw3MXqqKwcngE89sQpZTrMu4/MS4
	X1pQ2SUB75Z7v7LMSzNgVkKeBaWnAp2kGuZCCpk0xhSNpyfbo49sWvwRPzmQnaW9B6EYoBvUlD2f8
	wslWB6xDSEdqHFL/jTy2Z+k3XTwBoqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSzVD-00015K-Fi; Mon, 27 Apr 2020 08:52:35 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSzV6-00014a-Go
 for openwrt-devel@lists.openwrt.org; Mon, 27 Apr 2020 08:52:29 +0000
Received: by mail-ed1-x532.google.com with SMTP id s10so12835847edy.9
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 Apr 2020 01:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=+b4fyKKDZVEzfL4mApcmcHGQsWAYTFsUpvCHgaY9Av0=;
 b=ZLmMlTEjRrc3AxSWsaxoYOJDAlh+F1qIJtCTecou92CDT+kv4rPvpY+RhG9hcXGhYp
 fSEfmzJfO2BGGTkGWBwV4o/7o7tz8bUmjExFmiXzHDoz7E4Dx5SfS8fN8oDNry2c/4nX
 s16usMA/wy4MMPqZuU8xBUW76lWZi+UYUmaDPbEpI9eWrsmK11AuGU42o7xQFxv+ic3f
 WcLQqcgGqRk7xEQTDKDK3pz0AhWn2BtTxPj9rKQJ9CP9P42QfyOxP0OtXuRDV5asVpHQ
 q3Bgqf14CrNzdUPGjXhcOLmcGmj1vpjGwuBwHbC8OjIZXiSnt3vfZXTv15K6sMPr7QNX
 tzzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=+b4fyKKDZVEzfL4mApcmcHGQsWAYTFsUpvCHgaY9Av0=;
 b=nL+FLXmJeKLgGTMAILA8RHLITgEvbNuEuvpXcRd5i3mQKwwo+DMFhLZwWNmseVAvO3
 E59AMy09zt4VnqpurnGJapgeTkxQ0OacrTcJUs7LJAIjjiGXrlWvA3Af53BnSd0S814C
 PvpNOpMnBfbz/i9Wmro8mS5nJ7JIu/CvGLjtEOaQOG/WWjeCeqVXFPIk3q2LAiekWZhe
 2yh9DxET5VQZZzDduhTAPO+HilDjGyytRs1SmBCeKwr10ox6Z+M79HwZiveHIT3UEdJo
 jmKBvfzRx3dOrCGGumS+wqaFqis/GjnRTcnbobxnJ4CSWme2zYngg3fOmDP9sNl9ZQEM
 Wgqg==
X-Gm-Message-State: AGi0PuYxSqofK2/bgIdL+JlO4gDMyelDMQIW8hFljPIpzZjOu71QRNwo
 SUTCTV2JaI2eh2wpOyJHkp440fRGqgZRsUkhJrUsA1cEWMg=
X-Google-Smtp-Source: APiQypL2L0W/B1J6XaNkhK9rfgh2iu7eHRtaHBVEp81gBPGgfiEFnmfGQJ7GiuHAUcgVZcf+XOYIJdIh6TBz8EANViE=
X-Received: by 2002:a05:6402:310b:: with SMTP id
 dc11mr16997762edb.143.1587977546008; 
 Mon, 27 Apr 2020 01:52:26 -0700 (PDT)
MIME-Version: 1.0
From: Jeonghum Joh <oosaprogrammer@gmail.com>
Date: Mon, 27 Apr 2020 17:52:14 +0900
Message-ID: <CALYKT1jbVZ_YkHVZzJ2-CFb=8RxzjmtZM9R1CRhM86=AjC6jFw@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_015228_585188_1D776E30 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:532 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oosaprogrammer[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Advice needed - Proper approach to port 5G/LTE
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
Content-Type: multipart/mixed; boundary="===============2109342793764433063=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2109342793764433063==
Content-Type: multipart/alternative; boundary="0000000000008a8b6e05a441d5a4"

--0000000000008a8b6e05a441d5a4
Content-Type: text/plain; charset="UTF-8"

Hello,

I am porting a 5G/LTE modem into OpenWRT.
The modem provider provided a connection manager (CM) linux daemon. This CM
sets up the usbnet adapter interface which is wwan0. And it brings data
connection via this interface wwan0. And after the bringup finished, it
sets up firewall rules and routing settings.
But during the CM is doing these jobs, the rest of the OpenWRT daemons do
their jobs too! - bring up network interfaces. set up the firewall rules.
and routing settings. etc.

But these two jobs ignores each other. So one configuration overwrites the
other. For example OpenWRT sets up the firewall as the /etc/config/firewall
declares. But the CM deletes these firewall settings and sets up it's own
settings.

I think the CM has to follow what others in OpenWRT follow. But, the
problem is .. I am afraid how I can figure out the rules that others follow
in OpenWRT.

Let me list up problems I think of .. :
- firewall settings on both side ignores each other.
- wwan0 I/F that the Modem brings gets up later than other I/Fs like eth0,
ra0, etc.. and even it gets brought up after the rest of the OpenWRT
daemons have finished their initial set up.

Is there any guide documentation I can refer to?
I'd like some documentation :
 - that guides how to port these modem in OpenWRT.
 - that guides how to start daemons in OpenWRT that has modem with.
 - that guides when something needs to be set up during
initializing/booting the OpenWRT that has modem with.

Thank you very much in advance.
Jeonghum

--0000000000008a8b6e05a441d5a4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I am porting a 5G/LTE modem into=
 OpenWRT.</div><div>The modem provider provided a connection manager (CM) l=
inux daemon. This CM sets up the usbnet adapter interface which is wwan0. A=
nd it brings data connection via this interface wwan0. And after the bringu=
p finished, it sets up firewall rules and routing settings.</div><div>But d=
uring the CM is doing these jobs, the rest of the OpenWRT daemons do their =
jobs too! - bring up network interfaces. set up the firewall rules. and rou=
ting settings. etc.</div><div><br></div><div>But these two jobs ignores eac=
h other. So one configuration overwrites the other. For example OpenWRT set=
s up the firewall as the /etc/config/firewall declares. But the CM deletes =
these firewall settings and sets up it&#39;s own settings.</div><div><br></=
div><div>I think the CM has to follow what others in OpenWRT follow. But, t=
he problem is .. I am afraid how I can figure out the rules that others fol=
low in OpenWRT.</div><div><br></div><div>Let me list up problems I think of=
 .. :</div><div>- firewall settings on both side ignores each other.</div><=
div>- wwan0 I/F that the Modem brings gets up later than other I/Fs like et=
h0, ra0, etc.. and even it gets brought up after the rest of the OpenWRT da=
emons have finished their initial set up.</div><div><br></div><div>Is there=
 any guide documentation I can refer to?</div><div>I&#39;d like some docume=
ntation :</div><div>=C2=A0- that guides how to port these modem in OpenWRT.=
</div><div>=C2=A0- that guides how to start daemons in OpenWRT that=C2=A0ha=
s=C2=A0modem with.</div><div>=C2=A0- that guides when something needs to be=
 set up during initializing/booting the OpenWRT

 that=C2=A0has=C2=A0modem with.</div><div><br></div><div>Thank you very muc=
h in advance.</div><div>Jeonghum</div><div><br></div></div>

--0000000000008a8b6e05a441d5a4--


--===============2109342793764433063==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2109342793764433063==--

