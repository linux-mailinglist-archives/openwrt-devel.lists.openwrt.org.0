Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D88708354F
	for <lists+openwrt-devel@lfdr.de>; Tue,  6 Aug 2019 17:33:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qvMxqlN9fh3ewF4sgZn+S7+D6hud9IG1CHLKnzObCaE=; b=kVRTJ8zTZ32ZGXrEn9XRGUsnoa
	0zwNB9ZKPi4Mxirka3v4Vx+wu2C2jsLkVNDH916pISrVQa4rauz637ofyK5YiIMQuAgRk5Kx2SlnF
	t3Tpo2DoM6/8B6A54CqvwzVb1dSHz7WV5t9967zPSZGFkBa2ge2G/uRUVHlddlKi8Wpa+3wgLxkNZ
	RUetJgbZIWtFBMHRAZb4eOFSBdK/Ek8gjbi8B3dCECJTR/RRCxi+rGf8AOQwiWm3f46gk+VQMQ55i
	IBS8QSNrg+k0bgWAvPqwei+KpFXEDux/oeDxVhCxreP2MFbFceig8fjiOxWAFgJmh6J4L2iwDFlPR
	+DHL4vvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv1SR-0002sW-Qc; Tue, 06 Aug 2019 15:33:03 +0000
Received: from mx4.wp.pl ([212.77.101.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv1SK-0002rq-SU
 for openwrt-devel@lists.openwrt.org; Tue, 06 Aug 2019 15:32:58 +0000
Received: (wp-smtpd smtp.wp.pl 6358 invoked from network);
 6 Aug 2019 17:32:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1565105568; bh=LtLXHJeYpE60ZQAoRIkQNJE037FarAW4lpdmoCBL8xI=;
 h=From:To:Subject;
 b=Z3cXa8FCssQvyWSk3FMtiZlYP1BGKItzZ/JmiLDjOnjiv1aDWrQ0nHjIara2vW56Y
 35n3kYU1u4CiP/lEiT6KEx/7pOxwQ6oR1GjEMAXJUpTIuMJ/JV2N6MWBzf0rQC+DFF
 i2PZ+ErvvZ2cDsgOWV/Lv0ynYWLNHo69OJMwLFkM=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 6 Aug 2019 17:32:48 +0200
Date: Tue, 6 Aug 2019 17:32:44 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20190806173244.7f8ba6af@kosmio.komorska>
In-Reply-To: <014201d54c64$35205690$9f6103b0$@adrianschmutzler.de>
References: <20190806155540.4e27407b@kosmio.komorska>
 <20190806160728.398bc2b5@kosmio.komorska>
 <014201d54c64$35205690$9f6103b0$@adrianschmutzler.de>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: f2968b7451cb5ff0e146efa5f0d5ae25
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [gdNk]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_083257_273778_39943904 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v2 5/5] ath79: add support for Netgear
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

On Tue, 6 Aug 2019 16:35:34 +0200
"Adrian Schmutzler" <mail@adrianschmutzler.de> wrote:

> Hi,
> 
> > +&pcie {
> > +	status = "okay";
> > +
> > +	ath9k: wifi@0,0 {
> > +		compatible = "pci168c,002e";
> > +		reg = <0x0000 0 0 0 0>;
> > +		mtd-mac-address = <&art 0x00>;
> > +		mtd-mac-address-increment = <1>;
> > +		mtd-cal-data = <&art 0x1000>;
> > +		qca,no-eeprom;
> > +		#gpio-cells = <2>;
> > +		gpio-controller;
> > +
> > +		usb {
> > +			gpio-hog;
> > +			line-name = "netgear:power:usb";
> > +			gpios = <4 GPIO_ACTIVE_HIGH>;
> > +			output-high;
> > +		};
> > +	};
> > +};  
> 
> Sure that this is the correct location for the usb hog?
> 
> Best
> 
> Adrian

Hi,

I decided to put it here as USB is controlled by pin 4 of wireless chip
not CPU. If there is another better formal way to define it, please let
me know. I've analyzed gpio_hog patch for other dts files but all these
routers steer USB via GPIO pins connected to main SoC.

Cheers
Michal
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEi7ylFMzTSbpOuOZIHU8//LdGKWsFAl1JnZwACgkQHU8//LdG
KWsKMg//bj/Wb3O0A61q8tFpbfRqV/O7OXHXjj+pC6v2wCVYkqTdienTCjx2MAnH
HNjr6T50iC00IO0zdQCIzJZHQ0h5WbK0VHH5Ijcl7Igm9+rkLMY2wYDohQjFFR/+
ZczWbULYLR2xsqFDEBCcCaY7VTYuhOz2P08N0vSjqZCNjL/+EQQmODZZJY+bcYuS
+Gyps3QROpuvRE5c4EWPkp0pxgTEqfBjCIVpHtBpqoguNicw+t4uais/F0oY/Su4
bGTcB1tzd8CSiQTtjdF3fxtpv9K5emab4MOYGKmcYzNKp7RP/s9KFRpdb2p14F+S
ke9uG+qxxvF8H5a4dZhmS72tKcy9CyPzFa89YA1ovLL4OsHFa/io7hvNdwe6iJjF
H+8T4SpPJXC+EQdt8XGra5bvRPh2efsp0egNBFRR70dmEP+A67rlpcw4cawSEUC+
vnkEmFTXKVz2UOjiC9YOUyDkUYNKpYtYAqrgpKGmzb7rKRohca34D5Wk5yfRCLZS
DJL2utcFqaZJepWkYo7zqhJYjb/OGmHL2VMfSTVdXtmw/uJz0gkVBAZrQe06rimO
GTvc396eQ+qcQJ4zI0z1JVh5Elf95UJst/0eDaJlrTxGaYfhkYxt8e3miWhfJLBy
eZRHsq4YHE3g3nmrs77Aa6k0Ec3sBiG5RuVkuWep23SgwsYTOVY=
=ODtO
-----END PGP SIGNATURE-----
_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
