Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B65A28A11B
	for <lists+openwrt-devel@lfdr.de>; Mon, 12 Aug 2019 16:31:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+XpPxfnvxqz3uenU3GPvZK0n2bW6S8A/Pk2oKdF0OBk=; b=X5wH7odqFnpQ6S
	RvV/oAwdNeX1oN3kW6SDg3G5ncP/d1g1sL9dmahZ/hK32gkdvnq1bP1bXilmTgG7JS3Jk0JwGWKu5
	oxAScGZUZmAFTGidId5GgUV/4uHz1vhoM7WxDLtjNiKQMU7aluuCD8t6DzMB0seXjirmFpW7gL5oI
	G+OBJuLxSfsHyyMs0EiPvfroblqegChErwDmDn7wLn8UPXI59kPwsjjAtTVtgJ9Z6HqwMLwmc0/tm
	i9WBQfIPEJEb/uFMtZTrQkH7YWw9WD1szN/TqZXaagGn6SUR/ceoU+VzVQrmoI+2wthYdGmvXznXw
	cMEWX7QEl6hbUV+NE2Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBM4-0001yH-Bg; Mon, 12 Aug 2019 14:31:24 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxBLs-0001xm-Az
 for openwrt-devel@lists.openwrt.org; Mon, 12 Aug 2019 14:31:16 +0000
Received: (wp-smtpd smtp.wp.pl 3883 invoked from network);
 12 Aug 2019 16:24:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1565619868; bh=sQX5TwmrIoJDyaoxAdnppXCM9B0WqwcrXKXMWgJa9v0=;
 h=From:To:Cc:Subject;
 b=cHrZXt6cWivqADAqUHriERggs5eoQ8le2SVGf4pAlx9+DkpCqKug/9LF78nFwQH3h
 ey8jw2D3c8Ask099ttQTfjtnxn13xz1qz9MBT0KR8658V790VSSAD2rySyG6OZQmgV
 HGhvcZXOVEsCgBucJ+le9Z4zFm5Kv+sbC8O7Mtgw=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <mail@adrianschmutzler.de>; 12 Aug 2019 16:24:28 +0200
Date: Mon, 12 Aug 2019 16:24:22 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "Adrian Schmutzler" <mail@adrianschmutzler.de>
Message-ID: <20190812162422.139de0d2@kosmio.komorska>
In-Reply-To: <000001d55107$bf37e530$3da7af90$@adrianschmutzler.de>
References: <20190811223921.572cda5b@kosmio.komorska>
 <20190811224252.3641e63f@kosmio.komorska>
 <000001d55107$bf37e530$3da7af90$@adrianschmutzler.de>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: c8341803bd9dab715222bafd4ff72120
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [ITP0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_073115_094069_212BAE25 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.9 listed in list.dnswl.org]
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
Subject: Re: [OpenWrt-Devel] [PATCH v3 2/5] ath79: WNR612v2: improve device
 support
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

On Mon, 12 Aug 2019 14:16:18 +0200
"Adrian Schmutzler" <mail@adrianschmutzler.de> wrote:

> Hi,
> 
> just two annotations below.
> 
> > -			uboot: partition@0 {
> > +			partition@0 {  
> 
> You could also just keep it. But that's just a matter of taste.
> 

Hello Adrian,

This 'uboot' label was used only for MAC address extraction from
u-boot partition (kinda strange, I couldn't find a clue why it was
expected there), so I decided to remove it.

> >  &pcie {
> > @@ -116,6 +122,8 @@
> >  	ath9k: wifi@0,0 {
> >  		compatible = "pci168c,002b";
> >  		reg = <0x0000 0 0 0 0>;
> > +		mtd-mac-address = <&art 0x0>;
> > +		mtd-mac-address-increment = <1>;  
> 
> Calibration data is read here:
> https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom#L184
> 
> Does this device get a MAC address from calibration data? If yes, I
> would prefer that one to a calculated address and remove the entries
> in DTS.

Nope, it should be calculated. In theory, according to Netgear uboot
sources, it should be in ART region at 0x108c but in all devices I
could inspect that area was empty (0xff). ar71xx target also derives
wlan0 MAC from ethX MACs.

> If not, I wonder whether your setup here will persist or
> being overwritten by some "wrong" address during calibration anyway.
> (Then one would have to use ath9k_patch_fw_mac in the linked file.
> 

MAC addresses for all interfaces are correctly assigned with this
patchset in place (tested), so apparently nothing interferes here.

Cheers
Michal
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEi7ylFMzTSbpOuOZIHU8//LdGKWsFAl1RdpYACgkQHU8//LdG
KWteAg/+NDDlrQ8C3iG2Fl1MsUOumMv0SI1Z8RZ9y2wVYaBJxJiREJiL7aKc2G6y
5kIMKyjKtpE9hgegJrkJ7Dr22eo8tPjjbKNEAK6nYR3R4wAuefLkA5j3o17T4+Ih
NGYoqdEIbfvpj/K8JHOBQbWnQiotZ9EQBW2lJI3oUDBHGutlzMloygoZJdh7jfba
gCnZ8SLU2FzfwJcp+c4VGmqnfS0VpSQsmVe47fUwevvsxyheB9DmqqsizjV+CPrw
+rZvn91iSjt/Wb87vEGqhfKBu3lYfI8zXAXDzSAQIf8r5fYCavxiH+F5FCEzR52a
1dgFFi4SAzv5SQfwL7tcC4xdCmKm09QBiC7GZACbwInKAdF2S7UJ/9QjNc9qmDwx
ICYUb3qDMEhessnTSWDOvUcEIh/SP4wxLa0GMP+ZiNCMlNT8Ik37/85+S+HMZNwR
y0i9OduFUFTh+yjpMRuc30iI8GQOFMiyVumWJyuciKpWV89i4byx19txHy4Z5+jy
6Aol8rVM/f1UQv4gWg0704J8oRrDARZbDU9FfC+67BJzeo2ceIRDiI5J4+Q52/O0
2ZSGYOZbL4owQ797FRroorSxyu523UHWrZ7OQEks5y0a2OO/pLvu7wfADG1+kLv+
46B6KlfggNdxGuScu/IYcLbbOroyFWDneIQSDS92g9Y0CEy8ZJA=
=DopH
-----END PGP SIGNATURE-----
_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
