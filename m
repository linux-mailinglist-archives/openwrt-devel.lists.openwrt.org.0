Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA9C10C84F
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 Nov 2019 13:02:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uurMh9jQPy6IuO7uiLXeGq6l7TSkV44GJq58PJ6QeQ0=; b=LQxYTmZO9K7Hic
	NAXMQLs0mJhjPqtoo2kjBQfBGSdEXJFtl0k6k5dFSoSpKClxGG5eYqn0mfveDyylDFQlp1OLhvKDm
	bGJFZiYQQqDx0maRUO3uMa4XUfKAkYS3mPigLpdRhY12ubRtkMPXEvt1uH9xtQptdeINzEq7iSHFZ
	IJqdT9vpVDkiLch5K+AcAL4DkPBqq9ryITXwvOKaqS1d2pkWfsVE85rbUO0BdSZm9Svh9dlUS0rX4
	9vcvLfRwljEOZOAvvr07pSgVnfkBXdO+wOrJcO8EHleNoyHl8aL5RQiokx+1NTp4o6wNtHK6wlD0i
	7JfOqzXTNh/trdaCf81g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaIUl-0002na-9B; Thu, 28 Nov 2019 12:02:03 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaIUb-0002mZ-Mi
 for openwrt-devel@lists.openwrt.org; Thu, 28 Nov 2019 12:01:55 +0000
X-Originating-IP: 145.131.171.183
Received: from windsurf (unknown [145.131.171.183])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id E64C3E000A;
 Thu, 28 Nov 2019 12:01:40 +0000 (UTC)
Date: Thu, 28 Nov 2019 13:01:39 +0100
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Jan Pavlinec <jan.pavlinec@nic.cz>
Message-ID: <20191128130139.69be44fa@windsurf>
In-Reply-To: <e8117837-aaff-8ef7-c24b-f6359d9d4ed4@nic.cz>
References: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
 <e8117837-aaff-8ef7-c24b-f6359d9d4ed4@nic.cz>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4git49 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_040153_880864_1596F17F 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH packages 00/11] SELinux support:
 packages feed changes
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

Hello Jan,

On Thu, 28 Nov 2019 12:35:36 +0100
Jan Pavlinec <jan.pavlinec@nic.cz> wrote:

> I really like the idea of SELinux support in OpenWrt, but I think that
> if you send these patches directly to
> https://github.com/openwrt/packages/ they will receive more attention
> than here in mailing list.

Thanks a lot for your feedback. Should I do this only for the package
patches (i.e the package feeds), or also for the "core" changes ?

Best regards,

Thomas
-- 
Thomas Petazzoni, CTO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
