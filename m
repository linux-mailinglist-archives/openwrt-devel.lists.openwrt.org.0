Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7175870A33
	for <lists+openwrt-devel@lfdr.de>; Mon, 22 Jul 2019 21:57:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cEnIQUuzB5c6+4cM5RdrINuJv9g7whM1ciedgRILmk8=; b=kFn8KuqG4JOCvN
	uoIUqfsL7Dh08jqsF4xJsobFzC4tpvcHvDpVdM6DCH5/v4r/s+GCYwWSrBZPlL1txgOPr4rY+OwdN
	oJ/85GdTACT5hGg5L9poBVC+aHiXqHfHyYMKwI0gAmlCIoBT6kI0Okj/folYdU4q22Va8EphGcB9p
	HYjOwK3VCI//za3eyyv2OspGYrsHE/b4vBa+6fdVFPdYdFLeQDOYBK4MVZZbuCr6Uzl3xUQur/nip
	NTx3fbtFPA0TuGZUtY7V5Hpy5423h02RUWdjkjlnVzc4Tt4KmE1uBGqkmSwOVDsTgmCevSklU6Pto
	0p5jqn0ll9vQh9fF8DNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpeQF-0006u1-3M; Mon, 22 Jul 2019 19:56:35 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpeOF-0004hq-5H
 for openwrt-devel@lists.openwrt.org; Mon, 22 Jul 2019 19:54:33 +0000
Received: by mail-wr1-x430.google.com with SMTP id p17so40631488wrf.11
 for <openwrt-devel@lists.openwrt.org>; Mon, 22 Jul 2019 12:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version;
 bh=MCRPkn+fCI5v6GQd5/Yx+T6iqxKbD5Q5DGhfCRV3eP4=;
 b=EMR+LSZ5W8yIPX31nE93wp0GD7yN/w8/WEg7cL4PTyP2itUmsczJ4OeGJvNELFoxAG
 oI9Tt6B0td4gSLTj7d/Uf30VnQeEjfg1OfgLlaMQUGiJN2A5E68p3UvC4LxBhP/D0fb2
 CBxNcIJe5RXRfUlsPkttgp5ZP2HgFYe5HzS16iZ4Sl52lHgFOu/GsRL4i1tapvRPfD6i
 tx1yIIeiijjkZdnzkysNZJUntkwBFZOuHcOlmaV9sNl3Yq878hoIYHkDhLSMEBijwbGY
 dS3u+xb/aRogETYYjJ6aIbSqtcX7jaQCooJ1lGQOygCCjeh8OLzn1pB7/fUsEfoNNqx1
 BBvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
 bh=MCRPkn+fCI5v6GQd5/Yx+T6iqxKbD5Q5DGhfCRV3eP4=;
 b=TSJYTl/VvbCJm56tMA02j/sYbj/pyv7dLhUKc6l6ijWRVnL4kAJK5OtvwwQQ/FfNBq
 qgkGImuxID9aWrM9OZCS2n9BT7o7qsUSnKpwbHiR0EKFB3YS6Sc37laj+M9yA3Z9SUCk
 vsBQRDZm+yY53+O6sx7qKKdxygkcf0V2voBheQllVt6PkCSfES+2lz1/u0mt3Z1DBr2x
 anMt/YV83fwuPR58vxzHkcp0Oj42tZsWPNK/8f9mMJAfFBGYwBgzslk+uks12Vf3SPkf
 Z2qs3+quXSVtGrHQiNeqLk19ivRd6s8pmOFlfrvou+fv/2LMO3JwjiQN1RoX2aHhf7Wl
 7quA==
X-Gm-Message-State: APjAAAWQuq1GTIhFOvXEUP7Npn4iP+aE1tOjev5UnRrIe8XnAep64q6H
 l23sKHzckltYcu7I046G67rhwzrLiWQ=
X-Google-Smtp-Source: APXvYqzAw6XfIAFCpNd+vIa0NpQElZObPMYSQP9sYpNfj8lwz9k1x9o4m14k0hyxDQhgM/8SmxJEcA==
X-Received: by 2002:adf:ce03:: with SMTP id p3mr81764005wrn.94.1563825268888; 
 Mon, 22 Jul 2019 12:54:28 -0700 (PDT)
Received: from localhost.localdomain
 (host191-253-dynamic.14-87-r.retail.telecomitalia.it. [87.14.253.191])
 by smtp.gmail.com with ESMTPSA id s188sm31765460wmf.40.2019.07.22.12.54.27
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 12:54:28 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.localdomain (OpenSMTPD) with ESMTP id 33258508
 for <openwrt-devel@lists.openwrt.org>;
 Mon, 22 Jul 2019 19:54:26 +0000 (UTC)
Date: Mon, 22 Jul 2019 21:54:26 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: openwrt-devel@lists.openwrt.org
Message-ID: <alpine.LNX.2.21.99999.352.1907222151440.3309@localhost.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_125431_217097_F8B00BD3 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:430 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] Flash layout question
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi foks!

First of all, thank you very very much for your work guys!

Some days ago, I soft-bricked my C60 V2 by overwriting the whole flash, starting from the firmware partition and going ahead, thus overwriting the tplink and art partitions completely.
I am blind and soldering UARTs to devices is a big issue for me - so I am seeking for help. Working with routers and devices like those is very interesting to me.
But this is not the point.
Great friends soldered an UART to my device and I rewrote the flash zones of the device via u-boot, and now it works fine!

The device was running ar71xx firmware - now I upgraded it to the ath79 port.
I noticed still that from there it's not possible to read the whole flash of the device.
To be more specific: let's consider the mapping of the flash in ar71xx.
The u-boot partition was from offset 0x000000000000 to 0x000000030000.
In the new scheme this has been split like:
factory: goes from offset 0x000000000000 to 0x00000001fb00
mac: goes from 0x00000001fb00 to 0x000000020000
and finally u-boot: from 0x000000020000 to 0x000000030000.
And since 0x00000001fb00 + 0x000500 = 0x20000 (see DTS)
then math says we are covering the whole flash range.
Still, comparing the flash parts I can extract with
cat /dev/mtdblock<number> >file
from ar71xx and ath79, we can see that some flash areas are not visible.
In particular, when "cat"'ing the mac partition on ath79, the dev_id property is not visible, as it is when "cat"'ing the entire block in ar71xx.
I was thinking the kernel may stop reading when it finds more than some eraseblock blocks, but don't know.
I am sure my flash contains the right things - since reverting back to ar71xx and re-reading flash via cat returns proper content, matching with the backup I did when the device was new.
So I think this has to do with something else.
I am asking this mainly to learn something new, and also due to the fact that, if someone overwrites it's flash chip in this part, he may not be able to restore it due to the fact that he actually did never read that.

Infact, of the 1280 byes range, cat prints out a 1024 bytes file, as happens with dd.
Anyone with an idea?
Thank you very much to all of you again,
Enrico

P.S.: the backup of my flash, that still matches on ar71xx, can be found here:
http://www.gstorm.eu/ArcherC60V2.7z

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
