Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE00185C72
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Mar 2020 13:52:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:To:In-Reply-To:Date:Mime-Version:Message-Id:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cBBGzI594euPc7bmkg0hpkwK4dhettpWavzxD18sE18=; b=m5lgrJ5lz02BkgJq0ehSm6kSE
	fundcTUT8i6KWVS8eCZoyNs6vfxgOnaV2vunqclc48/saSSkid15zKLWj12iPo/U5bZz0xMrYKrj/
	fgtBVc8Mit4nZpd/rSvMacI/8H9YzyqV3cihFnjMUvOoyuBGum7vq6d5+7UCjMhA8de1NxJaWcSB6
	IR4W/5HJjJlLc8ZtZ65Kj+8kFegbrCejZU1qV/yEu28T0SKtHzzOnFQeADjth3werTUVULioBPfNi
	CLeh034buKg93AwZ3hc3lknBHmuFgDaByR0wN1HENs5NlOeRZc+Tx0X8u9LFekJyfk2jIQv/gaXym
	/B2E9200g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDSkz-0002Zb-9I; Sun, 15 Mar 2020 12:52:41 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDSkp-0002ZF-Qo
 for openwrt-devel@lists.openwrt.org; Sun, 15 Mar 2020 12:52:33 +0000
Received: from chuck.tardis.lan (161-3-22-171.ftth.cust.kwaoo.net
 [171.22.3.161])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id 3AE34600B1;
 Sun, 15 Mar 2020 13:46:24 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 3AE34600B1
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1584276384; bh=/xOo8s7DvvASA5C8IquRp6t+SsqlFK61S8zCtsOKfmk=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From;
 b=UTPpUazGqA480RqnJKt1nrHd2SYbwG/u7QNhHW2F5GgHx1baZ1brdP906Y+OcoDmt
 dqmEIYHH0TPHpByZWQ88ulMF2dnhZdx0csrd3w39P+UmmpM/5NF1gs9uG3J1Z4zp9T
 TT7URmImM+ykuLfOQoMokLUZ9OShJfM4aFAmYwAI=
From: Thibaut <hacks@slashdirt.org>
Message-Id: <023D58AF-A409-46E5-97A6-C55C1C110CC0@slashdirt.org>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Date: Sun, 15 Mar 2020 13:46:23 +0100
In-Reply-To: <5eb7481d-8874-da0b-c613-d79f74af241d@guifi.net>
To: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
References: <20200314212303.29701-1-hacks@slashdirt.org>
 <20200315103451.34439-1-hacks@slashdirt.org>
 <005101d5fac2$06e7c670$14b75350$@adrianschmutzler.de>
 <5eb7481d-8874-da0b-c613-d79f74af241d@guifi.net>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_055232_035364_960912E3 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] ar71xx: add support for RB SXTsq 2nD
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============5826625843471523880=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============5826625843471523880==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_5220FA49-3242-4E66-A322-17D09E49570C"


--Apple-Mail=_5220FA49-3242-4E66-A322-17D09E49570C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi Roger,

> Le 15 mars 2020 =C3=A0 13:20, Roger Pueyo Centelles | Guifi.net =
<roger.pueyo@guifi.net> a =C3=A9crit :
>=20
> Hi Thibaut,
>=20
> We're actually working on the ath79/mikrotik subtarget, to deal with =
the
> particularities of MikroTik devices and migrate the two currently
> supported. You may want to base your commit on the code at
> https://github.com/openwrt/openwrt/pull/2811 .

Noted, but see my previous message to the list.

Also AFAICT, 4K sector is not currently used on SPI-NOR RB devices: =
enabling it without setting some sane limit will slow the devices and =
might cause upgrade issues.

I have two patches you might want to lift and include in that PR, see:
=
https://github.com/f00b4r0/openwrt/commit/084490569427595123666f6208e91de1=
521530ae =
<https://github.com/f00b4r0/openwrt/commit/084490569427595123666f6208e91de=
1521530ae>
=
https://github.com/f00b4r0/openwrt/commit/9d23bf314e3919ac7a2dd6d64c70442f=
4534a273 =
<https://github.com/f00b4r0/openwrt/commit/9d23bf314e3919ac7a2dd6d64c70442=
f4534a273>

HTH,
Thibaut=

--Apple-Mail=_5220FA49-3242-4E66-A322-17D09E49570C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">Hi =
Roger,<br class=3D""><div><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D"">Le 15 mars 2020 =C3=A0 13:20, Roger Pueyo =
Centelles | <a href=3D"http://Guifi.net" class=3D"">Guifi.net</a> &lt;<a =
href=3D"mailto:roger.pueyo@guifi.net" =
class=3D"">roger.pueyo@guifi.net</a>&gt; a =C3=A9crit :</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div class=3D"">Hi =
Thibaut,<br class=3D""><br class=3D"">We're actually working on the =
ath79/mikrotik subtarget, to deal with the<br class=3D"">particularities =
of MikroTik devices and migrate the two currently<br class=3D"">supported.=
 You may want to base your commit on the code at<br class=3D""><a =
href=3D"https://github.com/openwrt/openwrt/pull/2811" =
class=3D"">https://github.com/openwrt/openwrt/pull/2811</a> .<br =
class=3D""></div></div></blockquote><div><br class=3D""></div>Noted, but =
see my previous message to the list.</div><div><br =
class=3D""></div><div>Also AFAICT, 4K sector is not currently used on =
SPI-NOR RB devices: enabling it without setting some sane limit will =
slow the devices and might cause upgrade issues.</div><div><br =
class=3D""></div><div>I have two patches you might want to lift and =
include in that PR, see:</div><div><a =
href=3D"https://github.com/f00b4r0/openwrt/commit/084490569427595123666f62=
08e91de1521530ae" =
class=3D"">https://github.com/f00b4r0/openwrt/commit/084490569427595123666=
f6208e91de1521530ae</a></div><div><a =
href=3D"https://github.com/f00b4r0/openwrt/commit/9d23bf314e3919ac7a2dd6d6=
4c70442f4534a273" =
class=3D"">https://github.com/f00b4r0/openwrt/commit/9d23bf314e3919ac7a2dd=
6d64c70442f4534a273</a></div><div><br =
class=3D""></div><div>HTH,</div><div>Thibaut</div></body></html>=

--Apple-Mail=_5220FA49-3242-4E66-A322-17D09E49570C--


--===============5826625843471523880==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5826625843471523880==--

