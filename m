Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC191A483E
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Apr 2020 18:10:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=roDou2Bj1PlyHrZBZazTTxAwSY5wx6MWjzICDq+t5rw=; b=Hi1IorkjfgEWO67gnS7kGMe3Xz
	duCCpfzpXpWo1x8zDTCjXB6a8BISk31VMazlF7/hjVRd+utoV/s/WWBw5bbsBQaGi6qKjRo+L7KiB
	jM5HaVXsqCQwQLXLG4/v5klE1ecIp1LayN/CNqEdL8uIKCrN3FuS5DUXNpjzdYzVR742SbK6uTghw
	MTgVuhCAiaUrmXAzCmZTh7D2HO8lgXCeTD21SPiAq/UNzEAB/5zhe9q8Co5NUPxpRDWfbXMJ11mYP
	a0FKdcFqRZxRwu228h9KNnKY61kOCSRPkZ+Bo3nouEKPX2NZcR1YQei0PXtnu/NoZ66gFlT1xsZNN
	wOZZUHGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMwEC-0000Ey-FO; Fri, 10 Apr 2020 16:10:00 +0000
Received: from dazzle.geroedel.de ([2a02:180:6:1::b3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMwE5-0000E6-DC
 for openwrt-devel@lists.openwrt.org; Fri, 10 Apr 2020 16:09:55 +0000
Received: from [192.168.15.2] (helo=feeble.bln.roederer.dhs.org)
 by dazzle.geroedel.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <devel-sven@geroedel.de>)
 id 1jMwE0-0002MS-5Y
 for openwrt-devel@lists.openwrt.org; Fri, 10 Apr 2020 18:09:48 +0200
Received: from strike.bln.roederer.dhs.org ([192.168.8.36]
 helo=strike.localnet)
 by feeble.bln.roederer.dhs.org with esmtp (Exim 4.92)
 (envelope-from <devel-sven@geroedel.de>) id 1jMwDz-0001iV-Pw
 for openwrt-devel@lists.openwrt.org; Fri, 10 Apr 2020 18:09:47 +0200
From: Sven Roederer <devel-sven@geroedel.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 10 Apr 2020 18:09:47 +0200
Message-ID: <2892195.zbzIBODrR9@strike>
In-Reply-To: <b5c15de9-5d32-2a99-922b-22b4fb1056b8@iki.fi>
References: <87eeszs9uu.fsf@miraculix.mork.no>
 <b5c15de9-5d32-2a99-922b-22b4fb1056b8@iki.fi>
MIME-Version: 1.0
X-Spam_score: -2.9
X-Spam_score_int: -28
X-Spam_bar: --
X-Spam_report: Spam detection software, running on the system "dazzle",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 @@CONTACT_ADDRESS@@ for details.
 Content preview:  Am Dienstag, 7. April 2020,
 16:22:37 CEST schrieb Hannu Nyman:
 > I do not think that there is a nice clean solution, as I do not remember
 > seeing a solution of different packages for iniramfs, factor [...] 
 Content analysis details:   (-2.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
X-SA-Exim-Connect-IP: 192.168.15.2
X-SA-Exim-Mail-From: devel-sven@geroedel.de
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dazzle
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on dazzle.geroedel.de)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_090953_593887_63BFEEF9 
X-CRM114-Status: UNSURE (   6.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Is it possible to create two images for the
 same device with a different set of DEVICE_PACKAGES?
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

Am Dienstag, 7. April 2020, 16:22:37 CEST schrieb Hannu Nyman:
> I do not think that there is a nice clean solution, as I do not remember
> seeing a solution of different packages for iniramfs, factory and sysupgrade
> images.
> 
> I would approach that with a two-step build process, using two .config
> recipes:
> 
> * First a build with a smaller .config recipe without that large Quantenna
> firmware. This creates the initramfs image, (which you copy to a safe place
> before the second build)
> 
> * Then a second build from a recipe including the Quantenna firmware. No
> need to do "make clean", so the second build is rather quick. That produces
> the full sysupgrade image.
> 
> In your build automation scripts, those two builds could be run
> consequtively, with a copy step between them.
> 

For our Freifunk-build we do a similar 2-step thing

* using a .config having all pacakges added modular and only the packages
for the initrd set to "y" to have them embedded
* doing a normal build produces the initrds and the imagebuilder
* with the imagebuilder we generate the final sysupgrade images with the 
full package-set

The generated initrds are just a luci-mod-failsafe wich allows flashing the 
sysupgrade via browser and of course console.

Sven





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
