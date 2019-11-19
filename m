Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B76E0102F98
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 Nov 2019 23:56:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JX+owFGQID+7EoTG3pM/5TGdl9uk7wSsjysdBebUinI=; b=GI8994eBQR7ALH
	g8S2dEnOvLOyg2Qg+N3bV48HZ3NXBbAiwMEdfBVKHr7Qv7/kMNLz/yi+vF8PV+vtqnGGYypwipEIz
	9j66u2uyHiHtLrq+dx8ZK4sE4OgQOcHfWMUfYJE09DZNJikrfNe6LKUnT/z+IqNBMxXRF34//Y8yb
	rbNI/EmazmBbDk3jSKs+BZXnnb4y4WGdy4b26eeJgTyweSSNGg69L6doC7X2p6ih0ciFD6kcqqsc0
	gJ5GDeOz8HxchFXOBvc+Ngq8O8gO88fXCE/QDx8OZ226l7TQxg4AjPNHJhf1ADLBXyaW7clPm5UkK
	2fdcx//bF77X2S/HzMfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXCQL-0008IG-OJ; Tue, 19 Nov 2019 22:56:41 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXCQA-0008HN-Q5
 for openwrt-devel@lists.openwrt.org; Tue, 19 Nov 2019 22:56:36 +0000
Received: (wp-smtpd smtp.wp.pl 1811 invoked from network);
 19 Nov 2019 23:56:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1574204185; bh=wwdDReE4+vGQSJZhpHvh294wB3sDBf0Io26Heas3WQg=;
 h=From:To:Cc:Subject;
 b=e/frWxzza34LIBSNKn5etIRVktv2QynnBaAU1eVC5G8NMhml3JAGfYlceT75x44DE
 XqnUX05w4TtAsGERVysOAQam0fQRbMfI7dBmVcy3z1Ig0zl+b/wicA6gAU5q7YKvhn
 VVQGO0b0UC0m0CTnm9roY8K1Fz2DkmsWCtc0tX9I=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <jonas.gorski@gmail.com>; 19 Nov 2019 23:56:25 +0100
Date: Tue, 19 Nov 2019 23:56:24 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: Jonas Gorski <jonas.gorski@gmail.com>
Message-ID: <20191119235624.4ce1853d@kosmio.komorska>
In-Reply-To: <CAOiHx=kZ27wDd4K+=eT-RLSmknbTiGjyF+9Aa5e8_FbRgHU6GQ@mail.gmail.com>
References: <20191112140214.59f2971f@kosmio.komorska>
 <04615660-e813-7bc1-1e75-a51c289fd518@david-bauer.net>
 <20191112192234.721c6a6e@kosmio.komorska>
 <20191119161737.2fa01dc3@kosmio.komorska>
 <CAOiHx=kDgJjSbRCqrm9A6=GjR9HYkgZ4gYdvemV2-3cbXHemFA@mail.gmail.com>
 <20191119173322.512c6669@kosmio.komorska>
 <CAOiHx=krODnS-PizVk3Y5arY69JSzVT9A8bTV28K_cUJs_pJ=A@mail.gmail.com>
 <20191119175900.0038eb08@kosmio.komorska>
 <CAOiHx=kZ27wDd4K+=eT-RLSmknbTiGjyF+9Aa5e8_FbRgHU6GQ@mail.gmail.com>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 34a4a01cce60947efa14606fe5ed263e
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [8UMU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_145634_932059_B8C5A682 
X-CRM114-Status: UNSURE (   4.57  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: enable all space on Netgear
 ar9344-based WNDR routers
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Adrian Schmutzler <mail@adrianschmutzler.de>,
 David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> 
> Typo, I did mean factory.bin ... . The type you use to initially flash
> OpenWrt ;-)
> 

Ok, that will be factory.img. There is no factory.bin image for that
model to flash. If someone needs it badly, img file is 128-byte DNI
header prepended to bin file (kernel + fake rootfs).

Regards
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
