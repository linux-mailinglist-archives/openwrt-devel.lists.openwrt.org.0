Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CAFB3425
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Sep 2019 06:37:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IjsFKzk+MsItx9Ggl26OtKkRyYzoWqfk728xyXPxHjE=; b=CCJFrVHCD5ImbsUEzuROXjBBu
	poSXpuZG2rKtCuTQVcmytGt7IipL+ncmLEWG/Rr9IsvKIpJxNT7pGu5hW+nML7ovlFkwoNMu/qN8b
	qX+lsOr1QzJkaUT8b2R6k3TvtBXpV9LI+5zUtoKPg3unzmkpKtbi0dMLH+CMGZVvBp9e8tL4ZCjcO
	1u9alBlkkfYMWE4vel7dAbFI3w67fXUzoU7rr/8Z/ytrQOSOsvsM0GuQw9oSaK5K8BHgC/UfWRF+p
	vmYUtB+01FHTFBAMPrxaHJj8THaNT/JUlnqQDK6WBP6TxV6TlPYIGebk9j0x3Ncy04cyvIYdDVYP7
	a1sJ2FPBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9ilU-0003SB-MQ; Mon, 16 Sep 2019 04:37:28 +0000
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9ilM-0003Rl-IU
 for openwrt-devel@lists.openwrt.org; Mon, 16 Sep 2019 04:37:22 +0000
Received: from player157.ha.ovh.net (unknown [10.109.143.189])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id 0D97A227706
 for <openwrt-devel@lists.openwrt.org>; Mon, 16 Sep 2019 06:37:12 +0200 (CEST)
Received: from RCM-web1.webmail.mail.ovh.net
 (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
 (Authenticated sender: rafal@milecki.pl)
 by player157.ha.ovh.net (Postfix) with ESMTPSA id 88A359C4892D;
 Mon, 16 Sep 2019 04:37:06 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 16 Sep 2019 06:37:06 +0200
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: mail@adrianschmutzler.de
In-Reply-To: <001601d56bab$825cd800$87168800$@adrianschmutzler.de>
References: <20190906051054.18311-1-zajec5@gmail.com>
 <20190906051054.18311-4-zajec5@gmail.com>
 <00ca01d5688f$722dbdb0$56893910$@adrianschmutzler.de>
 <001601d56bab$825cd800$87168800$@adrianschmutzler.de>
Message-ID: <10544d0647c31082c1c0938f8a2e747c@milecki.pl>
X-Sender: rafal@milecki.pl
User-Agent: Roundcube Webmail/1.3.10
X-Originating-IP: 194.187.74.233
X-Webmail-UserID: rafal@milecki.pl
X-Ovh-Tracer-Id: 1258474620917091962
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedruddvgdekjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_213720_761187_CD5DBD86 
X-CRM114-Status: UNSURE (   4.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [87.98.178.36 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] treewide: sysupgrade: use
 $UPGRADE_BACKUP to check for backup
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
Cc: 'John Crispin' <john@phrozen.org>,
 =?UTF-8?Q?=27Rafa=C5=82_Mi=C5=82ecki=27?= <zajec5@gmail.com>,
 'Jo-Philipp Wich' <jo@mein.io>, openwrt-devel@lists.openwrt.org,
 'Jonas Gorski' <jonas.gorski@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

please use text/plain for your e-mails

On 2019-09-15 11:54, mail@adrianschmutzler.de wrote:
> please also backport this to 19.07, since the variables for ath79 are 
> still wrong there.

That was on my list and I've just done that

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
