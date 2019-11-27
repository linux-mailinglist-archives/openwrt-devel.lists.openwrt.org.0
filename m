Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F74C10B479
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 18:30:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uxH1HM4HyYWNR0EfeX4+MAjlOFKNbljI3TvIcr8Rlw4=; b=ugE16Z7r2xJpcR
	3mhBWFK8/aCK56fSdrSWuCXLuzWd1HVVRZFlcS0JwoJ0VR6P4k4hXueDD403zyEju/S85YMUH+MwF
	rJWQnnjgbLunAUEXczZIwJ1A6ucSogSsYYhaMNhIkv7jUi0yfxtnLzsDGDno2NzdIMbkOdZXXgbd3
	bR0lmXxD+K8cTePoOSMsMoQJQvhADwCotYNNSYRTc3rjVlYxAQC4jXBNpRK+AulU4yZScqB4riZVL
	qtWBuvVpscQ54o1fqU3GdPA9cEcH6dRwOV2PW1z5sLjw4b22FPrlWt7qnhnhxPnUf9y9jh6g3k1g+
	fK7nxRNL5oAySV63hdTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia18t-0004YE-7t; Wed, 27 Nov 2019 17:30:19 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia18f-0003Vc-4Q
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 17:30:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To:From;
 bh=CkaMHpIKAR9cqHrINyuv/wTRFr1FglHzfe4ewhlN7gA=; 
 b=nGETlwF0NxJuR6k7KRwlwfArBrpq/IGV+iUR5hbrmAGqY2MS90ovX3ilE1ETG9xsv4KUpe0cACyfhpxzC0k0cG6OHDzKWlCMrzu3wxs43qBmUzkcbmRXbrpLvi7ZnzBggV2iCEV/B72ehQwnSgCrvTj/0uTV7I1fS0JLlfdtR9Q=;
From: Daniel Danzberger <daniel@dd-wrt.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 27 Nov 2019 18:29:50 +0100
Message-Id: <20191127172952.2143-1-daniel@dd-wrt.com>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a02:908:2614:35c:440c:a968:e99d:d1b9
X-SA-Exim-Mail-From: daniel@dd-wrt.com
X-Spam-Checker-Version: SpamAssassin 3.1.9 (2007-02-13) on
 webmail.newmedia-net.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=BAYES_00,NO_RELAYS
 autolearn=ham version=3.1.9, No
X-SA-Exim-Version: 4.2.1 (built Thu, 26 May 2011 15:22:33 +0200)
X-SA-Exim-Scanned: Yes (on webmail.newmedia-net.de)
X-NMN-MailScanner-Information: Please contact the ISP for more information
X-NMN-MailScanner-ID: 1ia17T-0002FL-Gg
X-NMN-MailScanner: Found to be clean
X-NMN-MailScanner-From: daniel@dd-wrt.com
X-Received: from [2a02:908:2614:35c:440c:a968:e99d:d1b9]
 (helo=localhost.localdomain)
 by webmail.newmedia-net.de with esmtpa (Exim 4.72)
 (envelope-from <daniel@dd-wrt.com>)
 id 1ia17T-0002FL-Gg; Wed, 27 Nov 2019 18:28:51 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_093005_633446_FFB07C53 
X-CRM114-Status: UNSURE (   4.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 0/2] iwinfo/rpcd: add current hw and ht mode
 to info call
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
Cc: Daniel Danzberger <daniel@dd-wrt.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

These 2 patches extend the rpcd's iwinfo 'info' call with the current ht/hwmode.
Currently this call only shows the ht/hwmode capabilities, but not the currenlty set modes on the phy.

Patch 1 (iwinfo): Adds htmode callback to libiwinfo
Patch 2 (rpcd)  : Calls the htmode callback on info

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
