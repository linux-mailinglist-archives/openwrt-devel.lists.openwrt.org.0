Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F41631AE23
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 May 2019 22:37:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:To:From:Date:MIME-Version:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PiSLAGoLF3pHLF9FUuGMeln6IgwJ/fN8pyvdE9n2ztE=; b=brzScLHYLXeLXh
	rj6nrgEUrkaAA3Bqr3hOzWwNfeTaD6eOQdAuUNc+mse7oSfIZ8qVPtGIICnz+uC22KIwMlW4pWH4Y
	CM8DJWPZy3tpxyGtZIUzUzv4hqsF/J/k/5Q9ud0tC84Jk72Opc/o12IIanPI8C6mSqmomFqocOvXZ
	Tq3fdJTSI+RvlrJw7kO6tqMk+Fb1mg/m6O42JHAChzygBKd+5lwU6hZLWQV9ADqxB1SPYpHvXR+Yw
	vLqluC2HS4urToX7zr36pT4P0fjuFAxgrDgCQzAqLxtE2Xp6JjC3I2J7CNLXNNdue0peiAn7V70Fy
	nxCwfZwAPYLbBhVhY5Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPvE4-00025E-CO; Sun, 12 May 2019 20:37:40 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPvDz-00024v-7K
 for openwrt-devel@bombadil.infradead.org; Sun, 12 May 2019 20:37:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-ID:Subject:To:From:Date:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yk2bfFFlQxoeK8sRWXB1I1BO/O3/RViTgjl/V5LFvYM=; b=uArejHsV0CQdmyvgXjfXMZ4KF
 42Ku8lxTQ7j7oEPIsg5QnpgnI2XRk5AurS9U5RcixwNIe3FUHL4n4Q5l6uHK+WZu8Qs2QvmbsNO7H
 KcSoNMvfM7KbYdpr7p1wyIBHIH7oaw7INNr0d0byX5XLrRHrAopJAfQd7UAgLwEeRK1Xn+KgFF2Yq
 U0nYXwmNGbbC/Bjuf6pxEIxP7ncCMqLURF3YOkECw8zftIV+KqNr+5XyDM+0xyHYsWd86i/n6WXsK
 yWdOnv4PgJ8h/hW2r6WDumKjeGoS35nghipXjaOT6F65mDeKvYjJdYV/FzQ65ZUJhj2I46rzg1hBK
 xT4Smg8nw==;
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPvDv-00078x-Uq
 for openwrt-devel@lists.openwrt.org; Sun, 12 May 2019 20:37:33 +0000
Received: from webmail.gandi.net (webmail23.sd4.0x35.net [10.200.201.23])
 (Authenticated sender: daniel.engberg@pyret.net)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPA id EF8FC240007
 for <openwrt-devel@lists.openwrt.org>; Sun, 12 May 2019 20:37:01 +0000 (UTC)
MIME-Version: 1.0
Date: Sun, 12 May 2019 22:37:01 +0200
From: Daniel Engberg <daniel.engberg.lists@pyret.net>
To: openwrt-devel@lists.openwrt.org
Message-ID: <b9f469cd95bfa5fcd418c6b1aacc38cb@pyret.net>
X-Sender: daniel.engberg.lists@pyret.net
User-Agent: Roundcube Webmail/1.3.8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_213732_059428_DD352164 
X-CRM114-Status: UNSURE (   3.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 AC_FROM_MANY_DOTS      Multiple periods in From user name
Subject: [OpenWrt-Devel] Time to move on from 4.14 to 4.19?
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

I'm not sure what the current release roadmap is but since 19.X release 
seems to slipping perhaps it's time to move working targets to 4.19 as 
4.14 has barely 6 months away before EoL status since there seems to be 
a rather strong opinion for "LTS" releases/branches?

Best regards,
Daniel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
