Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 722B68B79F
	for <lists+openwrt-devel@lfdr.de>; Tue, 13 Aug 2019 13:54:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eH8VqFUgIaux6lxca53VihjShsG0hAGIsG9+QJbMAYY=; b=Oh3dlawWJG95Pm
	Aj0y/w/ZoknGTOMnOzIJlrDkGQyrAQfsY9Z9NCE53IBQbCW+Us+4El1awRCrhGhWRqcFH5pG0mQlV
	g/lO4fPkP/WOp9waMPDUyLa+dmD8nAP3s6/8pX6xK4arbzey0MrnE+xlpxDbKlc8DkmfXG76hqGnM
	6sxHQXRZLd3FC7wXq2EX/PpdR8B0oKth8LKk/fRW1c/6xHLjiGtpfKOmAGdupc9YDaFgBW4hhArMn
	ReWqvj20BIFIXd307R3+W1iHmQn2Cx66N08lHsEsG1KIBHt5XW9UasRpx7ONesZkFEpDCdLiRuPNO
	7N09+rAgLwcbnB3UMpng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxVNh-0001Px-8O; Tue, 13 Aug 2019 11:54:25 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxVNY-0001PW-S4
 for openwrt-devel@lists.openwrt.org; Tue, 13 Aug 2019 11:54:18 +0000
Received: (wp-smtpd smtp.wp.pl 11943 invoked from network);
 13 Aug 2019 13:54:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1565697253; bh=rHF2Jo9Qj2KRanOzB2jndUhjVJp9Nft18QK++6WVBAo=;
 h=From:To:Cc:Subject;
 b=mzquQ4zxzpnIoxnJzG73UEVE7IJ5G1GPcMmoWNC+nu4ImbjSrZzXosyYYdMmZqFdG
 ElrXn7+plHkwnOheDbcK2C/GYYp9mr9QGVJtEm/yP7uYBkGzHbzK4vW9loOZMYxszg
 t8dktIiFiiDDosqgaCa/aGbfv8MRkoS9Y7fuuY90=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <mail@adrianschmutzler.de>; 13 Aug 2019 13:54:13 +0200
Date: Tue, 13 Aug 2019 13:54:09 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "Adrian Schmutzler" <mail@adrianschmutzler.de>
Message-ID: <20190813135409.7ee0062e@kosmio.komorska>
In-Reply-To: <00c101d551c6$cce609e0$66b21da0$@adrianschmutzler.de>
References: <20190813104658.17f88b71@kosmio.komorska>
 <20190813105207.2ebe4fed@kosmio.komorska>
 <00c101d551c6$cce609e0$66b21da0$@adrianschmutzler.de>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 02c5ee43de24a86e825cee35b46771fe
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [EWNk]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_045417_093592_97A34DCE 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.9 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH v4 3/5] ath79: add support for Netgear
 WNR2000 v3
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

On Tue, 13 Aug 2019 13:03:55 +0200
"Adrian Schmutzler" <mail@adrianschmutzler.de> wrote:

> > -----Original Message-----
> > From: openwrt-devel
> > [mailto:openwrt-devel-bounces@lists.openwrt.org] On Behalf Of
> > Michal Cieslakiewicz Sent: Dienstag, 13. August 2019 10:52 To:
> > openwrt-devel@lists.openwrt.org Cc: Adrian Schmutzler
> > <mail@adrianschmutzler.de> Subject: [OpenWrt-Devel] [PATCH v4 3/5]
> > ath79: add support for Netgear WNR2000 v3
> > 
> > This patch adds ath79 support for Netgear WNR2000v3.
> > Router was previously supported by ar71xx target only.
> > Note: this is a 4_32 device with limited upgrade capabilities.  
> 
> Sorry, found two things again.
> 
> > +	ucidef_set_led_default "wan-green" "WAN (green)"
> > "netgear:green:wan" "0"  
> 
> Can this be done with default-state = off in DTS?
> 

Probably copy-paste from ar71xx files. Tested on WNR2000v3, setting
state to off is not needed at all, so another one line less in v5. 

> > +&gpio {
> > +	status = "okay";
> > +};  
> 
> I think this is not required as gpio is not disabled. But please test.
> 

Again, WNR2000v3 confirms what you suggest, gpio is enabled by default.
Marked fo removal in v5.

> As those changes are minor, maybe wait with a v5 until you receive
> feedback from someone else, then ...
> 
> Best
> 
> Adrian

Fair enough, in the meantime I will proceed gradually with testing
pre-v5 on all 4 router models...

Cheers
Michal
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEi7ylFMzTSbpOuOZIHU8//LdGKWsFAl1SpOEACgkQHU8//LdG
KWsRMhAAj8xLox2VKzcJ+MLoDShgnL56tAEqzm9sLDIuhFxWfbnM5CsKtB4Q+fRS
K/9Da3JIe8LqNmom3KYPX4l8mXJYLw1fUbqte2miZVC8IfIZYlPp048JsYQvIuCi
kksH8shFigNxUz6u5pazhyOeY7zjR9f5mb/6CAMLigjt5lEwrL3NbL1iCveFaRFF
rlEYeEWoK+GLHFXCKCMAZIo3QL25OG+pkuIV2RgPuXBzmeQnClWbGKhbuzrqoF7Y
wW4GMdLgj/HG3v5HbzWiPXVjZElI1ZPjaUSTKE4625wA6V5AQ6vbTmhSL5BxjPky
j3Fb/4klOUv0bea9JcfOe0IX9sCs+VNFbE9yeI8FCmcEN4h48qbtihQFCwfcqT7E
VpH6pIWBXBJ8K1ZxYlnBLW6X5nQy++coi7O7K3BsPEimd8hHr/DIeAMJC4zprwbE
n05Yqr3gk9kJ6D/YQW1gUxzAKREV30YYD/xx3lML9ypnb226zdxPrnhj+0+hp0zj
tXY3GfXM48yWivhGNBn8PX5Pb6PPBaJYyOKGox06y8PXjgyUFSITJymn9ZvjK5my
1Zv68gR5TIaJf9LZ0+dsA8zXCle0PxkImsS902/pJfIG7QgqtI7OYaW7ZrCM0D4I
keg9WKtuA95cdZrsLIozHJItGNLh1gOmY1fWPeGZsCq2jltbngw=
=ouzk
-----END PGP SIGNATURE-----
_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
