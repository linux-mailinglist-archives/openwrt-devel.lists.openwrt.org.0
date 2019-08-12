Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B5A8A118
	for <lists+openwrt-devel@lfdr.de>; Mon, 12 Aug 2019 16:30:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HJ+N6UTmb4Tun1VatotU7XnzH0FX5Eqe3NoNhGtR5mM=; b=dHm8wSsfrYogig
	TxZm2ynTHpjKW6/hzxai9zsE4+ORb/3VnnZLPSRyWgy2/In5XiDYUG8Q5/+QyiCMXziTJ/lUOaKJo
	ThptCTHmrJ5R5vUljzj9yN5uFWmECnwpBlEflJolQGNrLJi79IroveeqL9Nc/Y0FLToN/DQQ4jJzW
	svt6CeJVeQs1clKRrfuzgqXHhuLBQBCF+TQ5uvByFBYQngRhMRJ35tYKOu2fZ4nw/2Bvt1Dvpp7nO
	I+4rlREiWLxdUgUnDraTep5rluMA78/5YdgDQCu1igoq0gGy7bin23NXRWNFwYOdyoT24Pbsc8W4+
	NGdiS50ON6kSoLivAGgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBKd-0000Mq-7g; Mon, 12 Aug 2019 14:29:55 +0000
Received: from mx4.wp.pl ([212.77.101.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxBKI-0000Ls-8o
 for openwrt-devel@lists.openwrt.org; Mon, 12 Aug 2019 14:29:36 +0000
Received: (wp-smtpd smtp.wp.pl 25796 invoked from network);
 12 Aug 2019 16:29:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1565620168; bh=TH85K1IdVCz3LEKqXqSXP4UcjTbWFiBKDlaWB6BT8Bo=;
 h=From:To:Cc:Subject;
 b=E5oSOzHRRrGPxkFyfTJ//LvqkLko8P9AkOcED767PpR2HnFyLLFJP3y+QI7EtFLlp
 x4mNrd3xd0QUCdlxlWfxEUmSAUe6B5eE4lfB8WkqD9c/F6yrbJu9OF6DQzuKRJBr7W
 dbTLm9WYwwUBW5IYI0XEW1eIsoFzWmbjpI2/DR48=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <mail@adrianschmutzler.de>; 12 Aug 2019 16:29:28 +0200
Date: Mon, 12 Aug 2019 16:29:27 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "Adrian Schmutzler" <mail@adrianschmutzler.de>
Message-ID: <20190812162927.187802d4@kosmio.komorska>
In-Reply-To: <000b01d55108$a98631f0$fc9295d0$@adrianschmutzler.de>
References: <20190811223921.572cda5b@kosmio.komorska>
 <20190811224446.3334b7e6@kosmio.komorska>
 <000b01d55108$a98631f0$fc9295d0$@adrianschmutzler.de>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: bf3ec0e9d75994589fc77f706c2db25b
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [ceMU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_072934_653276_0BF75877 
X-CRM114-Status: GOOD (  12.44  )
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
Subject: Re: [OpenWrt-Devel] [PATCH v3 3/5] ath79: add support for Netgear
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

On Mon, 12 Aug 2019 14:22:52 +0200
"Adrian Schmutzler" <mail@adrianschmutzler.de> wrote:

> Hi, comments below, too:
> 
> > diff --git
> > a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
> > b/target/linux/ath79/base-
> > files/etc/hotplug.d/firmware/10-ath9k-eeprom index
> > ec597dd1d4..747c1aab58 100644 ---
> > a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
> > +++
> > b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
> > @@ -165,6 +165,7 @@ case "$FIRMWARE" in winchannel,wb2000)
> > ath9k_eeprom_extract "art" 20480 1088 ;;
> > +	netgear,wnr2000-v3|\
> >  	netgear,wnr612-v2|\
> >  	on,n150r|\
> >  	pcs,cap324|\  
> 
> You are using mtd-cal-data in DTS for this device. Does this work?
> Then you should be able to remove the entries in 10-ath9k-eeprom.
> Otherwise, remove mtd-cal-data. Based on the result, you may want to
> change the other devices accordingly.
> 
> > +&pcie {
> > +	status = "okay";
> > +
> > +	ath9k: wifi@0,0 {
> > +		compatible = "pci168c,002e";
> > +		reg = <0x0000 0 0 0 0>;
> > +		mtd-mac-address = <&art 0x0>;
> > +		mtd-mac-address-increment = <1>;
> > +		mtd-cal-data = <&art 0x1000>;  
> 
> Despite comments from above, we have the same situation regarding MAC
> address here. Is the MAC address read via cal-data already? Then act
> as described in the previous patch annotation.
> 

Hi Adrian,

Thanks - I've just tested it on WNR2000v3 and apparently
10-ath9k-eeprom is the working solution. So mtd-cal-data will be
removed in v4 patches from all WNR* DTSes.

> > +	};
> > +};
> > +
> > +&uart {
> > +	status = "okay";
> > +};
> > +
> > +&gpio {
> > +        status = "okay";
> > +};  
> 
> Leading spaces here. Change to tabs. And maybe check all your files,
> as I just found this by accident and did not look everywhere ...
>

Yep, I've missed it... Fixed in v4.

Cheers
Michal
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEi7ylFMzTSbpOuOZIHU8//LdGKWsFAl1Rd8cACgkQHU8//LdG
KWt2yg//T291n1+luMfAaldqSDWJ8gLIkRCzxsI4S9uKNUCzNFzp0L22pu9/a/9y
EmcXJVhUbLx0iKO3HBKQKMmnUrNy12bJP6FFQQgRbaLyoawRI1rqOirpQjYSP31p
pde+KVEmxL87RjGZP6yhN1hb8QMHpZuHrHOI3BWI4XvQtGlpHMmzz82dn4na/u+K
CQ1SZf4w3UPFSUt17/ujAFzec++fRoDCYy9PKPVLPcjuY6Th8KuA2f0+WeJefGQg
z+D05HrKPFz8iXqPXLU+MAe76c4ZMYvpT6c9jalDCzte9y6H3CWpDrzPz0hTdr/a
qNMLds8weDZoR+Db0+vG21qX1f0IzbQ0pnoS8Nc/mEoALZEpZWuEOzwI9VMG/dqp
k1PpVRcInNr+FkLlOu2a5DgLvLRX6ao7g5deE31SgAR+F6RwFXtMgNMpnmZhgt9C
QL/dnxwrjFvRxROu8Cg2ep0L/Bj+fpeHD5HlM7YxVPb8KY24wJc8njjZZ9u4k9kd
CbREMM3Avq/BMz3iL40mTPlsb1ywiDqkBXrPPAvNY4PVgLY5vbbCSK0d5/vjIgPT
CfojnIwmp2/M3CvQZxXTXg0nxkJ6xDqDJfKb/CooDBgx14j/m14qInYRnisIm5OE
f8J84b0oxsCtEi6v32aadrmdrOvZGKeaB2yyI0T7qc3WnYb2J9s=
=dRDJ
-----END PGP SIGNATURE-----
_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
