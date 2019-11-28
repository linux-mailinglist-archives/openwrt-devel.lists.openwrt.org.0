Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D2410C8BE
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 Nov 2019 13:35:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJDwHXyIAAZFcvVGP7QSfesJuP9gHV7iGYTvOoG7X10=; b=bEvKcoh5XdWykx
	Ap4LzOShbmxEo/SB5wPP1Pme6XJ2owRiPI9LNlUxWhm2MeUIuBMgaqLuWZpuQql0MU9mp/nZ+7QDB
	JLkiWjI3FRhmcAaCMdVWCIwSwriaLY+0+pppusvE22w/fgS+Oht1Mo67V3sPWex4DJ61/5i9s7328
	pOmjiiUc6w0gSqpLpuXIiN0PiTwpGio+r6XJiNu00LeBOkU474hgSuO9LQEjYz6e093S7FzhvZ8Qq
	EoPJzoCKJ8V2jg4VbL8VwmM984XERiZm/VMFL2yCx6sNQ7p2Us9qS3s7gYZuxBElgKKTW5Urw9deY
	UbNG4jIqjAvo8r6yhx9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaJ0b-0004Vo-KM; Thu, 28 Nov 2019 12:34:57 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaJ0S-0004VO-Mo
 for openwrt-devel@lists.openwrt.org; Thu, 28 Nov 2019 12:34:50 +0000
X-Originating-IP: 145.131.171.183
Received: from windsurf (unknown [145.131.171.183])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 70001240009;
 Thu, 28 Nov 2019 12:34:35 +0000 (UTC)
Date: Thu, 28 Nov 2019 13:34:32 +0100
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Jan Pavlinec <jan.pavlinec@nic.cz>
Message-ID: <20191128133432.7773639e@windsurf>
In-Reply-To: <2b23d42b-59c1-fd46-c5f9-fa4ea11928d9@nic.cz>
References: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
 <e8117837-aaff-8ef7-c24b-f6359d9d4ed4@nic.cz>
 <20191128130139.69be44fa@windsurf>
 <2b23d42b-59c1-fd46-c5f9-fa4ea11928d9@nic.cz>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4git49 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_043448_879907_ACEB27FB 
X-CRM114-Status: UNSURE (   6.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Thu, 28 Nov 2019 13:25:24 +0100
Jan Pavlinec <jan.pavlinec@nic.cz> wrote:

> I think that maintainers of openwrt/openwrt repo are more active on the
> mailing list but openwrt/packages maintainers prefer GitHub. But that is
> just my personal feeling.

Thanks for the suggestion. I just opened a Github pull request for the
packages part: https://github.com/openwrt/packages/pull/10664

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
