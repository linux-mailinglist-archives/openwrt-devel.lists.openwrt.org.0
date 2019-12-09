Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CE411710C
	for <lists+openwrt-devel@lfdr.de>; Mon,  9 Dec 2019 17:03:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3pc593fuC1RPj+vito0Jlg04r8nmBkgy2EGihgD4ehg=; b=Ti8Csi/5CZWgJy
	jg4vqzln5Ug7hwBVSAbblCyY9plv4nfkvTmVMmdBVhaNo+gzXvyawfWbivlwFhn6i21smjSF17tur
	mhOD0OIGBfu0s3KTIWLSuroRic2GqB1RMsP4CIahO4V+5Cu396wNYFSjZwLHhKfMzYqqr4bIozPVz
	FDkJzy/AqUxppB+pf/NzBPrhRd8VBnyM5Bjs4jkhWj5QL7DzJY6t8mvW9aABErlh6IrsakSLJ+m+5
	Xyd9VCNLx0TWqMjjTQ/xkZQCRfrAyAmY3XSlSz4I6FYahv3FaSFuSfVqAIbp/5Bp81E/QgPbO52i3
	hXO9Dn8gQNxLtsan+PaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieLUw-0001sH-PY; Mon, 09 Dec 2019 16:02:58 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieLUq-0001rP-HH
 for openwrt-devel@lists.openwrt.org; Mon, 09 Dec 2019 16:02:54 +0000
Received: from windsurf (lfbn-1-2154-102.w90-76.abo.wanadoo.fr [90.76.211.102])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 18131100010;
 Mon,  9 Dec 2019 16:02:28 +0000 (UTC)
Date: Mon, 9 Dec 2019 17:02:28 +0100
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Daniel Golle <daniel@makrotopia.org>
Message-ID: <20191209170228.575f0413@windsurf>
In-Reply-To: <20191128230126.GF3366@makrotopia.org>
References: <20191122095541.688125-1-thomas.petazzoni@bootlin.com>
 <20191122095541.688125-5-thomas.petazzoni@bootlin.com>
 <20191128230126.GF3366@makrotopia.org>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4git49 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_080252_705775_C0575E41 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 4/7] include/image.mk: implement SELinux
 squashfs image generation
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

Hello Daniel,

On Fri, 29 Nov 2019 00:01:26 +0100
Daniel Golle <daniel@makrotopia.org> wrote:

> I thought about introducing fakeroot in a similar way before, but for
> different purposes such as having setuid binaries or files owned by
> users other than root contained in the rootfs.

Right, that would indeed allow that. Buildroot uses fakeroot in a
consistent way to build all filesystem images, which allows us to
create files with arbitrary permissions/owernship.

> +1 for your work to enable SELinux in OpenWrt, I'll try to find time
> for some testing that.

Thanks!

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
