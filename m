Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D03FA934
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 05:52:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=l5W409N15p3N6LrQcdEd/O66IsCJpsLjGeom2bHQLkE=; b=SZc
	XdQibIt+Zn7ygUy8zCg86L7rCPpFYJgZWT9WQlaOtwllisFhGfbAmLVK67MX+4EqpJYEKM5McQFgb
	9iirCKKwSOUPpWocBzfrj1J7LCZBARmuw0va1bVFNx5JLsPAp3RrSRGWGLgFjmZb99riU0jKKhVk8
	vhFRw0bFMwzyN+yDYdshMZPo/NtWv8UDICS3Kk7v04t/qr2/3EfeHSddtH/9v+W91p9Srd7pKTjdE
	jjreaodVK7VA/UYnbtCbUVluscazRdRyEdXynsRyKnKw3laE6KrOYVGBcP8LJHJkZy2HHkoAmWMiY
	2eqRzUZCF+IpX2guqQasd0P33kc03rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUkdS-00048g-Rx; Wed, 13 Nov 2019 04:52:06 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUkdN-000486-9A
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 04:52:02 +0000
Received: by mail-qt1-x830.google.com with SMTP id o49so1191967qta.7
 for <openwrt-devel@lists.openwrt.org>; Tue, 12 Nov 2019 20:52:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=4XO2mKRCUQRQ7XycBwOvvCgMdrdx5Pj6fUz3IQ0nAbQ=;
 b=kDaLo9r/i3XyPptmKFN0p4qMjmvmc+qM+sjC1MHo35sIBGJ+SyighBWtQ+9QfP345A
 VNxH2vKhVcbB6M9NYXpYZ6kQuUYb3H7eMvWEaK/GecEQe5YDeiPVbhiYAOEpUD9zH/lw
 L/zu61mwUgp08tAJQovsYNoEb/yYatLxauCtP/1AKsc8srZrtoWW0esVn62b/mXvG9hj
 8PZCBQzZo//GfX+4RJvSxzE7ERgdKoFVfCB9ODIjYtzWKBgKVcWlhs4RIV0WHXAhB+6h
 rCf/Icmyw4sLorDWGiyMLdPWorj4H0CEyTd1BGm9VPQoUVUMiL6C7VaIKeaNM3aDGnNq
 zLZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=4XO2mKRCUQRQ7XycBwOvvCgMdrdx5Pj6fUz3IQ0nAbQ=;
 b=FOwD24BIGjMAZNd1ZufNwBPzUomG4tNlYB/RQ5hwQFnyqZktyNaOgdR0pskbLMi4ZB
 IeDPvPNwqPsl4MRm30lKJRbVh6rhjO2n3T3hPsDJiyi5FK41oRcmr0pBVeXyUsBecf93
 0aE5GxyVxRGVAck1qHp11uNxNXkTEm8P3ABIwphAnK1ggdQ+6XAAHGY7QDNEjPSiJS0y
 cTKaW4Df4KRSe+B36lKT9uEC1jDrsNgFdAvROUzAbcsPhHb57viCMDBWJ/pYleRQ6h5U
 iPbEOG34T7apvOniJ4zOuCPiUolV4rqrp0otUIv/9BW/noFHtRpSES26P4sAf4olan9r
 IKeg==
X-Gm-Message-State: APjAAAWt8UPXaw4yHcvTDdYViYiBHb2ol2IK5p4J+LzjexBf4x9IOf6m
 MMCFNPUFR8e6g42a6uhXXmSAzW6ACNMAMwc+gvssjscOGxE=
X-Google-Smtp-Source: APXvYqyMmrOfZJ2fS0TnriKAV96YPWzvh4yxVTTC6wJb6fPPalQTG1KUTw7S7Ewe3UeCMjrnmvUXGTjjxA7u3F4S4ws=
X-Received: by 2002:ac8:244e:: with SMTP id d14mr947301qtd.388.1573620719287; 
 Tue, 12 Nov 2019 20:51:59 -0800 (PST)
MIME-Version: 1.0
From: Luiz Angelo Daros de Luca <luizluca@gmail.com>
Date: Wed, 13 Nov 2019 01:51:48 -0300
Message-ID: <CAJq09z7aucMwTgmd3RAd9g=rok3FRxQ3xRnm3grNOhUk_WeRFQ@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_205201_365436_96780644 
X-CRM114-Status: UNSURE (   5.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:830 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luizluca[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] Download link not working for 18.06.5 and 19.07.0rc1
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
Content-Type: multipart/mixed; boundary="===============0774041662317272923=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0774041662317272923==
Content-Type: multipart/alternative; boundary="000000000000fc00690597331f03"

--000000000000fc00690597331f03
Content-Type: text/plain; charset="UTF-8"

Hello,

The OpenWrt front page has a "Download a firmware image for your device"
for each released version. However, the last two links are currently
useless. Both show no devices.

For 18.06.5, it seems that something somewhere must be updated from 18.06.4
to 18.06.5.

For 19.07, it could be only a temporary issue while in RC. However, if so,
OpenWrt should not advertise that link for now.

And please, hide "Firmware OpenWrt snapshot Install URL" and "Firmware
OpenWrt snapshot Upgrade URL" from a ToH link that filter support for a
specific release. It only allows the user to wrongly install snapshot
versions.

Regards,

---
     Luiz Angelo Daros de Luca
            luizluca@gmail.com

--000000000000fc00690597331f03
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>The OpenWrt front page has a &qu=
ot;Download a firmware image for your device&quot; for each released versio=
n. However, the last two links are currently useless. Both show no devices.=
</div><div><br></div><div>For 18.06.5, it seems that something somewhere mu=
st be updated from 18.06.4 to 18.06.5.</div><div><br></div><div>For 19.07, =
it could be only a temporary issue while in RC. However, if so, OpenWrt sho=
uld not advertise that link for now.</div><div><br></div><div>And please, h=
ide &quot;Firmware OpenWrt snapshot Install URL&quot; and &quot;Firmware Op=
enWrt snapshot Upgrade URL&quot; from a ToH link that filter support for a =
specific release. It only allows the user to wrongly install snapshot versi=
ons.</div><div><br></div><div>Regards,</div><div><br clear=3D"all"><div><di=
v dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature">=
<div dir=3D"ltr"><div>---<br>=C2=A0 =C2=A0=C2=A0 Luiz Angelo Daros de Luca<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:luizluca@gma=
il.com" target=3D"_blank">luizluca@gmail.com</a></div></div></div></div></d=
iv></div>

--000000000000fc00690597331f03--


--===============0774041662317272923==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0774041662317272923==--

