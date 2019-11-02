Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11464ECF78
	for <lists+openwrt-devel@lfdr.de>; Sat,  2 Nov 2019 16:27:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PkqYZ4aVBk6GyFajCh0vckE4wbGrijCFurvfkKqDCLw=; b=G5rCmLqsa8Yacg
	5CWSx5TUHaOlYdqTdObCQgAZSoGfJt5qXdW3r4YB98tmhF4d0+GibFWgVZS19XMemwdCETLYAPnNJ
	0M9tYxolTfU3KFsKQ4F1SeqTrdQ1t6G6s7bYguvRH4XHHyOA8NIFudMWlgj18ZyL9YVa7Fa5oTtyA
	weDMUukUUB7kPDeZdqDInK8hOzACRpK+aAVbW2wA6UlVBNUCODiQr74NiI0mAPb2LmFUNhHvscBzC
	MXORKXLz8+CLHxwNl5Po7yJquvys8HVucsgx1Vu5hfM93ZWxe8qgvViv2W6CrW5ehd6kUmVOKRwwc
	cAIZVuX+Mv8LJVbPRB+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQvJL-0006U7-Pj; Sat, 02 Nov 2019 15:27:31 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQvJE-0006TT-BK
 for openwrt-devel@lists.openwrt.org; Sat, 02 Nov 2019 15:27:25 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 5FE1152516; Sat,  2 Nov 2019 16:27:22 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 40EEC52514
 for <openwrt-devel@lists.openwrt.org>; Sat,  2 Nov 2019 16:27:21 +0100 (CET)
Received: (qmail 10871 invoked from network); 2 Nov 2019 16:27:21 +0100
Received: from unknown (HELO ?10.26.64.67?) (jo%wwsnet.net@80.187.119.179)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES256-GCM-SHA384 encrypted);
 2 Nov 2019 16:27:21 +0100
Mime-Version: 1.0 (1.0)
From: Jo-Philipp Wich <jo@mein.io>
X-Mailer: iPhone Mail (16G114)
In-Reply-To: <0cc408cb-6459-a931-9917-6015fb06e95f@gmail.com>
Date: Sat, 2 Nov 2019 16:27:20 +0100
Message-Id: <0D6B332B-B471-47B7-B185-7D231EAE8B9D@mein.io>
References: <f5199706-3e5f-3b10-531e-b7ea09939980@gmail.com>
 <85b37900-ed96-c4ae-98b4-4d1afe273065@mein.io>
 <0cc408cb-6459-a931-9917-6015fb06e95f@gmail.com>
To: e9hack <e9hack@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_082724_544955_97665D42 
X-CRM114-Status: UNSURE (   4.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.0 PDS_TONAME_EQ_TOLOCAL_SHORT Short body with To: name matches
 everything in local email
Subject: Re: [OpenWrt-Devel] uhttpd/luci/rpcd is broken?
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

Hi,

thanks for checking.

Can you please pm me your /tmp/dhcp.leases, /tmp/hosts/odhcpd and /etc/config/dhcp?

Thanks!

~ Jo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
