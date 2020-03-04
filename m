Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB251795CA
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Mar 2020 17:56:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tVED3igDhftt1Z63F3KEwXrvKLn8kcFqRX0KiTHw09E=; b=U3g
	LptNe0hbRh4KzVeZ6mEW9XeW+a/ODpQwHxo+eF7ne7dHux0jUlTj1zHCgI1FH2MuODTPbkuaFrBvx
	b/KVOraJqvCYa217s7tky53iZHqTxCv5ZOl3sxsZHZw4OJcuPVY8oazqbKUJbLbgLHSwJ0edEqhbI
	G7MrhGJ16J4IQ7hKqVZW8eYlqC/n67Sjn1OCx1pcPLmsVJyovRJWchhOLf7NZujiTSHHqR5gtOIe2
	Plw2bxYEO7LGni8u30yQE5DpEjPuXQl8HJv8bC8sSzYNH1ZvwKTc4dSq8r7EBMGqksaRuIMKvqK//
	ZPvLDk5xh/K3YGNfqJBqCdw/Dvwrj1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9XJi-0002nZ-4N; Wed, 04 Mar 2020 16:56:18 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9XJb-0002mt-JR
 for openwrt-devel@lists.openwrt.org; Wed, 04 Mar 2020 16:56:13 +0000
Received: by mail-pj1-x1029.google.com with SMTP id cx7so1146994pjb.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 04 Mar 2020 08:56:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=S0FM319Hsw3TW0CgWXHWwmGQc/oT9wt5f39l4CLs+bA=;
 b=uK3fUDi/NvEPfKkb6UW+9hzmbC4I+xkgHgGNaeOARphfuRIHblmygnktQKi34eDod5
 LT3hXYkuc2fzaF9UiiOVxA3u7EV6S5CO2nmoZQ5LsIUGIhHDmVGSnBlRRopushj3EK28
 7xU4U8+r39UdvhifbAItazDf0Q1M7ZUfLFm3kHjjQuamneWRNc38UqY+gKzpTbxd3cmO
 BzFSqpXgpgGgXQNeEd6TN+NGrWVcp0OxNtB3deGNT0rdp71DmhIo145q7uOxWmlFQPSN
 7P38291eOoV6lfiFWtBcmmMOI3LRDkbFZSJFZfLTOPMKOVwuDBHCATiskqgwTgajJKBu
 J1Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=S0FM319Hsw3TW0CgWXHWwmGQc/oT9wt5f39l4CLs+bA=;
 b=WsXzx6AzCTQpPEAwlbAfT+xghwNflnj6hqfiZuU6r+xwgw1+Lw9RBJpzxSaJW3F1Lm
 ERJ/79cz6E3yUVw1MutWb3ZmsRT1Vs3rnq2R1CCdwlb5lr4cOyG4vlHD1l1uYQ8RvY3c
 1J11mfMvG0zOcGWQkRSHMIraa1Sa1VglDymcloqdqsIiKYeDTibwX4KDlrd+KEDiOcb7
 iQI+IOmUMSiUW+pzjqAHZgYzIjZNuz24GHNz750bfn6QruYz6zUER7lavsgtpWhnrIj/
 BLBRFJsDEipalQ7XWln8yVZ/k7gZxqbMbMMl7yCM1jArvybE4wSlICOY6fBwlKhDP1tw
 84Pg==
X-Gm-Message-State: ANhLgQ2Ioi9wpzwntVCv1TYmxPL0p+0JUew/QEH6RFZ/HNhAVvLQSQiH
 ROH1Kntli1XDv1TSJLQEYUsdgfVnsVhfYvjzV19utM+5
X-Google-Smtp-Source: ADFU+vuaHwsRUNlNz3CvmnE3Wra+HQtYd4i8rr8sHkgBPgU/8TCFqGYVd+V+Kh/hUICRLxVMzvCDwbZDx71bT5TzyI4=
X-Received: by 2002:a17:90a:b10e:: with SMTP id
 z14mr3951911pjq.158.1583340969887; 
 Wed, 04 Mar 2020 08:56:09 -0800 (PST)
MIME-Version: 1.0
From: Luiz Angelo Daros de Luca <luizluca@gmail.com>
Date: Wed, 4 Mar 2020 13:55:58 -0300
Message-ID: <CAJq09z6cj4ZAbBQkvia__V4A=988WFij3QtiqCjtv8mHBg32mQ@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_085611_656138_9F6F9AC3 
X-CRM114-Status: UNSURE (   6.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1029 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [luizluca[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] ethernet broken on ath79/tl-wr2543nd since upgrade
 to kernel 5.4
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
Content-Type: multipart/mixed; boundary="===============5560205525748608436=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5560205525748608436==
Content-Type: multipart/alternative; boundary="000000000000118e3f05a00a4caf"

--000000000000118e3f05a00a4caf
Content-Type: text/plain; charset="UTF-8"

Hello,

Since upgrade to kernel 5.4, I got no network with tp-link tl-wr2543nd. It
failed to initialize ethernet driver:

With 5.4:

[    0.747634] rtl8367 rtl8367: cannot find mdio node phandle
[    0.753186] rtl8367 rtl8367: using GPIO pins 1 (SDA) and 6 (SCK)
[    0.759900] rtl8367 rtl8367: RTL8367R ver. 0 chip found
[    2.584910] random: fast init done
[    2.799942] libphy: rtl8367: probed
[    2.839257] libphy: Fixed MDIO Bus: probed
[    2.847887] ag71xx: probe of 19000000.eth failed with error -2

With 4.19:

[    0.744922] rtl8367 rtl8367: cannot find mdio node phandle
[    0.750555] rtl8367 rtl8367: using GPIO pins 1 (SDA) and 6 (SCK)
[    0.757212] rtl8367 rtl8367: RTL8367R ver. 0 chip found
[    2.586809] random: fast init done
[    2.801820] libphy: rtl8367: probed
[    2.840548] libphy: Fixed MDIO Bus: probed
[    3.217608] ag71xx 19000000.eth: connected to PHY at fixed-0:00
[uid=00000000, driv]
[    3.227646] eth0: Atheros AG71xx at 0xb9000000, irq 4, mode: rgmii

I'm using serial interface and I'm testing using initram.

Wireless and swconfig seems to be OK. However, I get not eth0.
Does anyone have a clue where it is broken?

Regards,

---
     Luiz Angelo Daros de Luca
            luizluca@gmail.com

--000000000000118e3f05a00a4caf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>Since upgrade to kernel 5.4, I g=
ot no network with tp-link tl-wr2543nd. It failed to initialize ethernet dr=
iver:</div><div><br></div><div>With 5.4:</div><div><br></div><div>[ =C2=A0 =
=C2=A00.747634] rtl8367 rtl8367: cannot find mdio node phandle<br>[ =C2=A0 =
=C2=A00.753186] rtl8367 rtl8367: using GPIO pins 1 (SDA) and 6 (SCK)<br>[ =
=C2=A0 =C2=A00.759900] rtl8367 rtl8367: RTL8367R ver. 0 chip found<br>[ =C2=
=A0 =C2=A02.584910] random: fast init done<br>[ =C2=A0 =C2=A02.799942] libp=
hy: rtl8367: probed<br>[ =C2=A0 =C2=A02.839257] libphy: Fixed MDIO Bus: pro=
bed<br>[ =C2=A0 =C2=A02.847887] ag71xx: probe of 19000000.eth failed with e=
rror -2<br></div><div><br></div><div>With 4.19:</div><div><br></div><div>[ =
=C2=A0 =C2=A00.744922] rtl8367 rtl8367: cannot find mdio node phandle<br>[ =
=C2=A0 =C2=A00.750555] rtl8367 rtl8367: using GPIO pins 1 (SDA) and 6 (SCK)=
<br>[ =C2=A0 =C2=A00.757212] rtl8367 rtl8367: RTL8367R ver. 0 chip found<br=
>[ =C2=A0 =C2=A02.586809] random: fast init done<br>[ =C2=A0 =C2=A02.801820=
] libphy: rtl8367: probed<br>[ =C2=A0 =C2=A02.840548] libphy: Fixed MDIO Bu=
s: probed<br>[ =C2=A0 =C2=A03.217608] ag71xx 19000000.eth: connected to PHY=
 at fixed-0:00 [uid=3D00000000, driv]<br>[ =C2=A0 =C2=A03.227646] eth0: Ath=
eros AG71xx at 0xb9000000, irq 4, mode: rgmii<br><br></div><div>I&#39;m usi=
ng serial interface and I&#39;m testing using initram.<br></div><div><br></=
div><div>Wireless and swconfig seems to be OK. However, I get not eth0.</di=
v><div>Does anyone have a clue where it is broken?</div><div><br></div><div=
></div><div>Regards,<br></div><div><br></div><div>---<br>=C2=A0 =C2=A0 =C2=
=A0Luiz Angelo Daros de Luca<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <=
a href=3D"mailto:luizluca@gmail.com">luizluca@gmail.com</a></div></div>

--000000000000118e3f05a00a4caf--


--===============5560205525748608436==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5560205525748608436==--

