Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B76CB8CEE4
	for <lists+openwrt-devel@lfdr.de>; Wed, 14 Aug 2019 10:59:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w/s8/OSFuElQjnIC2Q8IOyiDt7alELBZPtKSmKcdQ2o=; b=AjJlSuwYYja53F
	7QoSSa6E+ovcw0KYC62OFs7V1tPah9hLtkVgDiDnBFkRKDAujkh7IjYOdQ04P2BsVoSbEzShM3jHJ
	gW6XC5bPkna3l78i3+0eZvl+1o0RiNuWrQMYozVKqBJ7EBC8lHZdGFFNhV+WLD79fEI0bd55lsZQu
	fsDDd4WDRaUg4gtBTLJTQ2jmzOlq14fLL56iawp+5sSb886cwqeCaInNymEuDBdCMabc/UQ9IZvg9
	Leh/RAXcxOqeC8q+JdehAWww8dXU2zntJtcUClPCC2UNRSVk/02X6mh6niQkk2uFL9FZ35kDY4fRl
	Uwtny5H+dTn3iMas13Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxp8C-000720-UC; Wed, 14 Aug 2019 08:59:45 +0000
Received: from mx3.wp.pl ([212.77.101.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxp81-00071K-NE
 for openwrt-devel@lists.openwrt.org; Wed, 14 Aug 2019 08:59:35 +0000
Received: (wp-smtpd smtp.wp.pl 25201 invoked from network);
 14 Aug 2019 10:59:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1565773168; bh=1IFwvjWVzmuYGup2UQ9mVYPshU2og+H8o3dQsBSqSHc=;
 h=From:To:Cc:Subject;
 b=h4Vd0uCTjaeToLpYt2y07ME+Rex+/bT7nXiYgQHQUPlov0iqtAsgUTe2N7vs/q6Zu
 1cbtuzKNpBU648X9OoZgo1SjiEhTUq4y/W3Qn+9BN8PCMJwiCd+LhpclAXPibUr7Xl
 umXL3yu/SavFYL3gBsATQbII8nNibG7r9kSkOPBQ=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <mail@adrianschmutzler.de>; 14 Aug 2019 10:59:28 +0200
Date: Wed, 14 Aug 2019 10:59:22 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "Adrian Schmutzler" <mail@adrianschmutzler.de>
Message-ID: <20190814105922.1c713789@kosmio.komorska>
In-Reply-To: <000b01d55108$a98631f0$fc9295d0$@adrianschmutzler.de>
References: <20190811223921.572cda5b@kosmio.komorska>
 <20190811224446.3334b7e6@kosmio.komorska>
 <000b01d55108$a98631f0$fc9295d0$@adrianschmutzler.de>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 0f50d09b2b1b07791cf862a568e3d114
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [cSOU]                               
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_015934_273399_CCF2CF5F 
X-CRM114-Status: UNSURE (   4.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.10 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] ath9k: mtd-cal-data vs firmware bin file
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

Hello Adrian,

Thanks for helping me with WNR patchset, one question came to my mind
in the process of developing it and after reading one of your emails.
Sorry if it has been answered elsewhere...

/etc/hotplug.d/firmware/10-ath9k-eeprom for these routers just extracts
4k of calibration data from ART to bin file in /lib/firmware. I
compared bin file to mtd area and they are identical. Why ath9k cannot
use this data directly accessing /dev/mtd6? Is that 'mtd-cal-data' dts
option for? If so, why does it not work in this case? (tested, ath9k
initialization ends with error)
I recall there was no such operation in ar71xx target and older
kernels...

Best regards
Michal
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEi7ylFMzTSbpOuOZIHU8//LdGKWsFAl1TzWoACgkQHU8//LdG
KWs+Bw/8DJHoJV8rfG8DYDHriwRa9vmRH8Ay4PVA7VDSoA1BJwE990qRmWdyfSQ7
y7v6l3Aq7SowmZ5UBK4K8HPOjQRy17AY4G8WXNjecPhs8Hs2neE3QrJ/LmqXvUOL
RnMyfaLnhkO66hA3I6QMVVYKI2VPCd/mp3EQllJSIZJEohC7OBvimmUc/8Wqhzn5
mtgLYEueSLWQO0jei9Yho7ZEF5auxkyEjDrvhdYimbBqolEYmpw21CCs124AAxVH
Ou11Q+lnLaZo68iA6k/8COjw4ScVKc2m6W0EgjGYRs5OC7lQ2Uu9kpC+NcFGkSik
AZyIC/unFQB6TJsxUkJ+m26DxokOGksk51DjBdUtAOmccfGkc/otHHYDP7YWNcoc
HRhaidJR+ybG+bRTqz9slNJjSJxdPPF5WnVSsPNmlyjd4CP+XZ8P+SdqZg+Ft25Z
PMIVrjgWsUsrFRaIu9zqGlP7F+Tsg0fES8LMXUQT3vE/YFBxzl/i1uRxyxqXpmv3
c/vr+VySe1+kmfQ89qdVAHB2lTFweKOJAEaI4Cdxf0DqSirsyySG0A92pEmv23U0
4xRysEm863e0qdqzaha5RrjTKK+VrmtGvjD9OWHAt6rbwsd69EJlKmQry3assO24
oA/gx/JIcj0etbJCEVEprryWzbjy3OJOX2w1J0iJXY4LXCT6yDI=
=CoJn
-----END PGP SIGNATURE-----
_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
