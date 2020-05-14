Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF17F1D292A
	for <lists+openwrt-devel@lfdr.de>; Thu, 14 May 2020 09:54:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TAtWt1pb6nRwfJq8hTqHx0jHYKGr3+4eXq+o5G9Ao5Q=; b=RFd
	IyeWIR042FkGp9ZPuEL+rJQgEduOrjg9KkWzG8A0s0CZMUDGRdg05bmcG1nCQvSo2ufbLdwUH0SgF
	tKoJVOpQf49/cQFQtJ8gxPjDjIThgjIk21dtqLy6od8ZfRLaLIdRXjgcz+XEYmB3UoUEou1+Owbue
	kZcqtd5jpdXSJ4dClGkkuu/3qtC82ybzKR7p1Omrb3SdZBF8d6Bb45wMR9QZtumvgGmR/3BkVKjr0
	xZYFgsIdIA7qQ0kazApJ1n4DZHT71Ie9eI+qUtuiMr4l42vmNCdeBgOXE0Sz+DxybbXBhoBqsPHBQ
	h1bgdSqff7yl9gM8S+SB0ru7l3xubNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ8he-0005e9-1F; Thu, 14 May 2020 07:54:50 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ8hT-0005d4-Gn
 for openwrt-devel@lists.openwrt.org; Thu, 14 May 2020 07:54:42 +0000
Received: by mail-lj1-x230.google.com with SMTP id g4so2455398ljl.2
 for <openwrt-devel@lists.openwrt.org>; Thu, 14 May 2020 00:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=samknows-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=9EQhugnnJwtnSeL64Q777vBV2/X6BS79u3p+qe31erc=;
 b=wmV5C90Xpi0u4RcbhmwMlD6N+OKA9HimrCphy6CmmgWlXODyUEkJOZ4RamJjjsZUZM
 h/+dxVSG1FPJnzei1pLTF8EqFWiuoWw+U2g+AOAA9h6cW9pQ8zgaPNgQWm624l/npgOj
 WDlDUAmsxg8wr38TrHIB4azd5sfy6S0Kn64H912J2Aqy6mZvSvMFsZLcF+XGqzZ67YTR
 nQj/vxIt4jn/5Mil7/bngdSF3qf7kLjnrFgBBtQZLa1+rJTuqbR6ftJQGQsMQoRBkSGH
 9Ktmyy/yahBtfCw6Dt+GeRLoFcVVFDPu3l81l8YKPs9m1tzT+ezXZXaZCxnLtdVuUg77
 cjvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=9EQhugnnJwtnSeL64Q777vBV2/X6BS79u3p+qe31erc=;
 b=J7OJwYc0LD8WPksJOn3lQHI0aK3AZrjKs48h8M0+1fwolWBmlk1OkfUEgEUaX9KROO
 K8OPQQqcgcmxO8aafk8DXCNp9Li8lgByoqKjTHnYfKEL6Xvtamp7Bqez1Mt5N0AjF74Z
 WJd9VkaQULDbPQ03ZT+XvV/z9BB/bTzc4Q5EVQFn2kmxMt+QOAZ/8f3fPaf5d8zgGod+
 C2OxRCSbbdP2PmWa9c51dN0Zr+3Lzz1WLag4BQK9DGkPHUIh041c2VdxaIYcnaY5lqNg
 ReKRdeJVZrxzNRgujxXAl+DZeAX4pwjhofAyog/IBvYMDZLxvj98fyfUCOsWcPvyJ9mT
 VECQ==
X-Gm-Message-State: AOAM5339BexdzAQrrf9LJuuLuiRW33vzt05dtNkycjUIpuDI3AnmmyJy
 ijR3V+ARTLHLxBsClQ5qeaWtH6hfzeWg6sQOlhVg77MVZdE=
X-Google-Smtp-Source: ABdhPJwSSECms1kTQt2bPWZozM7WHM1nBEtIeXMDxd+bi5s/Fwqz0oDoNhj4z1Ck4Dybzy4mqWR0Od/g/Ml6DhCq4uA=
X-Received: by 2002:a2e:9cd1:: with SMTP id g17mr1486979ljj.184.1589442874692; 
 Thu, 14 May 2020 00:54:34 -0700 (PDT)
MIME-Version: 1.0
From: Sam Crawford <sam@samknows.com>
Date: Thu, 14 May 2020 08:54:21 +0100
Message-ID: <CAH5X0x=KoSL+=JCDFaRMA7Z_ZORo99OHG+e1ffgjTcfHoy9Xng@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_005439_618047_2F2E859F 
X-CRM114-Status: UNSURE (   5.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:230 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] ath9k on Archer C7 V5 can't see packets in monitor
 mode - paid contract available to help resolve
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
Cc: Cristian Morales Vega <cristian@samknows.com>
Content-Type: multipart/mixed; boundary="===============0824115222470130633=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0824115222470130633==
Content-Type: multipart/alternative; boundary="000000000000eff13205a59701c2"

--000000000000eff13205a59701c2
Content-Type: text/plain; charset="UTF-8"

Hi all,

We're using Openwrt 19.07.2 on the Archer C7 V5 for a client project, and
have hit an issue that's blocking our development.

Given our tight timelines on this project, we'd be very open to paying
someone with ath9k experience to help us resolve this on a contract basis.
We're based in London, but the work could be completed entirely remotely.

In summary, when putting the 2.4Ghz WiFi interface on the Archer C7 V5 in
monitor mode and monitoring an active channel, we see zero Data packets
captured via tcpdump. We see a few Beacons, but no Data packets.

We've reproduced the issue on multiple Archer C7 V5 devices. The issue is
_not_ present on the Archer C7 V5 on its 5Ghz interface - 5Ghz capture in
monitor mode works fine. The issue is also not present on the Archer C7 V2
(different QCA chip), both for 2.4Ghz and 5Ghz.

We are using OpenWrt 19.07.2 downloaded from the OpenWrt website, but have
also tried 18.06.x.

The issue is described in more detail with reproduction steps at
https://bugs.openwrt.org/index.php?do=details&task_id=3094

Thanks,

Sam

--000000000000eff13205a59701c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br><br>We&#39;re using Openwrt 19.07.2 on the Arch=
er C7 V5 for a client project, and have hit an issue that&#39;s blocking ou=
r development.<br><br>Given our tight timelines on this project, we&#39;d b=
e very open to paying someone with ath9k experience to help us resolve this=
 on a contract basis. We&#39;re based in London, but the work could be comp=
leted entirely remotely.<br><br>In summary, when putting the 2.4Ghz WiFi in=
terface on the Archer C7 V5 in monitor mode and monitoring an active channe=
l, we see zero Data packets captured via tcpdump. We see a few Beacons, but=
 no Data packets.<br><br>We&#39;ve reproduced the issue on multiple Archer =
C7 V5 devices. The issue is _not_ present on the Archer C7 V5 on its 5Ghz i=
nterface - 5Ghz capture in monitor mode works fine. The issue is also not p=
resent on the Archer C7 V2 (different QCA chip), both for 2.4Ghz and 5Ghz.<=
br><br>We are using OpenWrt 19.07.2 downloaded from the OpenWrt website, bu=
t have also tried 18.06.x.<br><br>The issue is described in more detail wit=
h reproduction steps at <a href=3D"https://bugs.openwrt.org/index.php?do=3D=
details&amp;task_id=3D3094">https://bugs.openwrt.org/index.php?do=3Ddetails=
&amp;task_id=3D3094</a><br><br>Thanks,<br><br>Sam<br><div><br></div></div>

--000000000000eff13205a59701c2--


--===============0824115222470130633==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0824115222470130633==--

