Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1088A1D1
	for <lists+openwrt-devel@lfdr.de>; Mon, 12 Aug 2019 17:02:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gc7U9kwX1Fx5tys5x6ANexF/+yJDr0O+R4G13pHfVNc=; b=VMBXVgxNFjHYDd
	mqKNt/YZW8wFWJMwNELole6tRjadoEvvA94t2IKx76j80iA9NIyIzMsTemhs99d9FDN75OZZjE1/b
	tUJRJT5aH9n5jp1APzkBE9aGc2QjqcuSa5ptBW18gQ0SBCXhDg7xKKuG4EjieR4e+fodkcHUrkWHn
	LCZ/tltSv3S493bPhVxWTmWb82A1EN9F2sr21Xp+kRtwYFagGf2E6ahV3xrFj7R9IqgfOIxC45wjb
	1UiZilrPWWzXIJ/V5U5cSFlfhc+7dsqT7jdB6mAhZqkV+ivqrw5APZxhsvZMo5BpS0mo2IHOvBeha
	mKzNfMxDqK+LOFtXr7Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBqU-0005dc-3c; Mon, 12 Aug 2019 15:02:50 +0000
Received: from mx4.wp.pl ([212.77.101.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxBqJ-0005cv-WB
 for openwrt-devel@lists.openwrt.org; Mon, 12 Aug 2019 15:02:42 +0000
Received: (wp-smtpd smtp.wp.pl 20761 invoked from network);
 12 Aug 2019 16:55:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1565621757; bh=0JtjefUYaANC4zqd1ZKjWRc6y+EPg4MKij4pHzLqZFI=;
 h=From:To:Cc:Subject;
 b=FdSDXqlqMhj8syX0DflTvfTogUAiqmk6qruM1mbkYBXzRgOeghBGCsm13c4u3Z0NX
 HrNcsPgzFr9MQx5N5Nxu8vPX0xaDJ6e99qF1iQKne2NiZiSVOLyaE3kZjMPpp8wO5T
 MmctbdKsxORPrisbmyMlCwon9r2sTSz7vw5rIaus=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <mail@adrianschmutzler.de>; 12 Aug 2019 16:55:57 +0200
Date: Mon, 12 Aug 2019 16:55:52 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "Adrian Schmutzler" <mail@adrianschmutzler.de>
Message-ID: <20190812165552.45e58561@kosmio.komorska>
In-Reply-To: <002101d55109$648a04e0$2d9e0ea0$@adrianschmutzler.de>
References: <20190811223921.572cda5b@kosmio.komorska>
 <20190811224828.70d51721@kosmio.komorska>
 <002101d55109$648a04e0$2d9e0ea0$@adrianschmutzler.de>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 9df2a4a5ecae3a01833ec98eeb71bfbe
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [IcP0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_080240_220053_FFE39380 
X-CRM114-Status: UNSURE (   6.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.12 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v3 5/5] ath79: add support for Netgear
 WNR2200
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256


Hello,

> 
> Same comments as before, and an additional one below.
> 
> > +&eth1 {
> > +	status = "okay";
> > +
> > +	compatible = "qca,ar7241-eth", "syscon", "simple-mfd";  
> 
> Doesn't that disable &eth1?

I guess your concern is "simple-mfd"... Without it, ethX interfaces get
rearranged (eth0 become eth1 and vice versa) and whole setup becomes a
real mess, no network etc. I spent hours trying to find a working
solution then found hint in commit:
https://github.com/lede-project/source/commit/f43e8f90049fbbf7961854660c09e88fb7555ef2
It affects only ar7241-based WNRs. 7240's are fine without it.

> 
> No chance to create additional DTSIs?
> 

Initially I planned common DTSi for 1000v2/612v2 and 2000v3/2200, but
then had second thoughts about it. It's perfectly OK for rebranded
models (like 612v2 and on150r), but here we split device configuration
between two or more files with IMHO very little gain - LED and key
config is completely different for each WNR device yet it consumes most
text space. So I would prefer to keep each WNR* router in separate DTS
for clarity sake, I hope it is OK for you.

Should I reply with v4 patches here or create new v4 thread ?

Best regards
Michal
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEi7ylFMzTSbpOuOZIHU8//LdGKWsFAl1RffgACgkQHU8//LdG
KWvJMRAAnwKfdFXQgyvSXHZCBaE3QHkrinSyDAbfveerEehFNtkm2Sr+ZfAyKCMu
dl8+t0/fMXYJrKTxkCn5gwhPGHHlymsBQoF8GQLFxQuakrzzWUde3jl6F1EuZg8l
HjacPCQpFgkCdqePNl7Io/A63agAZ3uPjBbT05a+AJWgxPVCmyc1n16I9lp0fZpJ
R0mErddFLrkxJd/qPto1qtIt0kP78W4WGMftSd0/vKbh+33TRy/fVFRS2CtzFUzY
hKADxbZ1rm7JGH2k8QfXZdvAaEjcy+tqDx4wG0FDfpUcVkR0SMRoD7LCC0LTXHAC
kiw/iPZM0nuS4eP3NieTwRbRHgXjpFMEmuPIRcgfJt4BIcmzMI7wXxd7MvSGgEXP
Q6/v98DHl6+/G6Mkv53WmqKAmUSfnuXGXum5QypwxEGLZrFNfQR8aszhV+GcxWAh
MiDet2mFnIglDqyJ8ArPeibi0ZFMV7xdHRHCBnbEWuE+wDpyryUAcOO36+3+qELL
ulNl53y7TwgqBVQEBseYweD/TPUsSQ+6GNKH+nTDdlbcj75Vs80762uu9TC225xP
Ql+wVdGBuqDxLP15qxm5bJGl7zuaK5rw6d0kgjBEehsIv4CQa+1o69iF3SbCwDfi
ZU7dfMmI5j27xM95Nm8KajOBWAEyn8QYEhRgoa8OgNXjAjMAtNM=
=j7WW
-----END PGP SIGNATURE-----
_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
