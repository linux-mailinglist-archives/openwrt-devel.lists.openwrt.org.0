Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D6E141899
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 Jan 2020 18:08:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rNEgq6YM1FKZZEM9QqtFATRTP53MtG71UlBGnZSYf18=; b=U/1MhwXX3CqXGC
	SoveGnuD6zpB8vTpGugwKcMbgaxg7IYO2fg5TmUodquSkbG7dgpxR0atWPiTzO/qemoeiSj4jxzAH
	jgbKx9AQw/afZEB0OrgXlI907euHXEWl7ua+A7zEagg2OqPNVxH1mG/0hsazfDkEX4zquQdjrgj79
	GVADQnTjNrDLg4Fphoee4EmfJnWocvJzRIQHpZa3dWBTZ6EW2WERzx9dPjHPNy62oLxMl2krM7+Nj
	19b0xfNvSxYjO+b9tAyaZrE7AKRPZSYXeXHy4cmiG2RMRW+7hyzPc6UiY6F6By21QHiBrCFISAHGI
	MQMW8/NilIHXSvVraBZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isrZh-0006H8-2I; Sat, 18 Jan 2020 17:07:53 +0000
Received: from mout-p-202.mailbox.org ([80.241.56.172])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isrZb-00065j-Ct
 for openwrt-devel@lists.openwrt.org; Sat, 18 Jan 2020 17:07:49 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-202.mailbox.org (Postfix) with ESMTPS id 480PW04XHBzQlCT
 for <openwrt-devel@lists.openwrt.org>; Sat, 18 Jan 2020 18:07:24 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id BlZuP_FyQNo0 for <openwrt-devel@lists.openwrt.org>;
 Sat, 18 Jan 2020 18:07:23 +0100 (CET)
From: =?UTF-8?Q?Andreas_Br=c3=a4u?= <ab@andi95.de>
To: openwrt-devel@lists.openwrt.org
Message-ID: <498f1956-e048-dcfc-7dca-0cb8fd6984ca@andi95.de>
Date: Sat, 18 Jan 2020 19:07:21 +0200
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_090747_594756_6C835E57 
X-CRM114-Status: UNSURE (   5.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.241.56.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] GSoC 2020 - reminder for ideas
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

Hi there,

as I mentioned we plan to apply again as organization for Google Summer
of Code.

The application period for organization opened 2 days ago.

To apply successful as organization, we also need to provide an updated
list of project ideas. These ideas are a base for students to develop
their proposal.

Please update or add your new ideas as soon as possible to our project's
website at https://projects.freifunk.net

You can do that via github, just add or update your files at
https://github.com/freifunk/projects.freifunk.net-contents/tree/master/collections/_projects

Thank you!

Best regards,

Andi


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
