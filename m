Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CD8ED146
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 Nov 2019 01:39:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:From:To:MIME-Version:References:In-Reply-To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SRR72mxBOZfu/TyVOacay9kgPgd7zqNthW6ucveP4EQ=; b=WFOgzjE6RsDGt0gfbtipCAMRw
	jumEwZ+Yo3cmYPIQoLIUWwF0iT4vBp9E7Ybkru974ErSqCTUJScCkPp/5buNicRJGIQSguSdhLeKB
	i+A3QFPpdJxJ1BVOBAiHeYakrwCB+UPdP/FV+8ZBemxG5Jm3wQJbG5BA/eNpfKPHc8D4R8rM/mtf4
	ruK6AMLNoiXxkeo3BfhAlERo2tZf9LYGVXLjRH6+H7mR5lM0lKDx+3Q0E6Mzbgg+yohrcQcXbCi6w
	XxRyWvr6q6Ff1VvTpG8AJqK6tVKcsxlbdC3qsjmtkfc/50KWoRp06un934LTkgdpmflQCVNLj8RLX
	JcPdxs5pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iR3vF-00037a-0O; Sun, 03 Nov 2019 00:39:13 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iR3v8-000378-3r
 for openwrt-devel@lists.openwrt.org; Sun, 03 Nov 2019 00:39:07 +0000
Received: from [10.17.122.110] ([80.187.104.222]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N0WPK-1i4Buw3VQa-00wW4w; Sun, 03 Nov 2019 01:38:58 +0100
Date: Sun, 03 Nov 2019 01:38:57 +0100
User-Agent: K-9 Mail for Android
In-Reply-To: <20191103005907.32dbdcab@kosmio.komorska>
References: <20191030123221.7a0af3ea@kosmio.komorska>
 <004f01d58f20$8e12cd60$aa386820$@adrianschmutzler.de>
 <20191030152532.5b67428c@kosmio.komorska>
 <00c801d58f30$1fe4d3f0$5fae7bd0$@adrianschmutzler.de>
 <20191103005907.32dbdcab@kosmio.komorska>
MIME-Version: 1.0
To: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>,
 John Crispin <john@phrozen.org>
From: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <87272FB5-15F7-4A81-9AE7-EC02440FDE64@adrianschmutzler.de>
X-Provags-ID: V03:K1:PYeNtuXYSEo2oHZ5YNYLJEN7qVb8WKq42L2tgKPjflhnw83snna
 9p1lMCM58ik62IWQFaemvOhAslPjvG+JEE1S9JRbCWDaFfyp7X4mA6nm6/SCQzQOZJErGFs
 uGOB7XQ+xjgvp2EFs3KM8XWUQgsCbm0LMxjQCgIrIj8uOxW/S9qtgXFZ10pvhKr4Vv9mrLF
 9JFaphHUNU/kKcHq8VBpQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:l4EEH4OYufQ=:Z0fqv3ZVeS2GJd4B3w6NVR
 z72bZoKpCybLhEUYCUEFlZzVCAiOokwD8ITvNh0aimWlN1YmreDnFFTJxDZH8dctIznIeLV+m
 Y02s1QlXmiqFEXSmAseI86FT8xwbL9igFq+2VeMaYbmI5NF9HIYzxK0Ogfx0XVm2bzsASQqei
 AznrbI8rug4glGnb4mPV2VNStLiKZMERTOLIRuUGEJLLI+zSM03v2M7JOLxeBOLD6n+a3TVJS
 QcCYHkGArSdtVG15ctc/TaUGoA8t/QF6/bgQCVY5l/G09dxpHmax/ggrLrjVJFRgO0BZmdsGe
 57bYj/ttinXVBfyHFfzH3D3KKO0g7lEzuuFg8LPhCttTxezIyCn6ibDCkak5Tska6PDB325oW
 jyPkd8XLX+1w4TLt7PCVIYXojHPWlpiU75muO1itF9oFqe6fa6lNGdT0vjTOlkR0EHWBjvIaO
 FD8bLjAPhClDTck2LO+nCueOdkGeh98hqyuMhfc/UaGWmQUtuI9SGuHWqtVpR25OmY8Sd3JZM
 EfmxIDcYdGTO8/n7k6yF8eZnRhc/IMvTu9OwvSFE/ceodsSCaNKRpW4mWt85BxwEAtnidi4+c
 1EVwbyf0OFzYHpsgWmte97rpyUuFO7uZPMxbko6ulXM8FHtiDiFnGXYkrdHrqHCmf6/xiiIuQ
 37EyIb/7lDTSqeb0PnFfRNg8+2rT1lDoOj6xaNtknrLW4F4pxzLkSUKlj130lvHfG0tXJCgLV
 kH3MkMEaFGd7p9WfPVO9T9j1MR04PPyeBGeggB6VMpkkP9NnKNa6TwIISp0dZ+2tyah3NsT5y
 lobaijc8DswJkerlaN6xOnnuMqhu7NozWGQSrcrCIXi7drRN25OoUhRYRF4jfJpUWyDRLoCfU
 WuIMRRcqFehvxFgYPbJXehJXLUj6O29s2AayBqm7A=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_173906_450839_9C87EABC 
X-CRM114-Status: UNSURE (   4.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [OpenWrt-Devel] ath79: add support for Netgear WNDR4300 -
 patches mixed
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============5876007469711824102=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5876007469711824102==
Content-Type: multipart/alternative; boundary="----OJUZZTT9DQ277QO64AT0Z0CZT9O5YQ"
Content-Transfer-Encoding: 7bit

------OJUZZTT9DQ277QO64AT0Z0CZT9O5YQ
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Already did that=2E

Adrian

On 3 November 2019 00:59:18 CET, Michal Cieslakiewicz <michal=2Ecieslakiew=
icz@wp=2Epl> wrote:
>Hello John,
>
>It looks like WNDR4300 support patches have been duplicated in the
>master tree, that is:
>commit 9b6f89c37fc9c2e23cc123bd7b5cf9a1f8dc301a - this is proper and
>latest v3 patch, that does not create nand-netgear=2Emk file as Adrian
>advised and updates nand=2Emk instead
>then appears:
>commit cd87272eb241b1ea7955c1631ad2bb8d38e9fae9 - this is part of
>obsolete v2 than creates nand-netgear=2Emk file and includes it in
>Makefile=2E=2E=2E
>=2E=2E=2Eso in effect now there are duplicated makefiles for WNDR4300=2E =
My
>advice is to revert the latter one=2E
>
>Best regards
>Michal

------OJUZZTT9DQ277QO64AT0Z0CZT9O5YQ
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>Already did that=2E<br><br>Adrian<br><br><div clas=
s=3D"gmail_quote">On 3 November 2019 00:59:18 CET, Michal Cieslakiewicz &lt=
;michal=2Ecieslakiewicz@wp=2Epl&gt; wrote:<blockquote class=3D"gmail_quote"=
 style=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-left: 1px solid rgb(204, 204,=
 204); padding-left: 1ex;">
<pre class=3D"k9mail">Hello John,<br><br>It looks like WNDR4300 support pa=
tches have been duplicated in the<br>master tree, that is:<br>commit 9b6f89=
c37fc9c2e23cc123bd7b5cf9a1f8dc301a - this is proper and<br>latest v3 patch,=
 that does not create nand-netgear=2Emk file as Adrian<br>advised and updat=
es nand=2Emk instead<br>then appears:<br>commit cd87272eb241b1ea7955c1631ad=
2bb8d38e9fae9 - this is part of<br>obsolete v2 than creates nand-netgear=2E=
mk file and includes it in<br>Makefile=2E=2E=2E<br>=2E=2E=2Eso in effect no=
w there are duplicated makefiles for WNDR4300=2E My<br>advice is to revert =
the latter one=2E<br><br>Best regards<br>Michal<br></pre></blockquote></div=
></body></html>
------OJUZZTT9DQ277QO64AT0Z0CZT9O5YQ--


--===============5876007469711824102==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5876007469711824102==--

