Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 373F5E9AF5
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 12:41:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fzw2fqQq2eVZxXYHZDc1OOo3N2NVFoVM011R9ECOpwM=; b=f+6IFWqElUgowl
	jPLgPPwxzdToPExjOJiNCHQmriMeIeLS8Yatf//MZITxyx2aX3/TzL+sa2k0ArCZhndwnKiCnFEUY
	DBcnuTrzJGKufK5xLF+ON4Lv6PhB9P6l49Xd1zHGQHftktq0oXavAEDX4pB5xnaFyP+6Ei93g5hWj
	wf9CDHtAe8Aa/Prjsgl1EfPmlTnBMqBc5SREpHHy+prTJgIUhjvt2gDL3uiyYAc2q7FR63oBbmtpN
	kR50mH8UGFJySyXOAzMMetiZjOdp7SaG7wvQKPl2J0NJN6dqu5t9S4F7mezUJUgFYdAmdGla792j8
	LpDMnwbIvEcIhRQV7xzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPmLR-0007cX-GM; Wed, 30 Oct 2019 11:40:57 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPmLI-0007ay-Dk
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 11:40:50 +0000
Received: (wp-smtpd smtp.wp.pl 806 invoked from network);
 30 Oct 2019 12:40:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1572435645; bh=415svQbRQGnp4csMikVrUGoi3EC4M3IThkPsePWwlag=;
 h=From:To:Cc:Subject;
 b=ydgKb/0cJ+fuJ/0BZCL1zB3e0jXuU9kns8hwBVcnjhdNWMR7Mm26p7oR9YM9JzxHr
 lCUAjDZ9zj2xVxVB9Qk1L4QTQhEvoOqbaN2n9ieye/gVqarpj6ccQ2NK/s3BMj74Xd
 Q9E9/nXXbFk+olJvBqupdzBKwlA1XkwUpX3zIAIs=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 30 Oct 2019 12:40:45 +0100
Date: Wed, 30 Oct 2019 12:34:08 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191030123408.5e8dd3fe@kosmio.komorska>
In-Reply-To: <20191030123221.7a0af3ea@kosmio.komorska>
References: <20191030123221.7a0af3ea@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: ebc4ead65bb6f6c6147dfc40e232b20a
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [QZNE]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_044048_982576_0C2CB930 
X-CRM114-Status: UNSURE (   5.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.9 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.77.101.9 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: add support for Netgear
 WNDR4300
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello,

This patch supersedes WNR4300 patchset:
https://patchwork.ozlabs.org/patch/1175066/	(obsolete - removed)
https://patchwork.ozlabs.org/patch/1175069/	(updated to v2)

It contains changes proposed by Adrian (remove redundant lan_mac
setting from 02_network; change MAC label to eth0 in DTS) as well as
following changes:

* scripts have been rebased to apply after base-files split
* dts: add internal port #6 setup in ar8327 initvals (as uboot does) so
  it no longer shows 10mbps half duplex in swconfig (it does not affect
  5 external ports)
* 10-ath9k-eeprom: ath9k_eeprom_extract changed to caldata_extract
* 10-ath9k-eeprom: extract 0x440 instead of 0x800 bytes from caldata
* router added to uboot-envtools

nand/config-default has been removed from patch, now device bases on
default kernel config for NAND because it already provides required
functionality.

Sysupgrade also have been fixed since old patchset and it works now.

Best regards
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
